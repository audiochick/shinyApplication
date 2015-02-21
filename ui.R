library(shiny)
library(datasets)

shinyUI(
  
  fluidPage(    
    
    
    titlePanel("Statistics of states in the US"),
    
    sidebarLayout(      
      
      sidebarPanel(
        helpText("Select a category of statistics"),
        selectInput("cat", "Category:", 
                    choices=colnames(state.x77)),
        hr(),
        helpText("Select a division of states"),
        selectInput("div", "Division:",
                    choices=(list('New England', 'Middle Atlantic', 'South Atlantic', 
                      'East South Central', 'West South Central', 'East North Central', 
                      'West North Central', 'Mountain', 'Pacific')),
                    selected='New England'),
        hr(),
        
        p(strong(em("Documentation:",a("Statistics of states in the US",href="readme.html")))),
        p(strong(em("Github repository:",a("ShinyApplication",href="https://github.com/audiochick/shinyApplication.git"))))
        
      ),
      
      
      mainPanel(
        textOutput("desc"),
        plotOutput("phonePlot")  
      )
      
    )
  )
)