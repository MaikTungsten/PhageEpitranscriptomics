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

df_import <- as.data.frame(read_excel("Desktop/NAR_Revision/Plotting_Fitting/NAD_spike-in_kinetics/Quantification_NAD_spike-in.xlsx", sheet = "Final"))


# Convert Columns to numeric

df_import$Time <- as.numeric(as.character(df_import$Time))
df_import$Mean <- as.numeric(as.character(df_import$Mean))
df_import$SD <- as.numeric(as.character(df_import$SD))

# Plot for NudE.1

df <- df_import[which(df_import$Protein == "NudE.1"),]

# Group by NAD concentration and fit GLMs
fit_results <- df %>%
  group_by(NAD) %>%
  summarize(
    model = list(glm(Mean ~ Time, family = gaussian(link = 'log')))
  ) %>%
  mutate(
    coefficients = lapply(model, coef),
    equations = sapply(coefficients, function(coef) {
      paste0("log(y) = ", round(coef[1], 3), " + ", round(coef[2], 3), " * x")
    })
  )

# View the equations
print(paste0("0xNAD_NudE.1: ", as.character(fit_results$equations[1])))
print(paste0("1500xNAD_NudE.1: ", as.character(fit_results$equations[2])))
print(paste0("700xNAD_NudE.1: ", as.character(fit_results$equations[3])))

ggplot(df, aes(x = Time, y = Mean, color = NAD))+
  geom_point()+
  geom_errorbar(aes(ymin = Mean - SD, ymax = Mean + SD))+
  scale_x_continuous(limits = c(0,120), breaks = c(0,30,60,90,120))+
  theme_classic()+
  ylab("Relative intensity")+
  xlab("Time [min]")+
  ggtitle("NudE.1")+
  geom_smooth(method = 'glm', formula = y ~ x, method.args = list(family = gaussian(link = 'log')), se = FALSE)

# Plot for NudC

df <- df_import[which(df_import$Protein == "NudC"),]

# Group by NAD concentration and fit GLMs
fit_results <- df %>%
  group_by(NAD) %>%
  summarize(
    model = list(glm(Mean ~ Time, family = gaussian(link = 'log')))
  ) %>%
  mutate(
    coefficients = lapply(model, coef),
    equations = sapply(coefficients, function(coef) {
      paste0("log(y) = ", round(coef[1], 3), " + ", round(coef[2], 3), " * x")
    })
  )

# View the equations
print(paste0("0xNAD_NudC: ", as.character(fit_results$equations[1])))
print(paste0("1500xNAD_NudC: ", as.character(fit_results$equations[2])))
print(paste0("700xNAD_NudC: ", as.character(fit_results$equations[3])))

ggplot(df, aes(x = Time, y = Mean, color = NAD))+
  geom_point()+
  geom_errorbar(aes(ymin = Mean - SD, ymax = Mean + SD))+
  scale_x_continuous(limits = c(0,120), breaks = c(0,30,60,90,120))+
  theme_classic()+
  ylab("Relative intensity")+
  xlab("Time [min]")+
  ggtitle("NudC")+
  geom_smooth(method = 'glm', formula = y ~ x, method.args = list(family = gaussian(link = 'log')), se = FALSE)



#### New plot for R1, R2, R6 with R1 t30 NudE.1 0xNAD removed due to false sampling ####

# Import data for decapping

df_import <- as.data.frame(read_excel("Quantification_NAD_spike-in.xlsx", sheet = "Final_R1_R2_R6"))


# Convert Columns to numeric

df_import$Time <- as.numeric(as.character(df_import$Time))
df_import$Mean <- as.numeric(as.character(df_import$Mean))
df_import$SD <- as.numeric(as.character(df_import$SD))

# Plot for NudE.1

df <- df_import[which(df_import$Protein == "NudE.1"),]

# Group by NAD concentration and fit GLMs
fit_results <- df %>%
  group_by(NAD) %>%
  summarize(
    model = list(glm(Mean ~ Time, family = gaussian(link = 'log')))
  ) %>%
  mutate(
    coefficients = lapply(model, coef),
    equations = sapply(coefficients, function(coef) {
      paste0("log(y) = ", round(coef[1], 3), " + ", round(coef[2], 3), " * x")
    })
  )

# View the equations
print(paste0("0xNAD_NudE.1: ", as.character(fit_results$equations[1])))
print(paste0("1500xNAD_NudE.1: ", as.character(fit_results$equations[2])))
print(paste0("700xNAD_NudE.1: ", as.character(fit_results$equations[3])))

ggplot(df, aes(x = Time, y = Mean, color = NAD))+
  geom_point()+
  geom_errorbar(aes(ymin = Mean - SD, ymax = Mean + SD))+
  scale_x_continuous(limits = c(0,120), breaks = c(0,30,60,90,120))+
  theme_classic()+
  ylab("Relative intensity")+
  xlab("Time [min]")+
  ggtitle("NudE.1")+
  geom_smooth(method = 'glm', formula = y ~ x, method.args = list(family = gaussian(link = 'log')), se = FALSE)

# Plot for NudC

df <- df_import[which(df_import$Protein == "NudC"),]

# Group by NAD concentration and fit GLMs
fit_results <- df %>%
  group_by(NAD) %>%
  summarize(
    model = list(glm(Mean ~ Time, family = gaussian(link = 'log')))
  ) %>%
  mutate(
    coefficients = lapply(model, coef),
    equations = sapply(coefficients, function(coef) {
      paste0("log(y) = ", round(coef[1], 3), " + ", round(coef[2], 3), " * x")
    })
  )

# View the equations
print(paste0("0xNAD_NudC: ", as.character(fit_results$equations[1])))
print(paste0("1500xNAD_NudC: ", as.character(fit_results$equations[2])))
print(paste0("700xNAD_NudC: ", as.character(fit_results$equations[3])))

ggplot(df, aes(x = Time, y = Mean, color = NAD))+
  geom_point()+
  geom_errorbar(aes(ymin = Mean - SD, ymax = Mean + SD))+
  scale_x_continuous(limits = c(0,120), breaks = c(0,30,60,90,120))+
  scale_y_continuous(breaks = c(0,0.5,1.0))+
  theme_classic()+
  ylab("Relative intensity")+
  xlab("Time [min]")+
  ggtitle("NudC")+
  geom_smooth(method = 'glm', formula = y ~ x, method.args = list(family = gaussian(link = 'log')), se = FALSE)




