#!/usr/bin/env Rscript
library('slidify')
slidify('index.Rmd')
publish(user = 'lusy', repo = 'functorsTalk')
