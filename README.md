# Bird Color Palettes (made with 100% REAL birds!)

## Install

``` r
devtools::install_github("bentonelli/birdcolors")
```

## Basic Use

### Base R

``` r
library(birdcolors)
library(ggplot2)

# Base R
outp <- bird_colors("Scarlet Macaw")
xx <- (1:7)
yy <- (1:7)
zz <- (1:7)

plot(xx,yy,col=outp[zz],pch=19,cex=2)
```

![](README_files/figure-markdown_github/unnamed-chunk-2-1.png)

``` r
# ggplot2
bird_cols <- bird_colors("Lazuli Bunting")

xx <- (1:8)
yy <- (1:8)
zz <- (1:8)

ggplot() +
  geom_point(aes(x = xx,y=yy,col=zz),pch=19,cex=5) +
  scale_color_bird(bird_cols) +
  theme_classic()
```

![](README_files/figure-markdown_github/unnamed-chunk-3-1.png)
