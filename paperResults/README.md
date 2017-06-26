## How to reproduce the figures in our paper
* Install R: [http://cran.r-project.org/mirrors.html](http://cran.r-project.org/mirrors.html)
* Install RStudio: [https://www.rstudio.com/products/rstudio/download/](https://www.rstudio.com/products/rstudio/download/)
* Install GNU Plot: [http://www.gnuplot.info/download.html](http://www.gnuplot.info/download.html)
* Untar `results.tar.gz` and open `dbgstudy.Rmd` in RStudio
```bash
tar -zxf results.tar.gz
cd paper_figures
open dbgstudy.Rmd
```
* Click `Knit` and investigate the output (`dbgstudy.pdf`)
  * RStudio also produces the figures used in our paper as individual PDF files
  * We added the generated PDF files already for your easy reference
* Run `gnuplot generate_Figure10` to generate `debug_strategy.eps` (Figure 10)
