library(Kaashi)
library(ggplot2)

tile <- motif(theta = 75, delta = 0.75, polyLine = F)

vector = rbind(
  c(2,0),
  c(0,2))
tiles <- tiling(tile, n = 3, type = "periodic", vector = vector) 


tilePlotter(tiles, tileColor = c("#EE62AF","#002D7B","#0085FF", "#E8A8D3","#E8A8D3"),
            borderSize = 0.1)


script_dir <- dirname(rstudioapi::getActiveDocumentContext()$path)

ggsave(file.path(script_dir, "featured.png"), width = 4, height = 4)



