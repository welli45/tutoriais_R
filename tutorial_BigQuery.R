################################################################################
# Wellington Santos Souza
# 11/09/23
# Conectando o RStudio ao BigQuery
################################################################################

# instalando e carregando pacotes 
if(!require(bigrquery)){install.packages("bigrquery")};library(bigrquery)

# Acesse o BigQuery
# Copie o id do projeto que irá usar os dados
# Defina o seu projeto no Google Cloud
projID <- 'ID'

# Faça sua query
sql <- sql <- "SELECT * FROM `bigquery-public-data.usa_names.usa_1910_current` LIMIT 10"

# Rode a query que retornará a base que definiu na query
tb <- bq_project_query(projID, sql)

# primeiras 10 linhas
sample <-bq_table_download(tb, n_max = 10)

# visualizando
sample
