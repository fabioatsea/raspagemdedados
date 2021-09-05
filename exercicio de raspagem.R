library(rvest)
library(dplyr)
library(ggplot2)

site <- "https://pt.wikipedia.org/wiki/Lista_dos_100_melhores_filmes_brasileiros_segundo_a_ABRACCINE"

trabalhomat <- read_html(site) %>%
  html_table()

trabalhomat <- trabalhomat[2]

trabalhomat[[1]]


ggplot(trabalhomat[[1]]) +
  aes(x = Ano, y = Gênero) +
  geom_point()
