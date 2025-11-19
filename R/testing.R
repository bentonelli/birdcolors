library(ggplot2)

### Base R testing ####
# As factor
outp <- bird_colors("Scarlet Macaw")
xx <- (1:7)
yy <- (1:7)
zz <- (1:7)

plot(xx,yy,col=outp[zz],pch=19)

zz <- c("Goose","Duck","Quail","Tanager","Warbler","Bunting","Hawk")

zz_fact <- factor(zz)
plot(xx,yy,col=outp[zz_fact],pch=19)
legend("topleft",legend = zz,pch=19,col=outp[zz_fact])

# As continuous - not recommended/worth the time!
outp <- bird_colors("Lazuli Bunting")
xx <- (1:7)
yy <- (1:7)
zz <- (1:7)

pal <- colorRampPalette(outp)
col_to_use <- pal(length(unique(zz)))

plot(xx,yy,col=col_to_use[zz],pch=19)

### ggplot testing ####
outp <- bird_colors("Scarlet Macaw")

xx <- (1:7)
yy <- (1:7)
zz <- c("Goose","Duck","Quail","Tanager","Warbler","Bunting","Hawk")

ggplot() +
  geom_point(aes(x = xx,y=yy,col=factor(zz)),pch=19,cex=5) +
  scale_color_manual(values=outp) +
  theme_classic()

#Continuous
bird_cols <- bird_colors("Lazuli Bunting")

xx <- (1:8)
yy <- (1:8)
zz <- (1:8)

ggplot() +
  geom_point(aes(x = xx,y=yy,col=zz),pch=19,cex=5) +
  scale_color_bird(bird_cols) +
  theme_classic()


outp <- bird_colors("Lazuli Bunting")

xx <- (1:8)
yy <- (1:8)
zz <- (1:8)

ggplot() +
  geom_point(aes(x = xx,y=yy,col=zz),pch=19,cex=5) +
  scale_color_bird(outp) +
  theme_classic()
