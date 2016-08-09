shinyUI(pageWithSidebar(
        headerPanel("Finding the Closest Prime Number"),
        sidebarPanel(
                numericInput("number", 'The number I would like to evaluate is:', "", min = 0, max = 100000, step = 1),
                h6('positive values between 1 and 100,000 are supported'),
                actionButton("goButton", "Find my Prime!")
        ),
        mainPanel(
                h3('The closest prime number to your entry of:'),
                verbatimTextOutput("inputValue"),
                h4('is the prime number(s)... '),
                verbatimTextOutput("prediction")
        )
)
)