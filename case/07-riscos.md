# 7. Riscos e mitigação

**Objetivo:** o leitor vê que os riscos foram antecipados, priorizados e tratados, e também quais se materializaram. Esconder o que deu errado tira credibilidade; mostrar como foi tratado dá.

## Perguntas-guia

- Quais riscos foram identificados no início? Como foram priorizados (probabilidade e impacto)?
- Que mitigação existia para cada um: flags, canário, rollback, parallel run, testes de caracterização, janela, comunicação?
- Quais riscos se materializaram? Qual foi o impacto real e como o time reagiu?
- Que risco não foi previsto e apareceu no meio do caminho?
- Havia riscos organizacionais (perda de pessoas-chave, mudança de prioridade, fadiga do time)?
- Como os riscos eram acompanhados ao longo do projeto e comunicados à liderança?

## Conteúdo

### Matriz de riscos

<!-- PREENCHER: de 4 a 8 riscos reais. Use Alta/Média/Baixa para probabilidade e impacto. -->

| Risco | Probabilidade | Impacto | Mitigação | Aconteceu? |
| --- | --- | --- | --- | --- |
| <!-- PREENCHER --> | <!-- PREENCHER --> | <!-- PREENCHER --> | <!-- PREENCHER --> | <!-- PREENCHER --> |

### O risco que se materializou

<!-- PREENCHER: conte um incidente ou problema real ligado à modernização: o que aconteceu, como foi detectado, quanto tempo durou, o que foi feito e o que mudou depois. Sem nomes de clientes nem valores financeiros exatos. -->

### O risco que ninguém previu

<!-- PREENCHER: algo que surgiu no meio do caminho e não estava na matriz. -->

## Exemplo ilustrativo

> **Exemplo ilustrativo, substituir.**
>
> | Risco | Probabilidade | Impacto | Mitigação | Aconteceu? |
> | --- | --- | --- | --- | --- |
> | Regra de negócio implícita perdida na extração | Alta | Alto | Testes de caracterização gravando saídas reais do legado antes de extrair | Sim, uma vez |
> | Divergência de dados entre legado e novo | Média | Alto | Reconciliação diária e alarme por divergência acima de 0,1% | Não |
> | Time absorvido por incidentes do legado | Alta | Médio | Rodízio semanal de plantão do legado, protegendo o restante do time | Sim |
>
> O risco que se materializou: um desconto progressivo calculado só em um relatório legado não foi coberto pelos testes de caracterização. O canário com 5% do tráfego mostrou a diferença em duas horas; voltamos a rota pela flag e incluímos o caso na suíte antes de tentar de novo.

---

[← Migração de dados](06-migracao-de-dados.md) · [Índice](README.md) · [Métricas →](08-metricas.md)
