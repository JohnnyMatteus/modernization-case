# CLAUDE.md

Guia para sessões de agente neste repositório.

## Visão

Estudo de caso de modernização de um sistema legado, baseado numa experiência **real** do autor (engenheiro e tech lead sênior, stack principal PHP/Laravel, Go e microsserviços), anonimizada. Será publicado no GitHub e como artigo no LinkedIn. Não há código de aplicação: o repositório é Markdown, diagramas Mermaid, um script de verificação e CI.

## Regras inegociáveis

1. **Nada de nomes reais.** Nenhum nome de empresa, empregador, cliente, parceiro, fornecedor de nicho, pessoa, produto interno, sistema interno ou codinome, em nenhum arquivo, commit, branch, issue ou PR. E-mails de exemplo só `@example.com`.
2. **Não invente fatos.** O agente não conhece a experiência real. Nunca escreva números, resultados, prazos, incidentes ou decisões como se fossem do autor. Quando faltar informação, deixe ou crie um campo `<!-- PREENCHER: ... -->` com a pergunta que o autor precisa responder.
3. **Exemplos são rotulados.** Todo conteúdo inventado para mostrar o nível de detalhe esperado começa com `**Exemplo ilustrativo, substituir.**` dentro de uma citação (`>`). Nunca remova esse rótulo de um texto que continue inventado.
4. **Revise com o guia antes de publicar.** Todo conteúdo novo ou alterado em `case/`, `docs/artigo-linkedin.md` e `docs/roteiros/` passa pelo checklist de [`docs/guia-anonimizacao.md`](docs/guia-anonimizacao.md).
5. **Números sensíveis** (receita, custo, contratos, volume de clientes) só em percentual, normalizados ou em ordem de grandeza. Métricas de engenharia podem ir em valor real, sempre com período, fonte e método.
6. **Nunca leia** `data/`, `.env`, `config.local.yaml`, `rascunhos/` ou arquivos `*.local.md`: podem conter dados reais. Também não leia a lista local de termos proibidos.
7. Não faça push e não crie remotes.

## Comandos

```bash
npx --yes markdownlint-cli2@0.24.2                     # lint de Markdown
docker run --rm -v "$PWD":/input -w /input lycheeverse/lychee:0.24.2 \
  --config lychee.toml --offline '**/*.md'             # links e âncoras internos
./scripts/check-placeholders.sh --report               # progresso (não falha)
./scripts/check-placeholders.sh                        # portão (falha com pendências)
```

Rode os dois primeiros antes de cada commit. São os mesmos comandos do CI.

## Estrutura

```text
case/                     estudo de caso (fonte da verdade)
  README.md               resumo executivo, ficha técnica, índice
  01..11-*.md             capítulos: objetivo, perguntas-guia, PREENCHER, exemplo
docs/
  guia-anonimizacao.md    regras e checklist de anonimização
  artigo-linkedin.md      esqueleto do artigo (derivado do case)
  roteiros/               como contar o case em entrevista (STAR)
  design-doc.md           como o repositório funciona
  adr/                    decisões sobre o repositório (não sobre a modernização)
scripts/check-placeholders.sh
.github/                  CI, template de PR, issue forms
```

As decisões técnicas da modernização ficam em `case/04-decisoes.md`, como mini-ADRs. `docs/adr/` é só para decisões sobre este repositório.

## Fluxo de trabalho

1. Uma branch por capítulo ou assunto (`docs/case-06-migracao`, `ci/...`).
2. Commits pequenos em Conventional Commits, em português: `feat(case):` para conteúdo do case, `docs:` para guias e roteiros, `ci:`, `chore:`.
3. Commite com `git commit -F <arquivo>`, nunca com `-m`.
4. Ao preencher uma seção: substitua os `PREENCHER` daquela seção, apague o exemplo ilustrativo dela e mantenha o restante intacto.
5. Mantenha a estrutura de cada capítulo (objetivo, perguntas-guia, conteúdo) e a navegação no rodapé.
6. Se mudar um título de seção, procure links com âncora para ele (`grep -rn '#titulo' .`); o lychee falha com âncora quebrada.
7. O artigo e o roteiro só usam fatos que já estão em `case/`. Corrija primeiro no case e depois nos derivados.

## Portão de pendências

O job `placeholders` do CI está desligado até existir a variável de repositório `ENFORCE_PLACEHOLDER_GATE=true`. Não ligue nem desligue sem pedido do autor. Ver `docs/adr/0003-portao-de-pendencias-desligado-por-padrao.md`.
