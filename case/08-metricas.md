# 8. Métricas

**Objetivo:** o leitor vê números de antes e depois com fonte, período e método. Um número sem contexto não convence; um número com contexto e com limitações declaradas convence.

## Perguntas-guia

- Que métricas existiam antes do projeto? Se não existiam, como você reconstruiu a linha de base (histórico de deploys, tickets, faturas de nuvem, postmortems)?
- Qual foi o período de medição do "antes" e do "depois"? São comparáveis (mesma sazonalidade, mesmo volume)?
- O que mudou por causa da modernização e o que mudou por outros motivos (time maior, crescimento, outra iniciativa)?
- Algum número piorou? Por quê, e isso foi aceito?
- Os números podem ser publicados? Se não podem em valor absoluto, podem como percentual ou ordem de grandeza? Veja o [guia de anonimização](../docs/guia-anonimizacao.md#números-sensíveis).

## Regras

- Todo número tem **período**, **fonte** e **método**. Se for estimativa, diga que é estimativa.
- Prefira **variação relativa** ou **faixas** a valores absolutos quando o absoluto for sensível (custo, receita, volume de clientes).
- Não arredonde para cima. Na dúvida, use o número mais conservador.

## DORA

| Métrica | Antes | Depois | Período (antes / depois) | Fonte e método |
| --- | --- | --- | --- | --- |
| Frequência de deploy | <!-- PREENCHER --> | <!-- PREENCHER --> | <!-- PREENCHER --> | <!-- PREENCHER: ex. histórico do pipeline --> |
| Lead time para mudanças (commit até produção) | <!-- PREENCHER --> | <!-- PREENCHER --> | <!-- PREENCHER --> | <!-- PREENCHER --> |
| Taxa de falha de mudanças | <!-- PREENCHER --> | <!-- PREENCHER --> | <!-- PREENCHER --> | <!-- PREENCHER: ex. deploys com rollback ou hotfix / total --> |
| Tempo de recuperação (MTTR) | <!-- PREENCHER --> | <!-- PREENCHER --> | <!-- PREENCHER --> | <!-- PREENCHER: ex. postmortems e alertas --> |

## Confiabilidade e incidentes

| Métrica | Antes | Depois | Período | Fonte e método |
| --- | --- | --- | --- | --- |
| Incidentes por mês (severidade alta) | <!-- PREENCHER --> | <!-- PREENCHER --> | <!-- PREENCHER --> | <!-- PREENCHER --> |
| Disponibilidade das rotas críticas | <!-- PREENCHER --> | <!-- PREENCHER --> | <!-- PREENCHER --> | <!-- PREENCHER --> |
| Latência p95 ou p99 de rotas críticas | <!-- PREENCHER --> | <!-- PREENCHER --> | <!-- PREENCHER --> | <!-- PREENCHER --> |
| Incidentes causados pela migração | não se aplica | <!-- PREENCHER --> | <!-- PREENCHER --> | <!-- PREENCHER --> |

## Custo

| Métrica | Antes | Depois | Período | Fonte e método |
| --- | --- | --- | --- | --- |
| Custo de infraestrutura (relativo) | 100 (base) | <!-- PREENCHER: ex. 70 --> | <!-- PREENCHER --> | <!-- PREENCHER: ex. fatura mensal média, normalizada --> |
| Custo por transação ou por cliente (relativo) | 100 (base) | <!-- PREENCHER --> | <!-- PREENCHER --> | <!-- PREENCHER --> |
| Esforço do projeto | não se aplica | <!-- PREENCHER: ex. pessoas x meses --> | <!-- PREENCHER --> | <!-- PREENCHER --> |

## Time e produto (opcional)

| Métrica | Antes | Depois | Período | Fonte e método |
| --- | --- | --- | --- | --- |
| Tempo de onboarding até o primeiro deploy | <!-- PREENCHER --> | <!-- PREENCHER --> | <!-- PREENCHER --> | <!-- PREENCHER --> |
| Tempo de execução da suíte de testes | <!-- PREENCHER --> | <!-- PREENCHER --> | <!-- PREENCHER --> | <!-- PREENCHER --> |
| Tempo para lançar uma feature típica | <!-- PREENCHER --> | <!-- PREENCHER --> | <!-- PREENCHER --> | <!-- PREENCHER --> |

## Limitações das medições

<!-- PREENCHER: o que pode distorcer os números (sazonalidade, mudança de volume, troca de ferramenta de medição, métricas reconstruídas). -->

## Exemplo ilustrativo

> **Exemplo ilustrativo, substituir.**
>
> | Métrica | Antes | Depois | Período (antes / depois) | Fonte e método |
> | --- | --- | --- | --- | --- |
> | Frequência de deploy | 2 por mês | 4 por dia (média dos serviços novos) | 6 meses antes / 3 meses após o fim | Histórico do pipeline; o legado restante continuou quinzenal |
> | Tempo de recuperação | cerca de 3 h | cerca de 20 min | mesmo | Postmortems de severidade alta; antes eram reconstruídos a partir de tickets |
>
> Limitação: o volume de pedidos dobrou entre os dois períodos, então o custo de infraestrutura é mostrado por pedido, e não em valor total.

---

[← Riscos](07-riscos.md) · [Índice](README.md) · [Resultados →](09-resultados.md)
