# 2. Restrições

**Objetivo:** o leitor entende os limites dentro dos quais as decisões foram tomadas. Sem restrições, qualquer estratégia parece óbvia; com elas, as escolhas dos capítulos seguintes passam a fazer sentido.

## Perguntas-guia

- **Operação:** o sistema podia parar? Qual janela de manutenção existia, se existia?
- **Prazo:** havia uma data-limite (contrato, fim de suporte, auditoria)? Era fixa ou negociável?
- **Time:** quantas pessoas, com que experiência na stack nova? Havia gente dedicada ou o time dividia a modernização com a sustentação?
- **Orçamento:** havia verba para infraestrutura nova, ferramentas, consultoria? Precisava provar retorno antes?
- **Conhecimento:** havia documentação? Quem conhecia as regras de negócio escondidas no código?
- **Dados:** volume, retenção obrigatória, LGPD, dados que não podiam sair de determinado ambiente.
- **Integrações:** sistemas externos que não podiam mudar de contrato (parceiros, ERPs, órgãos públicos).
- **Organização:** outras áreas precisavam aprovar? Havia resistência? Quem patrocinava?
- **Funcionalidade:** o roadmap de produto continuava rodando em paralelo? Era permitido congelar features?

## Conteúdo

<!-- PREENCHER: tabela ou lista das restrições reais, cada uma com o impacto que teve na estratégia. -->

| Restrição | Detalhe | Impacto na estratégia |
| --- | --- | --- |
| <!-- PREENCHER --> | <!-- PREENCHER --> | <!-- PREENCHER --> |

### Restrição mais difícil

<!-- PREENCHER: qual restrição mais pesou e por quê. Este parágrafo costuma ser o mais interessante numa entrevista. -->

## Exemplo ilustrativo

> **Exemplo ilustrativo, substituir.**
>
> | Restrição | Detalhe | Impacto na estratégia |
> | --- | --- | --- |
> | Sem parada | Pedidos entravam 24x7; a janela máxima aceita era de 15 minutos por mês | Descartou o big bang; exigiu migração incremental com rollback por rota |
> | Time misto | Seis pessoas, duas com experiência em Go, todas dividindo tempo com a sustentação | Serviços novos em Laravel moderno primeiro; Go só onde havia ganho claro de desempenho |
> | Roadmap ativo | Produto não aceitava congelar features por mais de duas semanas | Toda feature nova passou a nascer fora do monólito |
>
> A restrição mais difícil foi o time dividido: cada incidente no legado parava a modernização por dias, o que nos levou a investir primeiro em observabilidade do monólito.
