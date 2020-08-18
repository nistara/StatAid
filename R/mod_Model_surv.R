#' Model_surv UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_Model_surv_ui <- function(id){
  ns <- NS(id)
  tagList(
    tabsetPanel(id = "Kaplan_Meir",
                tabPanel("Tableau",
                         column(10,
                                DT::DTOutput(ns("Table_reg"))
                         ),
                         column(2,
                                absolutePanel(width = 200, right = 20, draggable = T,
                                              style = "opacity: 0.85",
                                              wellPanel(
                                                selectInput(ns("y_var"), label =("Y variable (outcome/to predict)"),
                                                            multiple = F,selected = NULL,
                                                            ""),
                                                selectInput(ns("x_var"), label =("X Variable(s)"),
                                                            multiple = T, selected = "Toutes",
                                                            choices=c("Toutes")),
                                                radioButtons(ns("model"), label = ("Model"),
                                                             choices = list("Linear" = "lm"),
                                                             selected = "lm"),
                                                actionButton(ns("Run_analysis"),"Lancer l'analyse")

                                              )
                                )#Absolutepanel
                         )),#Column & tabpanel

                tabPanel("Graphique",
                         column(10,
                                plotOutput(ns("Graph_reg"))
                         ),
                         column(2)
                )#TabPanel
    )#Tabset panel
  
  )#Taglist
}
    
#' Model_surv Server Function
#'
#' @noRd 
mod_Model_surv_server <- function(input, output, session, r){
  ns <- session$ns
 
}
    
## To be copied in the UI
# mod_Model_surv_ui("Model_surv_ui_1")
    
## To be copied in the server
# callModule(mod_Model_surv_server, "Model_surv_ui_1")
 