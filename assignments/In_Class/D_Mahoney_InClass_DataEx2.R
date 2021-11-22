require(here)
png(filename = here("basic_boxplott3.png"), width = 800, height = 600)
coplot(species ~ flipper_length_mm | island, data = penguins)
dev.off()

boxplot(penguins$bill_depth_mm)
boxplot(bill_depth_mm ~ sex, data = penguins)
hist(bill_depth_mm, body_mass_g)