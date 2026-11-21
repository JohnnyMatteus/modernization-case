<!-- markdownlint-disable-next-line MD041 -->
## O que muda

<!-- Capítulos ou arquivos alterados e o que foi preenchido, corrigido ou reestruturado. -->

## Tipo

- [ ] Preenchimento de capítulo com fatos reais
- [ ] Correção de fato, número ou texto
- [ ] Estrutura do case, artigo ou roteiro
- [ ] Repositório (CI, templates, ADRs, guias)

## Revisão de anonimização

Obrigatória quando o PR traz conteúdo do case, do artigo ou do roteiro. Ver `docs/guia-anonimizacao.md`.

- [ ] Nenhum nome de empresa, marca, produto, sistema interno ou codinome.
- [ ] Nenhum nome de cliente, parceiro, fornecedor de nicho ou pessoa.
- [ ] Valores financeiros só em percentual ou normalizados; volumes em ordem de grandeza.
- [ ] Nenhum nome interno de tabela, fila, serviço, host ou repositório.
- [ ] A combinação de setor, período, stack e números não identifica a empresa.
- [ ] Varredura com a lista local de termos proibidos sem resultados.

## Fatos

- [ ] Todo número novo tem período, fonte e método.
- [ ] Os exemplos ilustrativos das seções preenchidas foram apagados.
- [ ] Os marcadores das seções preenchidas foram removidos (`./scripts/check-placeholders.sh --report`).

## Verificação local

- [ ] `npx --yes markdownlint-cli2@0.24.2`
- [ ] `docker run --rm -v "$PWD":/input -w /input lycheeverse/lychee:0.24.2 --config lychee.toml --offline '**/*.md'`
