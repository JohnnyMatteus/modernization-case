# Estudo de caso: modernização de um sistema legado

<!-- PREENCHER: título definitivo do case, sem nome de empresa nem de produto. Ex. de formato: "Do monólito de N anos a serviços independentes sem parar a operação". -->

<!-- PREENCHER: remova este aviso de status quando o case estiver completo e revisado. -->

> **Status do case:** esqueleto. Os capítulos abaixo têm perguntas-guia, campos `PREENCHER` e exemplos ilustrativos que **não são fatos**. Nada aqui deve ser lido como resultado real até que o autor substitua cada exemplo.

## Resumo executivo

Responda em até 6 linhas, para quem só vai ler isto:

- **Situação:** que sistema era, para que servia e por que precisava mudar.
- **Papel do autor:** cargo, tamanho do time e responsabilidade (decidiu, liderou, executou).
- **Abordagem:** a estratégia em uma frase.
- **Resultado:** de um a três números de antes e depois, com período e fonte.
- **Lição principal:** a frase que você quer que o leitor guarde.

<!-- PREENCHER: resumo executivo em até 6 linhas, seguindo os cinco itens acima. -->

> **Exemplo ilustrativo, substituir.** Um monólito PHP de cerca de dez anos concentrava pedidos, faturamento e notificações de uma operação B2B. Como tech lead de um time de seis pessoas, conduzi a extração gradual de três domínios para serviços em Go e Laravel, usando strangler fig atrás de um gateway. Em nove meses, a frequência de deploy passou de quinzenal para diária e o tempo de recuperação de incidentes caiu de horas para minutos. A lição: a migração de dados, e não o código, definiu o ritmo do projeto.

## Ficha técnica

| Campo | Valor |
| --- | --- |
| Período | <!-- PREENCHER: ex. "2022 a 2023, 11 meses" (pode ser aproximado) --> |
| Papel | <!-- PREENCHER: ex. "tech lead e engenheiro sênior" --> |
| Time | <!-- PREENCHER: tamanho e composição, sem nomes --> |
| Setor (genérico) | <!-- PREENCHER: ex. "logística B2B", "varejo", "serviços financeiros" --> |
| Stack antes | <!-- PREENCHER: linguagens, frameworks e bancos do legado --> |
| Stack depois | <!-- PREENCHER: linguagens, frameworks, bancos e infraestrutura do novo --> |
| Estratégia | <!-- PREENCHER: ex. "strangler fig + branch by abstraction" --> |

## Capítulos

1. [Contexto e problema do legado](01-contexto.md)
2. [Restrições](02-restricoes.md)
3. [Estratégia de modernização](03-estrategia.md)
4. [Decisões (mini-ADRs)](04-decisoes.md)
5. [Arquitetura antes e depois](05-arquitetura.md)
6. [Migração de dados](06-migracao-de-dados.md)
7. [Riscos e mitigação](07-riscos.md)
8. [Métricas](08-metricas.md)
9. [Resultados](09-resultados.md)
10. [Lições aprendidas](10-licoes.md)
11. [O que eu faria diferente](11-o-que-faria-diferente.md)

## Como ler cada capítulo

Todo capítulo segue a mesma estrutura:

- **Objetivo:** o que o capítulo precisa deixar claro para o leitor.
- **Perguntas-guia:** o que o autor responde com os fatos reais. Não é preciso responder todas; é preciso que o texto final responda às que importam.
- **Campos `PREENCHER`:** comentários HTML que não aparecem na renderização do GitHub e marcam onde falta conteúdo.
- **Exemplo ilustrativo:** um trecho curto com o nível de detalhe esperado. É inventado e deve ser apagado depois que o texto real estiver no lugar.

Antes de publicar, revise o case inteiro com o [guia de anonimização](../docs/guia-anonimizacao.md).
