# Paquetes
library(tidyverse) 
# library(ggdist) 
library(ggdendro) 
library(dendextend) 
library(FactoMineR) 
library(factoextra) 
library(agricolae) 
library(huxtable) 
library(PMCMRplus)
library(DescTools)
conflicted::conflict_prefer("filter", "dplyr")
conflicted::conflict_prefer("select", "dplyr")
# conflicted::conflict_prefer("correlation", "correlation")


# Git config
# usethis::use_git_config(user.name = "juanchiem", user.email = "edwardsmolina@gmail.com")
# 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
# install.packages("namer")

# ggplot
source(here::here("shift_legend.R"))
theme_biplot <-  theme_minimal(12) +
  theme(axis.text.y = element_blank(),
        panel.grid.major.y = element_blank(),
        panel.grid.minor.y = element_blank(),
        panel.grid.major.x = element_blank(), 
        panel.grid.minor.x = element_blank(), 
        panel.background = element_rect(fill = "white"),
        plot.background = element_rect(fill = "white"))

theme_dendro <- theme_minimal(12) + 
  theme(axis.text.y = element_blank(),
        panel.grid.major.y = element_blank(),
        panel.grid.minor.y = element_blank(), 
        panel.background = element_rect(fill = "white"),
        plot.background = element_rect(fill = "white"))

theme_uni <- theme_minimal(12) + 
  theme(panel.background = element_rect(fill = "white"),
        plot.background = element_rect(fill = "white"))


theme_tricho <- theme_bw() +
  theme(panel.grid.minor.x = element_blank(),
        panel.grid.minor.y = element_blank())


options(scipen=999)

# Define function to calculate IQR at given quantiles
iqr = function(z, lower = 0.25, upper = 0.75) {
  data.frame(
    y = median(z),
    ymin = quantile(z, lower),
    ymax = quantile(z, upper)
  )
}

# Data

load("data/raw.rds")

# pacman::p_load(googlesheets4)
# url <- "https://docs.google.com/spreadsheets/d/1Qz-2UoqgL7Tiuz_04sY0tEdMdLqAzqr7QOg2Gg9jK_c/edit?usp=sharing" 
# gs4_deauth()
# excel <- url %>% gs4_get()
# excel %>% read_sheet()-> raw  
# save(raw, file = "data/raw.rds")
# raw %>% 
#   arrange(-ABA) %>% data.frame %>% head

# chunks names
# library(namer)
# name_chunks(here::here("index.qmd"))
# name_chunks(here::here("morfo.qmd"))

