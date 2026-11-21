# Roteiro: como contar o case numa entrevista

Este roteiro transforma os capítulos de [`case/`](../../case/README.md) numa história falada, no método STAR, em três durações. Termina com as perguntas que um entrevistador costuma fazer e como respondê-las a partir do case.

As respostas dependem dos fatos reais. Este roteiro dá a estrutura, aponta de que capítulo vem cada parte e deixa os campos para o autor preencher.

## Por que STAR

STAR organiza a resposta em quatro partes:

| Parte | Pergunta que responde | Peso na fala | Fonte no case |
| --- | --- | --- | --- |
| **S**ituação | Onde, quando, que sistema, que dor? | cerca de 15% | [1. Contexto](../../case/01-contexto.md), [2. Restrições](../../case/02-restricoes.md) |
| **T**arefa | Qual era a sua responsabilidade e o que estava em jogo? | cerca de 10% | [1. Contexto, "Meu papel"](../../case/01-contexto.md#meu-papel) |
| **A**ção | O que **você** decidiu e fez, e por quê? | cerca de 55% | [3. Estratégia](../../case/03-estrategia.md), [4. Decisões](../../case/04-decisoes.md), [6. Migração](../../case/06-migracao-de-dados.md), [7. Riscos](../../case/07-riscos.md) |
| **R**esultado | O que mudou, com números, e o que aprendeu? | cerca de 20% | [8. Métricas](../../case/08-metricas.md), [9. Resultados](../../case/09-resultados.md), [10. Lições](../../case/10-licoes.md) |

### Alternativas consideradas

- **CAR (contexto, ação, resultado):** mais curto, bom para a versão de 2 minutos, mas esconde a tarefa, e a tarefa é o que separa "eu fiz" de "o time fez". Use STAR e corte a tarefa para uma frase quando o tempo for curto.
- **Narrativa cronológica:** natural de contar, mas tende a gastar tempo no contexto e chegar ao resultado sem tempo. Evite.
- **Começar pelo resultado (pirâmide invertida):** funciona bem com gestores e recrutadores não técnicos. Na versão de 2 minutos, pode abrir com o resultado em uma frase e depois seguir o STAR.

### Trade-offs ao contar

- **Profundidade x tempo:** um case de meses não cabe em 5 minutos. Escolha **uma** decisão técnica para aprofundar e deixe as outras como gancho para perguntas.
- **"Eu" x "nós":** use "eu" para o que foi decisão ou ação sua e "nós" para o trabalho do time. Entrevistadores perguntam "o que você fez, especificamente?" quando só ouvem "nós".
- **Honestidade x brilho:** incluir o que deu errado custa alguns segundos e compra muita credibilidade. Um case sem nenhum problema soa ensaiado.

## Versão de 2 minutos (elevator pitch)

Para "me conte sobre um projeto do qual você se orgulha" ou para abrir uma conversa com recrutador.

| Parte | Roteiro | Seu texto |
| --- | --- | --- |
| S | Sistema, idade e a dor de negócio, em uma frase | <!-- PREENCHER --> |
| T | Seu papel e o que estava em jogo, em uma frase | <!-- PREENCHER --> |
| A | Estratégia e a decisão mais importante, em duas frases | <!-- PREENCHER --> |
| R | Um ou dois números e a lição principal, em duas frases | <!-- PREENCHER --> |

> **Exemplo ilustrativo, substituir.** "Eu era tech lead de um time de seis pessoas que mantinha um monólito PHP de dez anos, do qual dependiam pedidos e faturamento. Um contrato novo ia triplicar o volume, e o sistema não aguentava nem o deploy quinzenal. Propus extrair os domínios aos poucos, com strangler fig atrás de um gateway, e a decisão mais importante foi tratar a migração de dados com outbox e reconciliação diária, em vez de dupla escrita. Em nove meses, passamos de dois deploys por mês para vários por dia, e o contrato entrou sem incidente grave. O que aprendi: quem dita o ritmo de uma modernização é a migração de dados, e não o código."

## Versão de 5 minutos

Para a pergunta comportamental típica de entrevista técnica ou com gestor. Estrutura:

1. **Situação (40 s):** o sistema, a dor e a restrição mais difícil.
2. **Tarefa (20 s):** seu papel, o objetivo e o critério de sucesso combinado.
3. **Ação (3 min):**
   - a estratégia e uma alternativa descartada (40 s);
   - **uma** decisão aprofundada, com contexto, alternativas e preço pago (1 min 20 s);
   - o que deu errado e como foi tratado (1 min).
4. **Resultado (1 min):** de dois a três números com período, o que não foi entregue e a lição principal.

<!-- PREENCHER: escreva a versão de 5 minutos em tópicos curtos, não em texto corrido, para não decorar palavra por palavra. -->

## Versão de 15 minutos (entrevista de system design ou de arquitetura)

Para quando o entrevistador pede para "detalhar uma arquitetura que você mudou". Use um quadro branco ou compartilhe os diagramas do [capítulo 5](../../case/05-arquitetura.md).

1. Desenhe o **antes** e aponte os pontos de acoplamento (2 min).
2. Explique as **restrições** e por que elas descartaram o big bang (2 min).
3. Desenhe a **transição**: por onde o tráfego passava e como os dados sincronizavam (4 min).
4. Percorra **duas decisões** em formato de mini-ADR (4 min).
5. Mostre o **depois** e as métricas (2 min).
6. Feche com **o que faria diferente** (1 min).

<!-- PREENCHER: qual decisão você escolhe aprofundar em cada versão e por quê. -->

## Perguntas que um entrevistador faria

Para cada pergunta: o que ela está testando, como estruturar a resposta e onde está o material no case. Escreva a sua resposta em até 5 linhas.

### "Por que não reescrever do zero?"

- **Testa:** se você conhece o risco de big bang e se a escolha veio de restrições reais, e não de moda.
- **Como responder:** cite duas restrições do [capítulo 2](../../case/02-restricoes.md) e diga em que cenário a reescrita seria a escolha certa.
- **Sua resposta:** <!-- PREENCHER -->

### "O que você fez, especificamente, e o que foi o time?"

- **Testa:** senioridade e honestidade sobre o próprio papel.
- **Como responder:** separe decisões (suas), condução (sua) e execução (do time), com um exemplo de cada. Fonte: [9. Resultados, "Minha contribuição"](../../case/09-resultados.md#minha-contribuição).
- **Sua resposta:** <!-- PREENCHER -->

### "Como vocês garantiram que não perderam dados?"

- **Testa:** rigor com consistência, que é o ponto mais arriscado de qualquer migração.
- **Como responder:** dono da verdade por fase, mecanismo de sincronização, reconciliação e uma divergência real encontrada. Fonte: [6. Migração de dados](../../case/06-migracao-de-dados.md).
- **Sua resposta:** <!-- PREENCHER -->

### "Qual foi a decisão mais difícil? Você tomaria de novo?"

- **Testa:** julgamento sob incerteza e capacidade de rever decisões.
- **Como responder:** um mini-ADR do [capítulo 4](../../case/04-decisoes.md), com a informação que você tinha na época e o que mudaria hoje ([capítulo 11](../../case/11-o-que-faria-diferente.md)).
- **Sua resposta:** <!-- PREENCHER -->

### "O que deu errado?"

- **Testa:** maturidade operacional e se você aprende com incidentes.
- **Como responder:** detecção, impacto, reação, causa e o que mudou no processo. Sem culpar pessoas. Fonte: [7. Riscos](../../case/07-riscos.md).
- **Sua resposta:** <!-- PREENCHER -->

### "Como você sabe que melhorou? Esses números são comparáveis?"

- **Testa:** se você mede de verdade e conhece os limites da medição.
- **Como responder:** um número, com período, fonte e método, e uma limitação declarada. Fonte: [8. Métricas](../../case/08-metricas.md).
- **Sua resposta:** <!-- PREENCHER -->

### "Como você convenceu o negócio a investir nisso?"

- **Testa:** comunicação com não técnicos e capacidade de ligar tecnologia a resultado.
- **Como responder:** o gatilho de negócio do [capítulo 1](../../case/01-contexto.md#o-gatilho), como o custo de não fazer foi apresentado e como o progresso era reportado.
- **Sua resposta:** <!-- PREENCHER -->

### "Como você lidou com o time dividido entre a sustentação e o projeto novo?"

- **Testa:** liderança e gestão de capacidade.
- **Como responder:** a regra adotada (rodízio, time dedicado, cota de tempo), o efeito que ela teve e o que você ajustaria.
- **Sua resposta:** <!-- PREENCHER -->

### "Microsserviços valeram a pena? Qual foi o custo?"

- **Testa:** se você enxerga os custos da arquitetura distribuída, e não só os benefícios.
- **Como responder:** um benefício medido, um custo novo (operação, observabilidade, consistência eventual) e em que situação você manteria um monólito modular.
- **Sua resposta:** <!-- PREENCHER -->

## Erros comuns ao contar

- Gastar metade do tempo no contexto. A situação cabe em 40 segundos.
- Listar tecnologias em vez de decisões. "Usamos Go, RabbitMQ e Kubernetes" não é uma ação; "troquei a dupla escrita por outbox porque perdíamos mensagens" é.
- Números sem período ou sem fonte. Se perguntarem "como você mediu?", a resposta precisa estar pronta.
- Citar nomes de empresa, clientes ou colegas. Mantenha a mesma anonimização do repositório, também na fala. Ver [guia de anonimização](../guia-anonimizacao.md).
- Decorar o texto. Decore a estrutura e os números; o resto sai melhor com as próprias palavras.

## Como treinar

1. Grave a versão de 2 minutos e ouça. Corte o que não for fato.
2. Peça para alguém interromper a versão de 5 minutos com as perguntas acima, em ordem aleatória.
3. Repita a versão de 15 minutos desenhando os diagramas de memória.
