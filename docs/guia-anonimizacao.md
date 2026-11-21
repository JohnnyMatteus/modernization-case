# Guia de anonimização

Este guia diz como transformar uma experiência real num case publicável sem expor empresa, clientes, colegas ou dados sensíveis, e sem distorcer os fatos. Use-o em toda revisão antes de levar conteúdo para a `main` e antes de publicar o artigo.

## Princípios

1. **Anonimizar não é inventar.** Troque nomes por categorias e valores por proporções, mas não mude o que aconteceu. Se um detalhe não pode ser contado sem identificar a empresa, retire-o em vez de trocá-lo por algo falso.
2. **O risco está na combinação.** Um detalhe sozinho raramente identifica alguém. Setor + cidade + período + stack + número de clientes, juntos, identificam. Revise o case como um todo, não só frase por frase.
3. **Na dúvida, generalize um nível acima.** "Fintech de crédito consignado em Minas" vira "empresa de serviços financeiros". "Contrato com a maior rede de farmácias do país" vira "contrato com um cliente grande do varejo".
4. **O que você assinou vale mais do que este guia.** Contratos de confidencialidade e políticas internas do ex-empregador têm prioridade. Se houver cláusula que impede publicar, não publique.
5. **Tudo que vai para o GitHub é permanente.** Um commit apagado continua no histórico e em forks. Rascunhos com dados reais ficam fora do repositório (a pasta `rascunhos/` e arquivos `*.local.md` estão no `.gitignore`).

## O que remover ou trocar

### Empresa, marcas e produtos

| Original | Como fica |
| --- | --- |
| Nome da empresa, razão social, apelido interno | "a empresa", ou o setor genérico ("uma empresa de logística B2B") |
| Nome de produto, módulo ou sistema interno | Função genérica: "o sistema de faturamento", "o back-office" |
| Codinomes de projeto | "o projeto de modernização" |
| Logos, prints de telas, cores da marca | Não use. Recrie diagramas com rótulos genéricos |
| Domínios, URLs, endpoints, nomes de buckets e filas | Remova. Se precisar de exemplo, use `example.com` |

### Clientes, parceiros e fornecedores

| Original | Como fica |
| --- | --- |
| Nome de cliente ou parceiro | "um cliente grande do varejo", "um parceiro de transporte" |
| Fornecedores de nicho (que identificam a empresa) | Categoria: "um ERP de mercado", "um gateway de pagamento" |
| Fornecedores de mercado amplo (AWS, GCP, RabbitMQ, MySQL) | Podem ficar, se não identificarem a empresa em conjunto com outros detalhes |

### Pessoas

- Nenhum nome, nem só o primeiro, nem iniciais, nem cargo único ("a CTO", se só havia uma).
- Fale de papéis: "o time de produto", "a liderança", "um engenheiro do time".
- Não atribua erros a pessoas identificáveis. Fale do processo ou da decisão.

### Números sensíveis

| Tipo | Regra |
| --- | --- |
| Receita, faturamento, valor de contrato | Nunca em valor absoluto. Use, no máximo, variação percentual |
| Custo de infraestrutura | Normalize (antes = 100) ou use percentual de redução |
| Volume de clientes, usuários, transações | Ordem de grandeza ("dezenas de milhares", "milhões por mês") |
| Tamanho do time | Pode ficar, se não identificar a empresa (times muito grandes ou muito específicos, generalize) |
| Métricas de engenharia (DORA, latência, MTTR) | Podem ficar em valor real, com período e método. Arredonde para baixo |
| Datas | Ano ou intervalo ("2022 a 2023"); evite datas exatas de incidentes ou lançamentos |

### Detalhes técnicos identificáveis

- Nomes de tabelas, colunas, filas, tópicos, serviços, repositórios e variáveis de ambiente internos.
- Endereços IP, nomes de hosts, regiões de nuvem combinadas com outros dados, IDs de conta.
- Trechos de código copiados do código da empresa. Escreva pseudocódigo novo, se precisar.
- Incidentes públicos: se a empresa teve um incidente noticiado, não o descreva de modo que dê para ligar a notícia ao case.
- Combinações raras de stack (uma versão muito específica de um produto de nicho, por exemplo).

### Dados pessoais e LGPD

- Nenhum dado de cliente final, nem de exemplo copiado de produção.
- Exemplos de dados são sempre fictícios, com e-mails `@example.com`.

## Como revisar

### 1. Varredura automática local

Rode antes de abrir o PR. A lista de termos fica num arquivo local, fora do Git, porque ela mesma contém os nomes reais:

```bash
# Crie uma vez, fora do repositório, um termo por linha:
# nome da empresa, produtos, clientes, colegas, domínios, codinomes.
$EDITOR ~/.config/modernization-case/termos-proibidos.txt

# Procure os termos em todo o conteúdo versionado, sem diferenciar maiúsculas.
git ls-files -z | xargs -0 grep -n -i -F -f ~/.config/modernization-case/termos-proibidos.txt
```

Nenhuma linha na saída é o resultado esperado.

Revise também o histórico, se algum rascunho foi commitado por engano:

```bash
git log -p --all | grep -n -i -F -f ~/.config/modernization-case/termos-proibidos.txt
```

Se aparecer algo no histórico, não basta apagar o arquivo: reescreva o histórico antes do primeiro push público, ou recrie o repositório.

### 2. Revisão humana

Leia o case inteiro de uma vez, como um ex-colega leria, e pergunte: "eu conseguiria dizer de que empresa é isto?". Se a resposta for sim ou talvez, generalize mais.

### 3. Teste do estranho

Peça para alguém de fora da empresa ler e dizer o que dá para inferir. O que essa pessoa conseguir deduzir, um recrutador do mesmo mercado também consegue.

## Checklist antes de publicar

Copie para o PR e marque item a item.

```markdown
- [ ] Nenhum nome de empresa, marca, produto, sistema interno ou codinome.
- [ ] Nenhum nome de cliente, parceiro ou fornecedor de nicho.
- [ ] Nenhum nome, inicial ou cargo único de pessoa.
- [ ] Receita, valores de contrato e custos só em percentual ou normalizados.
- [ ] Volumes de clientes e transações só em ordem de grandeza.
- [ ] Datas no máximo em ano ou intervalo.
- [ ] Nenhum nome interno de tabela, fila, serviço, host, bucket ou repositório.
- [ ] Nenhum trecho de código da empresa; só pseudocódigo novo.
- [ ] Diagramas com rótulos genéricos; nenhuma imagem com marca.
- [ ] A combinação setor + período + stack + números não identifica a empresa.
- [ ] Varredura com a lista local de termos proibidos sem resultados (arquivos e histórico).
- [ ] Nenhum exemplo ilustrativo restante: todo número publicado é real e tem fonte.
- [ ] Nenhum marcador PREENCHER restante (`./scripts/check-placeholders.sh`).
- [ ] Nada do que foi publicado fere contrato ou acordo de confidencialidade.
- [ ] O artigo do LinkedIn só usa fatos que estão no repositório.
```

## Exemplos de reescrita

Os exemplos abaixo são fictícios e servem só para mostrar a técnica.

| Antes (identificável) | Depois (anonimizado) |
| --- | --- |
| "Migramos o Pedidão, ERP interno da Transportes Fictícia, que processava R$ 40 milhões por mês." | "Migramos o sistema interno de pedidos de uma empresa de logística, responsável pela maior parte da receita." |
| "A Ana, nossa CTO, vetou o Kafka." | "A liderança técnica preferiu não adotar uma plataforma de streaming naquele momento, pelo custo operacional." |
| "A fila `billing-v2-prod-sa-east-1` acumulou 1.200.000 mensagens em 12/03/2022." | "A fila de faturamento acumulou mais de um milhão de mensagens durante um incidente em 2022." |
| "Reduzimos a conta da AWS de US$ 48.000 para US$ 31.000 por mês." | "Reduzimos o custo mensal de infraestrutura em cerca de 35%." |
