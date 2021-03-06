---
title       : My First Slidify Presentation
subtitle    : Pitching for my first shiny app
author      : Abhishek Kapoor
job         : 1st Deck
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Correspondence Map

> 1. Market Researcher have to deal with brand perception data frequently
> 2. Here consumers has rated different brands against different imagery aspects 
> 3. One of the way of analysing this data is through correspondence maps
> 4. Example of correspondence maps -http://kantarmedia-tgiie.com/wp-content/uploads/2012/03/Correspondence-Mapping-ROI.pdf

---

## Correspondence Map using R - Eigen values

> 1. Packages - FactoMineR


```r
library(FactoMineR)
author=read.csv("Sample.csv",row.names="X")
ca2<- CA(author,graph = FALSE)
ca2$eig
```

```
##       eigenvalue percentage of variance cumulative percentage of variance
## dim 1  9.562e-03              6.991e+01                             69.91
## dim 2  2.931e-03              2.143e+01                             91.34
## dim 3  7.386e-04              5.400e+00                             96.74
## dim 4  3.292e-04              2.407e+00                             99.15
## dim 5  1.164e-04              8.511e-01                            100.00
## dim 6  2.685e-33              1.963e-29                            100.00
```

---

## Correspondence Map Coordinates


```r
head(ca2$col$coord)
```

```
##             Dim 1      Dim 2    Dim 3     Dim 4      Dim 5
## Brand.A -0.071063 -0.0110966 -0.03476 -0.001508 -0.0098293
## Brand.B -0.125783 -0.0023783  0.01472  0.012020  0.0141630
## Brand.c  0.001518  0.0665942  0.04812  0.010566 -0.0186669
## Brand.D  0.060154 -0.0700769  0.01868 -0.018393  0.0002763
## Brand.E  0.060362  0.1174649 -0.01417 -0.031518  0.0108717
## Brand.F  0.177079 -0.0009361 -0.01832  0.030153  0.0048724
```

```r
head(ca2$row$coord)
```

```
##                            Dim 1    Dim 2     Dim 3      Dim 4      Dim 5
## A Leader                -0.19626 -0.07771 -0.037711 -0.0034849 -0.0008395
## Advanced / cutting edge -0.03865 -0.03764 -0.016622 -0.0045425  0.0079017
## Authentic               -0.13508  0.04557  0.038453  0.0065657  0.0053785
## Carefree                 0.02658  0.02158 -0.007662 -0.0290736  0.0005891
## Cares                    0.01688  0.04418  0.004252 -0.0266989  0.0002498
## Charming                 0.09738 -0.04573  0.026464 -0.0008384  0.0107959
```

---

## Correspondence Map Plot


```r
plot(ca2)
```

![plot of chunk unnamed-chunk-3](assets/fig/unnamed-chunk-3.png) 

---

## Correspondence Map for end users

> 1. Now here is the link where user can easily upload the data (brand assoication data) and correspondence map will be generated in just fraction of seconds
> 2. Now user don't have to worry of running R codes, loading data or arranging the data in particular format for SPSS run. Simply upload the data and see the results
> 3. Here is the link https://kapoorabhishek.shinyapps.io/PerceptualMap/
> 4. Happy Plotting

