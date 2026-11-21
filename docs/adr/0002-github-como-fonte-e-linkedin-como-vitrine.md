# 0002. GitHub como fonte da verdade, LinkedIn como vitrine

- **Status:** aceito
- **Data:** 2026-11-21

## Contexto

O case será publicado em dois lugares: um repositório público no GitHub e um artigo no LinkedIn. Os dois públicos são diferentes. No LinkedIn, o leitor decide em duas linhas se continua; no GitHub, o leitor técnico quer as decisões, os diagramas e os números com contexto.

Manter duas versões completas e independentes leva a divergência: um número corrigido num lugar e esquecido no outro, ou um detalhe identificável removido do repositório mas ainda presente no artigo.

## Decisão

- O **repositório é a fonte da verdade**. Fatos, números, decisões e diagramas são definidos primeiro em `case/` e revisados com o [guia de anonimização](../guia-anonimizacao.md).
- O **artigo do LinkedIn é um derivado**: conta a história em versão curta, usa apenas números que já estão no repositório e termina com um CTA para o repositório.
- O artigo é escrito a partir do esqueleto em [`docs/artigo-linkedin.md`](../artigo-linkedin.md) e versionado nele antes de ser publicado, para que a revisão de anonimização cubra também o texto do artigo.
- Ordem de publicação: primeiro o repositório público, depois o artigo, para que o link do CTA já funcione no dia da publicação.

## Consequências

- Toda correção começa no repositório e depois é levada ao artigo. Isso dá um passo extra, mas evita que as duas versões se contradigam.
- O artigo não traz informações que não estejam no repositório. Se um dado não pode ir para o repositório público, também não vai para o artigo.
- O LinkedIn edita mal Markdown e não renderiza Mermaid: o artigo usa no máximo uma imagem exportada do diagrama "depois" e remete ao repositório para os demais.

## Alternativas consideradas

- **LinkedIn como fonte e repositório como apêndice.** Alcance maior para o artigo, mas sem histórico de revisão e sem o portão de CI. Descartado.
- **Blog pessoal como fonte.** Daria controle total do layout, mas exige hospedagem e não acrescenta nada ao que o GitHub já entrega para o público técnico. Pode entrar depois como terceira vitrine.
- **Publicar só no GitHub.** Mais simples, mas perde o público de recrutadores e líderes, que chega pelo LinkedIn. Descartado.
