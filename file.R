library(tidyverse)
library(highcharter)


View(data[1:100,])
colnames(data)
table(data$Country_Code)
table(data$Country_Name)
table(data$Year)
table(data$Attribute_Description)
table(data$Unit_Description)
table(data$Value)
table(data$Seen_On)

filtered_data_time_chart <- data %>% 
  filter(
    Commodity_Description == "Almonds, Shelled Basis",
    Attribute_Description == "Exports",
    Country_Name == "Greece"
  ) %>%
  arrange(Year, Value)
filtered_data_time_chart


hchart(filtered_data,
       "column",
       hcaes(x = "Year", y = "Value"))



filtered_data_pie_chart <- data %>% 
  filter(
    Country_Name == "Greece",
    Attribute_Description == "Imports",
    Year == "1984"
  )


hchart(
  filtered_data_pie_chart,
  "pie",
  hcaes(x = "Commodity_Description", y = "Value")
)

