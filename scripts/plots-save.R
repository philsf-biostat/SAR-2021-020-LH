# setup -------------------------------------------------------------------
height <- 12
width <- 12
units <- "cm"

# publication ready tables ------------------------------------------------

# Don't need to version these files on git
# tab_inf %>%
#   as_gt() %>%
#   as_rtf() %>%
#   writeLines(con = "report/SAR-2021-020-LH-v01-T2.rtf")

# save plots --------------------------------------------------------------

# ggsave(filename = "figures/outcome.png", plot = gg.outcome, height = height, width = width, units = units)

ggsave(filename = "figures/large.png", plot = gg.large, height = height, width = width, units = units)
ggsave(filename = "figures/medium.png", plot = gg.medium, height = height, width = width, units = units)
ggsave(filename = "figures/small.png", plot = gg.small, height = height, width = width, units = units)
