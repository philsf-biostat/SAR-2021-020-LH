# setup -------------------------------------------------------------------
# library(survminer)

ff.col <- "steelblue" # good for single groups scale fill/color brewer
ff.pal <- "Paired"    # good for binary groups scale fill/color brewer

# plots -------------------------------------------------------------------

gg.large <- plot(pwr::pwr.t.test(d = .8, power = .8, sig.level = .05)) + theme_ff()
gg.medium <- plot(pwr::pwr.t.test(d = .5, power = .8, sig.level = .05)) + theme_ff()
gg.small <- plot(pwr::pwr.t.test(d = .2, power = .8, sig.level = .05)) + theme_ff()