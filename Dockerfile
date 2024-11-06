FROM rocker/shiny:4.2.1
RUN R -e "install.packages('rsconnect')"
WORKDIR /home/shinytweet
COPY ui.R ui.R 
COPY server.R server.R 
COPY deploy.R deploy.R
CMD Rscript deploy.R
