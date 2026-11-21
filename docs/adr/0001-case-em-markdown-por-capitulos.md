# 0001. Case em Markdown, um arquivo por capítulo

- **Status:** aceito
- **Data:** 2026-11-21

## Contexto

O estudo de caso precisa servir a três leitores diferentes:

1. o recrutador ou entrevistador que abre o repositório no GitHub e quer entender a história em poucos minutos;
2. o leitor do LinkedIn, que lê um texto corrido e curto;
3. o próprio autor, que vai preencher o case aos poucos, com fatos reais, e precisa revisar a anonimização antes de publicar.

O conteúdo é texto com diagramas. Não há código para executar. O case ainda está vazio: o autor vai preenchê-lo em várias sessões, e cada trecho precisa ser revisado isoladamente (em PR) antes de ir para a `main`.

## Decisão

- O case fica em Markdown, em `case/`, com **um arquivo por capítulo**, numerado (`01-contexto.md` a `11-o-que-faria-diferente.md`), e um índice em `case/README.md` com o resumo executivo.
- Diagramas em **Mermaid** dentro do próprio Markdown, porque o GitHub os renderiza sem build e eles são versionáveis como texto.
- As decisões técnicas da modernização ficam como **mini-ADRs dentro do capítulo 4** (`case/04-decisoes.md`), e não em `docs/adr/`. A pasta `docs/adr/` registra só as decisões sobre **este repositório** (formato, publicação, portão de CI).
- Cada capítulo segue a mesma estrutura: objetivo, perguntas-guia, campos `<!-- PREENCHER: ... -->` e um exemplo curto marcado como "exemplo ilustrativo, substituir".

## Consequências

- Cada capítulo pode ser preenchido e revisado num PR pequeno, o que facilita a checagem de anonimização com o [guia](../guia-anonimizacao.md).
- O GitHub renderiza tudo sem site estático, sem build e sem dependências.
- O artigo do LinkedIn não é gerado automaticamente a partir dos capítulos: é escrito à parte, a partir do esqueleto em [`docs/artigo-linkedin.md`](../artigo-linkedin.md). Isso dá retrabalho, mas o formato de um artigo é diferente do de um case técnico.
- Separar as decisões do case (capítulo 4) das decisões do repositório (`docs/adr/`) evita misturar fatos da experiência real com escolhas editoriais.

## Alternativas consideradas

- **Um único arquivo longo.** Mais simples de ler de ponta a ponta, mas difícil de revisar em PR e de linkar por seção. Descartado.
- **Site estático (MkDocs, Docusaurus).** Navegação melhor, mas exige build, deploy e manutenção para um conteúdo que o GitHub já renderiza bem. Pode voltar se o case virar uma série. Descartado por ora.
- **Diagramas como imagem (draw.io, Excalidraw).** Visual mais livre, mas binário, sem diff e fácil de vazar detalhes (nomes em camadas ocultas, metadados). Descartado.
- **ADRs da modernização em `docs/adr/`.** Deixaria os ADRs do case num formato completo, mas o leitor do case teria que sair do fluxo da história para lê-los. Descartado em favor de mini-ADRs no capítulo 4.
