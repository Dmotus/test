FROM rocker/shiny:4.2.1
RUN R -e "install.packages('rsconnect', repos = 'https://cran.r-project.org')"
WORKDIR /home/shinytweet
COPY ui.R ui.R 
COPY server.R server.R 
COPY deploy.R deploy.R
CMD Rscript deploy.R
