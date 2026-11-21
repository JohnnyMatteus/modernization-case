#!/usr/bin/env bash
# Procura pendências no conteúdo publicável do case.
#
# Pendências:
#   - marcadores "<!-- PREENCHER" (com ou sem texto depois);
#   - o rótulo "Exemplo ilustrativo, substituir" dos exemplos inventados.
#
# Uso:
#   scripts/check-placeholders.sh            # falha (exit 1) se houver pendências
#   scripts/check-placeholders.sh --report   # lista e resume, sem falhar
#
# Arquivos de orientação (README.md, CLAUDE.md, guia, ADRs) ficam fora da
# varredura de propósito, porque citam os marcadores. Ver docs/adr/0003.

set -euo pipefail

readonly TARGETS=(case docs/artigo-linkedin.md docs/roteiros)
readonly PLACEHOLDER_PATTERN='<!-- PREENCHER'
readonly EXAMPLE_PATTERN='Exemplo ilustrativo, substituir'

mode="enforce"
case "${1:-}" in
    "") ;;
    --report) mode="report" ;;
    -h | --help)
        sed -n '2,13p' "$0" | sed 's/^# \{0,1\}//'
        exit 0
        ;;
    *)
        echo "Opção desconhecida: $1 (use --report ou --help)" >&2
        exit 2
        ;;
esac

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_root"

count_matches() {
    local pattern="$1"
    # grep sai com 1 quando não encontra nada; isso não é erro aqui.
    grep -r -i -F -o --include='*.md' -- "$pattern" "${TARGETS[@]}" | wc -l | tr -d ' ' || true
}

placeholders="$(count_matches "$PLACEHOLDER_PATTERN")"
examples="$(count_matches "$EXAMPLE_PATTERN")"

echo "Linhas com pendências, por arquivo:"
grep -r -i -F -c --include='*.md' -e "$PLACEHOLDER_PATTERN" -e "$EXAMPLE_PATTERN" "${TARGETS[@]}" \
    | grep -v ':0$' | sort || echo "  nenhuma"
echo
echo "Marcadores PREENCHER: $placeholders"
echo "Exemplos ilustrativos: $examples"

if [[ "$placeholders" -eq 0 && "$examples" -eq 0 ]]; then
    echo "OK: nenhuma pendência no conteúdo publicável."
    exit 0
fi

if [[ "$mode" == "report" ]]; then
    echo "Modo --report: pendências listadas, sem falhar."
    exit 0
fi

echo "ERRO: há pendências. Preencha os campos e apague os exemplos ilustrativos antes de levar para a main." >&2
exit 1
