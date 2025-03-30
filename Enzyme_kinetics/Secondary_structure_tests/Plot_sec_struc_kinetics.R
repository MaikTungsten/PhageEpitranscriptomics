# Load packages

library(tidyverse)
library(dplyr)
library(reshape2)
library(reshape)
library(ggplot2)
library(gplots)
library(RColorBrewer)
library(pheatmap)
library(stringr)
library(readxl)


# Import data for decapping

df_import <- as.data.frame(read_excel("Quantification_Kinetics.xlsx", sheet = "Data_for_plot"))


# Convert Columns to numeric

df_import$time <- as.numeric(as.character(df_import$Time))
df_import$Mean <- as.numeric(as.character(df_import$Mean))
df_import$SD <- as.numeric(as.character(df_import$SD))


# Group by Enzyme and fit GLMs
fit_results <- df_import %>%
  group_by(Substrate) %>%
  summarize(
    model = list(glm(Mean ~ time, family = gaussian(link = 'log')))
  ) %>%
  mutate(
    coefficients = lapply(model, coef),
    equations = sapply(coefficients, function(coef) {
      paste0("log(y) = ", round(coef[1], 3), " + ", round(coef[2], 3), " * x")
    })
  )

# View the equations
print(paste0("3'-overhang: ", as.character(fit_results$equations[1])))
print(paste0("Blunt: ", as.character(fit_results$equations[2])))
print(paste0("Linear: ", as.character(fit_results$equations[3])))
print(paste0("5'-overhang: ", as.character(fit_results$equations[4])))

# Base plot
p <- ggplot(df_import, aes(x = time, y = Mean, color = Substrate)) +
  geom_point() +
  geom_errorbar(aes(ymin = Mean - SD, ymax = Mean + SD)) +
  scale_x_continuous(limits = c(0, 120), breaks = c(0, 30, 60, 90, 120)) +
  theme_classic() +
  ylab("Relative intensity") +
  xlab("Time [min]") +
  geom_smooth(method = 'glm', formula = y ~ x, method.args = list(family = gaussian(link = 'log')), se = FALSE)

# Add equations to the plot as annotations
p
