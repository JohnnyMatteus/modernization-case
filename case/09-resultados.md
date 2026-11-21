# 9. Resultados

**Objetivo:** o leitor entende o que o projeto entregou para o negócio e para o time, ligando os números do [capítulo 8](08-metricas.md) aos objetivos do [capítulo 1](01-contexto.md). Também fica claro o que não foi entregue.

## Perguntas-guia

- Os objetivos iniciais foram atingidos? Todos, parte, ou outros que surgiram no caminho?
- O que o negócio passou a conseguir fazer que antes não conseguia (absorver o contrato novo, lançar produto, entrar em outro mercado, passar numa auditoria)?
- O que mudou para o time (autonomia, deploys sem medo, menos plantão, onboarding)?
- O legado foi desligado? Se não, o que sobrou e qual é o plano para ele?
- O que ficou de fora do escopo ou foi adiado? Por quê?
- Que efeitos colaterais apareceram (custo operacional de mais serviços, complexidade de observabilidade, curva de aprendizado)?
- Quanto disso é mérito seu e quanto é do time? (Seja preciso: entrevistadores perguntam.)

## Conteúdo

### Objetivos e resultado

| Objetivo inicial | Resultado | Evidência |
| --- | --- | --- |
| <!-- PREENCHER --> | <!-- PREENCHER: atingido, parcial ou não atingido --> | <!-- PREENCHER: link para a métrica do capítulo 8 --> |

### Para o negócio

<!-- PREENCHER: 1 parágrafo sobre o impacto de negócio, sem valores financeiros absolutos se forem sensíveis. -->

### Para o time

<!-- PREENCHER: 1 parágrafo sobre o impacto no time e no modo de trabalho. -->

### O que não foi entregue

<!-- PREENCHER: o que ficou de fora, o estado atual do legado e o custo novo que a arquitetura trouxe. -->

### Minha contribuição

<!-- PREENCHER: o que foi especificamente seu (decisões, liderança, código, alinhamento com outras áreas) e o que foi do time. -->

## Exemplo ilustrativo

> **Exemplo ilustrativo, substituir.** O contrato novo entrou no prazo e o volume triplicado passou pelos serviços novos sem incidente de severidade alta nos três primeiros meses. Para o time, o efeito mais visível foi o fim da janela noturna de deploy. Não entregamos a extração do back-office, que segue no monólito por ter baixo tráfego e regras pouco documentadas; o custo novo foi ter que manter três pipelines e um gateway. Minha parte foi propor a estratégia, escrever as decisões de dados e conduzir os cortes; a extração dos serviços foi feita pelo time inteiro.

---

[← Métricas](08-metricas.md) · [Índice](README.md) · [Lições →](10-licoes.md)
