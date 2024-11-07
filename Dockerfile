FROM rocker/shiny:4.2.3
# Install necessary R packages
RUN install2.r rsconnect

# Set working directory
WORKDIR /home/shinyapp

COPY app/ app/
COPY R/deploy.R R/deploy.R

# Run the deployment script
CMD ["Rscript", "R/deploy.R"]

