# Load 
library(dplyr)
library(readr)

# Read in
confirmed_df <- read_csv("covid_confirmed_usafacts.csv")
deaths_df <- read_csv("covid_deaths_usafacts.csv")

# Filter data: find 2020 date columns and remove unallocated counties
clean_covid_data <- function(df) {
  date_cols_2020 <- grep("^2020-", names(df), value = TRUE)
  
  # Filter data: keep only 2020 columns and remove unallocated counties
  df_clean <- df %>%
    filter(!grepl("Unassigned|Unallocated", `County Name`, ignore.case = TRUE)) %>%
    select(countyFIPS, `County Name`, State, StateFIPS, all_of(date_cols_2020))
  
  return(df_clean)
}

# Apply cleaning function
confirmed_2020 <- clean_covid_data(confirmed_df)
deaths_2020 <- clean_covid_data(deaths_df)

# View
head(confirmed_2020)
tail(confirmed_2020)
head(deaths_2020)
tail(deaths_2020)
