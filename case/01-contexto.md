# 1. Contexto e problema do legado

**Objetivo:** o leitor entende que sistema era, quem dependia dele e por que mantê-lo como estava tinha virado um problema de negócio, e não só um incômodo técnico.

## Perguntas-guia

### O sistema

- O que o sistema fazia, em linguagem de negócio? Quem eram os usuários (internos, clientes, parceiros)?
- Quantos anos tinha? Quantas pessoas já tinham passado por ele?
- Qual era a stack (linguagem, versão de framework, banco, hospedagem)?
- Qual era o tamanho aproximado: módulos, tabelas, integrações? (Use ordem de grandeza, não números exatos, se forem sensíveis.)

### A dor

- O que doía no dia a dia do time? Deploys, testes, incidentes, onboarding, acoplamento?
- O que doía para o negócio? Tempo para lançar algo, custo, falhas visíveis para clientes, risco de compliance?
- Qual evento tornou a modernização prioridade (incidente grave, fim de suporte de versão, crescimento, nova linha de produto)?
- Que tentativas anteriores existiram e por que não foram adiante?

### Seu papel

- Qual era o seu cargo e o que estava sob sua responsabilidade?
- Você propôs a modernização, herdou a decisão ou foi chamado para executá-la?

## Conteúdo

### O sistema

<!-- PREENCHER: descreva o sistema em 1 ou 2 parágrafos, em linguagem de negócio, com setor genérico e sem nomes. -->

### Os sintomas

<!-- PREENCHER: liste de 3 a 6 sintomas concretos, cada um com um exemplo ou dado. Prefira "deploy levava X e exigia janela" a "o sistema era lento". -->

### O gatilho

<!-- PREENCHER: o que fez a modernização sair do backlog e virar projeto. -->

### Meu papel

<!-- PREENCHER: cargo, escopo e responsabilidade, em primeira pessoa. Deixe claro o que você decidiu e o que o time fez junto. -->

## Exemplo ilustrativo

> **Exemplo ilustrativo, substituir.** O sistema era um monólito PHP 5.6 com framework próprio, usado pela operação para registrar pedidos de clientes corporativos, faturar e avisar transportadoras. Rodava em duas VMs com um único banco MySQL de cerca de 400 tabelas. Os sintomas: deploy quinzenal com janela noturna e roteiro manual de 30 passos; uma suíte de testes que cobria menos de 10% do código e levava 40 minutos; e incidentes em que um relatório pesado travava a emissão de notas. O gatilho foi um contrato novo que triplicaria o volume de pedidos em seis meses. Entrei como tech lead com a tarefa de propor um plano que não parasse a operação.

---

[Índice](README.md) · [Restrições →](02-restricoes.md)
