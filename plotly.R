#this produces
source("https://plot.ly/~low-decarie/8")

#start by loading plotly
library(plotly)

#create your plotly function
p <- plotly(username="your_username", key="your_key")


#Create the hexagone map
trace1 <- list(x=map(regions="canada")$x, 
               y=map(regions="canada")$y)

#Create the plotable city data
trace2 <- list(x= canada.cities$long, 
               y=canada.cities$lat,
               text=canada.cities$name,
               type="scatter",
               mode="markers",
               marker=list("size"=sqrt(canada.cities$pop/max(canada.cities$pop))*100,
                           "opacity"=0.5))

#Plot the two traces
response = p$plotly(trace1,trace2)


#Access your plot.ly plot
browseURL(response$url)
