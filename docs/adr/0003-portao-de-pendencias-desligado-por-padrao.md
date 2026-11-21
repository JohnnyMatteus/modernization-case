# 0003. Portão de pendências no CI, desligado por padrão

- **Status:** aceito
- **Data:** 2026-11-21

## Contexto

O case nasce como esqueleto. Cada capítulo tem campos `<!-- PREENCHER: ... -->` e exemplos marcados como "exemplo ilustrativo, substituir". Esses exemplos têm números e cenários inventados para mostrar o nível de detalhe esperado.

O pior erro possível neste repositório é publicar como real algo que é ilustrativo: um número de exemplo lido como resultado do autor é uma afirmação falsa sobre a própria experiência, e isso pesa contra ele numa entrevista.

Ao mesmo tempo, o esqueleto precisa ir para a `main` agora, ainda vazio, para que o autor preencha capítulo a capítulo em PRs. Um portão que falhasse hoje deixaria o CI vermelho até o fim do preenchimento.

## Decisão

- O script [`scripts/check-placeholders.sh`](../../scripts/check-placeholders.sh) falha se encontrar, no conteúdo publicável (`case/`, `docs/artigo-linkedin.md` e `docs/roteiros/`), qualquer um dos dois marcadores:
  - `<!-- PREENCHER:`;
  - `Exemplo ilustrativo`.
- O CI tem um job `placeholders` que roda esse script apenas em push para a `main` ou em PR para a `main`, e **somente quando a variável de repositório `ENFORCE_PLACEHOLDER_GATE` é `true`**. Sem a variável, o job aparece como "skipped".
- O script também roda localmente em modo informativo (`--report`), que lista as pendências sem falhar, para acompanhar o progresso.

## Consequências

- Hoje o CI fica verde com o esqueleto na `main`.
- Quando o case estiver preenchido, basta criar a variável em *Settings > Secrets and variables > Actions > Variables* para que nenhum marcador volte para a `main` sem ser notado.
- O portão é uma rede de segurança, não substitui a revisão humana com o [guia de anonimização](../guia-anonimizacao.md): ele não detecta nomes reais, só pendências.
- Arquivos de orientação (`README.md`, `CLAUDE.md`, `docs/guia-anonimizacao.md`, ADRs) mencionam os marcadores e ficam fora da varredura de propósito.

## Alternativas consideradas

- **`if: false` fixo no job.** Desliga do mesmo jeito, mas exige um commit para ligar e é fácil esquecer. A variável liga sem alterar código. Descartado.
- **Portão sempre ligado, com o esqueleto fora da `main`.** Obrigaria a manter uma branch longa de preenchimento, o que contraria o fluxo de PRs pequenos. Descartado.
- **Verificar só `PREENCHER`.** Deixaria passar o risco principal, que são os exemplos ilustrativos publicados como fatos. Descartado.
