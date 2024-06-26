#Exo1
setwd("L:/BUT/SD/Promo 2023/nalem/r/dataset")
getwd()

fichiers <- list.files(path = getwd(),
                       pattern = ".csv$",
                       full.names = TRUE)

library(tools)
print(fichiers[1])
nom_fichier = basename(path = fichiers[1])
nom_fichier_sans_extension = file_path_sans_ext(x = nom_fichier)
print(nom_fichier_sans_extension)

assign(x = nom_fichier_sans_extension, 
       value = read.csv(fichiers[1],
                        sep = ",",
                        dec = ".")

       for (fichier in fichiers) {
         # Extraire le nom du fichier sans extension
         nom_objet <- file_path_sans_ext(basename(fichier))
         
         # Lire le fichier CSV et l'affecter à une variable avec le nom du fichier
         start_time <- Sys.time()
         assign(nom_objet, read.csv(fichier, 
                                    sep = ",",
                                    dec = "."))
         end_time <- Sys.time()
         # Calcul du temps écoulé
         execution_time <- end_time - start_time
         cat("Importation : ",nom_objet, "=" , execution_time , "\n")
       }

#Exo2

df_x = subset(team, city == "Los Angeles", select = c("id", "city"))
df_y = subset(game, select = c("game_id", "team_id_home"))
dfJoin = merge(x = df_x, y = df_y, 
               by.x = "id", 
               by.y = "team_id_home", 
               all.x = TRUE)
nrow(dfJoin)
View(dfJoin)

df_x = dfJoin
df_y = subset(game_info, select = c("game_id", "attendance"))
dfJoin = merge(x = df_x, y = df_y, 
               by = "game_id",
               all.x = TRUE)
mean(dfJoin$attendance, na.rm = TRUE)
View(dfJoin)

df_x = subset(game_summary, season == 2020,
              select = c("game_id", "season"))
dfJoin = merge(x = df_x, y = officials, 
               by = "game_id",
               all.x = TRUE)
length(unique(dfJoin$official_id))
View(dfJoin)

df_x = subset(game_summary,
              select = c("game_id", "season"))
df_y = subset(officials, first_name == "Dick" & last_name == "Bavetta")
dfJoin = merge(x = df_x, y = df_y, 
               by = "game_id",
               all.y = TRUE)
View(dfJoin)
table(dfJoin$season)

#Exo3
library(DBI)
library(RSQLite)
mydb <- dbConnect(SQLite(), "nbaDb.sqlite")

dbListTables(mydb)

dbGetQuery(mydb, 'SELECT * FROM team LIMIT 5')

dfJoin = dbGetQuery(mydb, '....')

dbWriteTable(mydb, "nom_table", dfJoin)
dbListTables(mydb)

dbDisconnect(mydb)