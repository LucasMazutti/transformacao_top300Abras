# transformacao_top300Abras

🎯 Desafio Real: Como relacionar 300 varejistas com milhares de CNPJs diferentes?

Contexto:
Precisava cruzar o ranking Top 300 ABRAS com a base de clientes da minha empresa para análise no Power BI. 

O problema? 🤔
❌ Carrefour aparecia com 50+ CNPJs diferentes
❌ Nomes inconsistentes: "Carrefour LTDA" vs "Carrefour Comércio e Indústria S.A."
❌ PROCV/PROCX falhavam em 80% dos casos
❌ Fazer manualmente? 300 registros = horas de trabalho repetitivo

A Solução: Python + Fuzzy Matching 🐍

Criei um pipeline automatizado no Jupyter Notebook:
1️⃣ Padronização de nomes (regex para remover LTDA, S.A., etc)
2️⃣ Extração do CNPJ raiz (8 primeiros dígitos)
3️⃣ Fuzzy Matching com RapidFuzz (85% de threshold. Depois tentei 60% e até qu deu certo😅)
4️⃣ Mapeamento automático dos CNPJs corretos

Resultado:
✅ 95%+ de matches automáticos
✅ Tempo: 5 minutos vs horas de trabalho manual
✅ Base pronta para relacionamento no Power BI

Ferramentas para a transformação: Python | Pandas | RapidFuzz | SQL | EXCEL

Próximos passos: Dashboard executivo com análise de penetração nos Top 300! 📊

*MANDATÓRIOS E SUGESTÕES JONATHAS*

Bom dia Lucas,

Do jeito que estão não autorizo publicação, é propriedade intelectual da empresa e algumas informações contidas ferem a LGPD. 

Se deseja publicar, eu autorizarem se você criar uma nova versão com alguns ajustes: 
1.	Você deve criar uma nova versão de "laboratório" sem apresentar nenhuma informação que remeta à Vitao como nome de arquivos, de clientes.
2.	Não aparecer a palavra SAP no código.
3.	Usar dados fictícios.
4.	Não deve publicar como desenvolvido para Vitao. Pode publicar como um trabalho seu para higienização de dados. 

Exemplos: 
1.	Troque o arquivo CliemtesVitao.xlsx por clientes_fictícios.xlsx e substitua todos os dados da planilha por cadastros fictícios que pode usar IA para gerar.
2.	Troque o nome do campo sap_cod_cliente por id_cliente para não identificar o uso do SAP.
3.	Troque o nome do arquivo da ABRAS por clientes_mercado.xlsx por exemplo e também use dados fictícios. 

Além disso eu não tinha visto o código antes, então vou aproveitar pra dar um breve review:  Tente organizar mais o código, ele está muito distribuído, acredito que consegue resumir e não deixar tantas estruturas espalhadas. Também tem um erro de lógica, como SUPERMERCADOS vem antes de SUPERMERCADO no array, isso fez com que o MATEUS ficasse com 2 “S” no final: MATEUSS. Ao invés de usar replace, o ideal é criar uma string pattern com os nomes para remover ao invés de um array e então usar Sub pra remover o pattern e usar regex pra pontuação ao invés do replace. 

Faz os ajustes e me manda novamente.

