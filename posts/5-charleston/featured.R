library(Kaashi)
library(ggplot2)

tile <- motif(theta = 22, delta = 0.85, polyLine = F)

vector = rbind(
  c(2,0),
  c(0,2))
tiles <- tiling(tile, n = 3, type = "periodic", vector = vector) 


tilePlotter(tiles, tileColor = c("#0085FF", "#0085FF", "#EE62AF","#002D7B", "#E8A8D3","#002D7B"),
            borderSize = 0.1)


script_dir <- dirname(rstudioapi::getActiveDocumentContext()$path)

ggsave(file.path(script_dir, "featured.png"), width = 4, height = 4)



