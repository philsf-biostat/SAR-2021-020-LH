# setup -------------------------------------------------------------------
library(philsfmisc)
# library(data.table)
library(tidyverse)
library(readxl)
# library(haven)
# library(foreign)
# library(lubridate)
# library(naniar)
library(labelled)

# data loading ------------------------------------------------------------
set.seed(42)
# data.raw <- tibble(id=gl(2, 10), group = gl(2, 10), outcome = rnorm(20))
data.raw <- read_excel("dataset/il6-circadian.xlsx") %>%
  janitor::clean_names()

# mockup mockup observations added to raw data
data.raw <- data.raw %>%
  mutate(
    group = rep(gl(2, 5), 2),
    outcome = rnorm(20),
  )

Nvar_orig <- data.raw %>% ncol
Nobs_orig <- data.raw %>% nrow

# data cleaning -----------------------------------------------------------

data.raw <- data.raw %>%
  select(
    everything(),
  ) %>%
  rename(
  ) %>%
  mutate(
  ) %>%
  filter(
  )

# data wrangling ----------------------------------------------------------

data.raw <- data.raw %>%
  mutate(
    id = factor(id), # or as.character
  )

# labels ------------------------------------------------------------------

data.raw <- data.raw %>%
  set_variable_labels(
    group = "Study group",
    # outcome = "Study outcome",
  )

# analytical dataset ------------------------------------------------------

analytical <- data.raw %>%
  # select analytic variables
  select(
    # id,
    # exposure,
    # outcome,
    everything(),
  )

Nvar_final <- analytical %>% ncol
Nobs_final <- analytical %>% nrow

# mockup of analytical dataset for SAP and public SAR
analytical_mockup <- tibble( id = c( "1", "2", "3", "...", "N") ) %>%
# analytical_mockup <- tibble( id = c( "1", "2", "3", "...", as.character(Nobs_final) ) ) %>%
  left_join(analytical %>% head(0), by = "id") %>%
  mutate_all(as.character) %>%
  replace(is.na(.), "")
