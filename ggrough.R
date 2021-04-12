library(ggplot2)
count(mtcars, carb) %>%
  ggplot(aes(carb, n)) +
  geom_col() + 
  labs(title="Number of cars by carburator count") + 
  theme_grey(base_size = 16) -> p 
p
library(ggrough)
options <- list(
  Background=list(roughness=8),
  GeomCol=list(fill_style="zigzag", angle_noise=0.5, fill_weight=2))
get_rough_chart(p, options)


devtools::install_github('tidyss/rroughviz')
library(rroughviz)

stemmed_tidy_text_df %>% 
  count(word, sort = TRUE) %>% 
  filter(n > 100) %>% 
  mutate(word = fct_reorder(word, n)) %>% 
  pull(word, n) %>% 
  rough_bar()

