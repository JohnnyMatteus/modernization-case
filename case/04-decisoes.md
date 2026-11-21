# 4. Decisões (mini-ADRs)

**Objetivo:** o leitor vê as decisões técnicas mais importantes, o contexto de cada uma, o que foi descartado e o preço pago. É o capítulo que mais conta numa entrevista de nível sênior: mostra julgamento, não só execução.

## Perguntas-guia

- Quais foram as 4 a 8 decisões que mais mudaram o rumo do projeto? Pense em:
  - como desviar tráfego (gateway, proxy reverso, roteamento no próprio monólito);
  - comunicação entre serviços (HTTP síncrono, filas, eventos, outbox);
  - estratégia de dados (banco compartilhado temporário, banco por serviço, CDC, dupla escrita);
  - linguagem e framework dos serviços novos;
  - infraestrutura e deploy (containers, orquestração, pipeline);
  - testes (caracterização, contrato, comparação de saídas);
  - observabilidade (logs, métricas, traces, correlação entre legado e novo).
- Para cada decisão: quem decidiu, com que informação, e o que você sabia na época que hoje sabe melhor?
- Alguma decisão foi revertida? Por quê?

## Formato de cada mini-ADR

Copie o bloco abaixo para cada decisão. Mantenha cada uma em no máximo 15 linhas.

```markdown
### D<n>. <título curto da decisão>

- **Status:** aceita | revertida | substituída por D<m>
- **Contexto:** o problema e a restrição que forçaram a decisão.
- **Decisão:** o que foi escolhido, em uma ou duas frases.
- **Alternativas:** o que foi descartado e por quê, em uma linha cada.
- **Consequências:** o que ficou mais fácil, o que ficou mais difícil e o custo assumido.
```

## Decisões

### D1. <!-- PREENCHER: título da decisão -->

- **Status:** <!-- PREENCHER -->
- **Contexto:** <!-- PREENCHER -->
- **Decisão:** <!-- PREENCHER -->
- **Alternativas:** <!-- PREENCHER -->
- **Consequências:** <!-- PREENCHER -->

### D2. <!-- PREENCHER: título da decisão -->

- **Status:** <!-- PREENCHER -->
- **Contexto:** <!-- PREENCHER -->
- **Decisão:** <!-- PREENCHER -->
- **Alternativas:** <!-- PREENCHER -->
- **Consequências:** <!-- PREENCHER -->

### D3. <!-- PREENCHER: título da decisão -->

- **Status:** <!-- PREENCHER -->
- **Contexto:** <!-- PREENCHER -->
- **Decisão:** <!-- PREENCHER -->
- **Alternativas:** <!-- PREENCHER -->
- **Consequências:** <!-- PREENCHER -->

### D4. <!-- PREENCHER: título da decisão -->

- **Status:** <!-- PREENCHER -->
- **Contexto:** <!-- PREENCHER -->
- **Decisão:** <!-- PREENCHER -->
- **Alternativas:** <!-- PREENCHER -->
- **Consequências:** <!-- PREENCHER -->

<!-- PREENCHER: acrescente D5 a D8 se houver decisões relevantes. Apague os blocos que não usar. -->

## Exemplo ilustrativo

> **Exemplo ilustrativo, substituir.**
>
> **D2. Outbox transacional em vez de dupla escrita**
>
> - **Status:** aceita
> - **Contexto:** durante a migração, pedidos criados no monólito precisavam chegar ao serviço novo de faturamento. A primeira versão publicava na fila logo depois do commit e perdia mensagens quando o processo caía entre as duas operações.
> - **Decisão:** gravar o evento numa tabela de outbox na mesma transação do pedido, com um relay que publica na fila e marca como enviado.
> - **Alternativas:** dupla escrita (descartada por inconsistência); CDC lendo o binlog (descartada pelo custo operacional naquele momento, com o time pequeno).
> - **Consequências:** entrega pelo menos uma vez, o que obrigou os consumidores a serem idempotentes; mais uma tabela para manter no legado; latência extra de alguns segundos, aceita pelo negócio.
