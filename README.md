# es_covid_base

A docker image to be used on COVID-19-Spain shiny project. [url](https://covid19.citic.udc.es)


![Docker Pulls](https://img.shields.io/docker/pulls/cafernandezlo/es_covid_base.svg)
![Docker Stars](https://img.shields.io/docker/stars/cafernandezlo/es_covid_base.svg)

**A docker image to be used on COVID-19-Spain shiny project**

- [cafernandezlo/es_covid_base](#cafernandezloes_covid_base)
	- [Contributing](#contributing)
	- [Quick Start](#quick-start)
        - [Description](#Description)

## Contributing
If you find this image useful here's how you can help:

- Send a pull request with your kickass new features and bug fixes
- Star this repo!

## Quick Start

Run docker image:

	docker pull cafernandezlo/es_covid_base:latest

## Description

- [rocker/shiny-verse:3.6.1](https://hub.docker.com/r/rocker/shiny-verse) R, shiny image 
- R libraries: magrittr, rvest, readxl, dplyr, maps, ggplot2, reshape2, ggiraph, RColorBrewer, leaflet, plotly, geojsonio, shiny, shinyWidgets, shinydashboard, shinythemes, shinyjs, glue, remotes, shinyauthr, tidyr
- System libraries: sudo, pandoc, pandoc-citeproc, libcurl14-gnutls-dev, libcairo2-dev, libxt-dev, libssl-de, libssh2-1-dev, libfontconfig1-dev, libcairo2-dev, libjq-dev, libv8-dev, libprotobuf-dev, libudunits2-dev, protobuf-compiler, libgdal-dev, libsodium-dev
