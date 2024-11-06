FROM rocker/shiny:4.2.1
RUN R -e "install.packages('devtools', repos = 'https://cran.r-project.org')"
RUN R -e "devtools::install_github('rstudio/rsconnect')"
COPY ui.R ui.R 
COPY server.R server.R 
COPY deploy.R deploy.R
CMD Rscript deploy.R
