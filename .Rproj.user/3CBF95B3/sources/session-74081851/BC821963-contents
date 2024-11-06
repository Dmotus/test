FROM rocker/shiny:4.2.1
RUN install2.r rsconnect shiny
WORKDIR /home/shinytweet
COPY ui.R ui.R 
COPY server.R server.R 
COPY deploy.R deploy.R
CMD Rscript deploy.R
