require('raster')

args <- commandArgs(trailingOnly = TRUE)

input = args[1]
output = args[2]

img <- brick(input)

jpeg(output)
plotRGB(img * (img >= 0), r = 4, g = 5, b = 3)
dev.off()
