# Artigo do LinkedIn: esqueleto

Este arquivo é o rascunho versionado do artigo. O artigo é um derivado do case: só usa fatos que já estão em [`case/`](../case/README.md) e termina levando o leitor ao repositório (ver [ADR 0002](adr/0002-github-como-fonte-e-linkedin-como-vitrine.md)).

## Parâmetros

| Item | Alvo |
| --- | --- |
| Formato | Artigo do LinkedIn (não post), com post curto de divulgação apontando para ele |
| Tamanho | 900 a 1.300 palavras (5 a 7 minutos de leitura) |
| Público | Tech leads, gestores de engenharia e recrutadores técnicos |
| Tom | Primeira pessoa, direto, com números e com o que deu errado |
| Imagens | Capa simples e, no máximo, o diagrama "depois" exportado como imagem |
| Links | Repositório no CTA final; no post de divulgação, o link vai no primeiro comentário |

## Título

Escolha uma fórmula e escreva 3 opções antes de decidir.

- Resultado + restrição: "Como tiramos um monólito de N anos do caminho sem parar a operação"
- Lição contraintuitiva: "Na nossa modernização, o gargalo não foi o código"
- Pergunta: "Reescrever ou estrangular? O que aprendi modernizando um legado"

<!-- PREENCHER: 3 opções de título e a escolhida. -->

## Estrutura

### 1. Gancho (2 a 4 linhas, cerca de 60 palavras)

O leitor decide aqui se continua. Abra com uma situação concreta, um número ou uma tensão, e não com contexto genérico.

<!-- PREENCHER: gancho com um fato real do capítulo 1 ou 7. -->

> **Exemplo ilustrativo, substituir.** Às 2h da manhã de uma quinta-feira, o deploy quinzenal falhou no passo 23 de 30. Era a terceira vez no trimestre. Naquela semana, decidimos que o problema não era o deploy.

### 2. O problema (cerca de 150 palavras)

Fonte: [capítulo 1](../case/01-contexto.md) e [capítulo 2](../case/02-restricoes.md). O que o sistema fazia, por que doía para o negócio e qual era a restrição que tornava o problema difícil.

<!-- PREENCHER -->

### 3. A escolha (cerca de 200 palavras)

Fonte: [capítulo 3](../case/03-estrategia.md). A estratégia e o que foi descartado. Uma frase sobre cada alternativa basta.

<!-- PREENCHER -->

### 4. Duas decisões que importaram (cerca de 250 palavras)

Fonte: [capítulo 4](../case/04-decisoes.md) e [capítulo 6](../case/06-migracao-de-dados.md). Escolha as duas decisões com melhor história, em formato problema, decisão e preço pago.

<!-- PREENCHER -->

### 5. O que deu errado (cerca de 150 palavras)

Fonte: [capítulo 7](../case/07-riscos.md). Um incidente ou erro real, como foi detectado e o que mudou depois. É a parte que gera mais credibilidade.

<!-- PREENCHER -->

### 6. Resultados (cerca de 150 palavras)

Fonte: [capítulo 8](../case/08-metricas.md) e [capítulo 9](../case/09-resultados.md). De 2 a 4 números com período, e uma frase sobre o que não foi entregue.

<!-- PREENCHER -->

### 7. Lições (cerca de 150 palavras)

Fonte: [capítulo 10](../case/10-licoes.md) e [capítulo 11](../case/11-o-que-faria-diferente.md). Três lições, uma frase cada, e uma coisa que faria diferente.

<!-- PREENCHER -->

### 8. CTA (2 a 3 linhas)

Leve o leitor ao repositório e convide para conversa. Uma única chamada principal.

<!-- PREENCHER: ajuste o texto e confirme que o repositório já está público. -->

> **Exemplo ilustrativo, substituir.** O case completo, com as decisões em formato de ADR, os diagramas de antes e depois e as métricas, está no GitHub: github.com/JohnnyMatteus/modernization-case. Se você está diante de um legado parecido, me conta nos comentários qual é a restrição que mais pesa aí.

## Post de divulgação

Post curto (até 1.300 caracteres) que aponta para o artigo.

- Linha 1: o gancho do artigo, adaptado.
- Linhas 2 a 6: três aprendizados em uma linha cada.
- Última linha: "Artigo completo no link" e o link no primeiro comentário.

<!-- PREENCHER: texto do post de divulgação. -->

## Checklist antes de publicar

- [ ] Todos os números do artigo estão no repositório, com o mesmo valor.
- [ ] Revisado com o [guia de anonimização](guia-anonimizacao.md).
- [ ] Nenhum exemplo ilustrativo restante neste arquivo.
- [ ] Repositório público e link do CTA testado.
- [ ] Lido em voz alta uma vez, cortando frases que não acrescentam fato.
- [ ] Tamanho entre 900 e 1.300 palavras.
