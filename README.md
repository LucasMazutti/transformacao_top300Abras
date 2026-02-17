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

