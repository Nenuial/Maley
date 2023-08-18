library(googledrive)

drive_auth(path = ".secrets/equievents-368612-5bb2b3c9038e.json")

drive_ls("Concours/Maley") |> 
  purrr::pwalk(~drive_download(..2, path = paste0("data/", ..1), overwrite = T))

fs::dir_create("data/champ")

drive_ls("Concours/MaleyChamp") |> 
  purrr::pwalk(~drive_download(..2, path = paste0("data/champ/", ..1), overwrite = T))