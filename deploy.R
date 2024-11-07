library(rsconnect)

# Authenticate using environment variables
setAccountInfo(
  name   = Sys.getenv("SHINY_ACC_NAME"),
  token  = Sys.getenv("SHINYAPPS_TOKEN"),
  secret = Sys.getenv("SHINYAPPS_SECRET"),
  server = "shinyapps.io"
)

# Deploy
deployApp(appDir   = 'app/',
          appName  = 'first',
          appTitle = 'hello'
)

