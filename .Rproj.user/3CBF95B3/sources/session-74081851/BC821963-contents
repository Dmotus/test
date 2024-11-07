FROM rocker/shiny:latest
# Install necessary R packages
RUN install2.r rsconnect

# Set working directory
WORKDIR /home/shinyapp
COPY ui.R .
COPY server.R . 
COPY app.R .
COPY deploy.R .

# Run the deployment script
CMD ["Rscript", "deploy.R"]

