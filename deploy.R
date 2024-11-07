library(rsconnect)

# Authenticate using environment variables
setAccountInfo(
  name   = Sys.getenv("SHINY_ACC_NAME"),
  token  = Sys.getenv("SHINYAPPS_TOKEN"),
  secret = Sys.getenv("SHINYAPPS_SECRET"),
  server = "shinyapps.io"
)

# Deploy
deployApp(appFiles = c("ui.R", "server.R"),
          appName  = 'first',
          appTitle = 'hello'
)

