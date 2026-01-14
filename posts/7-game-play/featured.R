library(Kaashi)
library(ggplot2)

tile <- motif(theta = 30, delta = 0.5, polyLine = F)

vector = rbind(
  c(2,0),
  c(0,2))
tiles <- tiling(tile, n = 3, type = "periodic", vector = vector) 


tilePlotter(tiles, tileColor = c("#E8A8D3","#E8A8D3","#EE62AF","#002D7B","#0085FF"),
            borderSize = 0.1)


tile <- motif(box = regularPolygon(4), theta = 45, delta = 0.5, n = 4, polyLine = F)

vector = rbind(
  c(2,0),
  c(0,2))
tiles <- tiling(tile, n = 3, type = "periodic", vector = vector) 


tilePlotter(tiles, tileColor = c("#E8A8D3", "#EE62AF", "#0085FF"),
            borderSize = 0.1)

tile <- motif(box = regularPolygon(4), theta = 65, delta = 0.5, n = 4, polyLine = F)

vector = rbind(
  c(2,0),
  c(0,2))
tiles <- tiling(tile, n = 4, type = "periodic", vector = vector) 


tilePlotter(tiles, tileColor = c("#E8A8D3", "#EE62AF", "#0085FF","#002D7B"),
            borderSize = 0.1)

script_dir <- dirname(rstudioapi::getActiveDocumentContext()$path)

ggsave(file.path(script_dir, "featured.png"), width = 4, height = 4)



