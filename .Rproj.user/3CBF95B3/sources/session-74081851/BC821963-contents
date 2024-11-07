FROM rocker/shiny:latest
RUN install2.r rsconnect
WORKDIR /home/shinyapp

COPY ui.R
COPY server.R
COPY app.R
COPY deploy.R 
CMD Rscript deploy.R

# Run the deployment script
CMD ["Rscript", "deploy.R"]
