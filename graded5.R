# graded5.R
# Tiffany Agosto-Martinez
# 10/01/2026
# display function parameter examples in a data frame

# Create the data frame (be careful with the quotes!)
arg_matching <- data.frame(
  "Type" = c("Partial", "Positional", "Exact"),
  "Example" = c(
    paste0(
      "cat(c('A', 'B', 'C'), c('D', 'E', 'F'), sep ='-', fill = True)"
    ),
    paste0(
      "cat(c('A', 'B', 'C'), c('D', 'E', 'F'), se ='-', fi = True)"
    ),
    paste0(
      "cat(c('A', 'B', 'C'), c('D', 'E', 'F'))"
    )
  )
)

# Write to CSV file
write.csv(x = arg_matching, file = 'spreadsheetfile.csv', row.names = FALSE)

# Delete from global environment
rm(arg_matching)

# Read CSV file to recreate data frame
arg_matching <- read.csv(file = 'spreadsheetfile.csv')

# Display the dataframe; use View for readability
View(arg_matching)