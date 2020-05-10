# syntax = docker/dockerfile:experimental

# Descargar imagen de shiny con tidyverse
FROM rocker/shiny-verse:3.6.1

# Librerias de uso general
RUN apt-get update && apt-get install -y --no-install-recommends \
	sudo \
	pandoc \
	pandoc-citeproc \
	libcurl4-gnutls-dev \
	libcairo2-dev \
	libxt-dev \
	libssl-dev \
	libssh2-1-dev \
	libfontconfig1-dev \
	libcairo2-dev \
	libjq-dev \
	libv8-dev \
	libprotobuf-dev \
	libudunits2-dev \
	protobuf-compiler \
	libgdal-dev \
&& rm -rf /var/lib/apt/lists/*

RUN echo "es_ES.UTF-8 UTF-8" >> /etc/locale.gen \
&& locale-gen \
&& export LC_ALL="es_ES.UTF-8" 

# Instalar paquetes de R necesarios 
RUN R -e "install.packages('magrittr', repos='http://cran.us.r-project.org')" \
&& R -e "install.packages('rvest', repos = 'http://cran.us.r-project.org')" \
&& R -e "install.packages('readxl', repos = 'http://cran.us.r-project.org')" \
&& R -e "install.packages('dplyr', repos = 'http://cran.us.r-project.org')" \
&& R -e "install.packages('maps', repos = 'http://cran.us.r-project.org')" \
&& R -e "install.packages('ggplot2', repos = 'http://cran.us.r-project.org')" \
&& R -e "install.packages('reshape2', repos = 'http://cran.us.r-project.org')" \
&& R -e "install.packages('ggiraph', repos = 'http://cran.us.r-project.org')" \
&& R -e "install.packages('RColorBrewer', repos = 'http://cran.us.r-project.org')" \
&& R -e "install.packages('leaflet', repos = 'http://cran.us.r-project.org')" \
&& R -e "install.packages('plotly', repos='http://cran.us.r-project.org')" \
&& R -e "install.packages('geojsonio', repos = 'http://cran.us.r-project.org')" \
&& R -e "install.packages('shiny', repos='http://cran.us.r-project.org')" \
&& R -e "install.packages('shinyWidgets', repos = 'http://cran.us.r-project.org')" \
&& R -e "install.packages('shinydashboard', repos='http://cran.us.r-project.org')" \
&& R -e "install.packages('shinythemes', repos = 'http://cran.us.r-project.org')"

# Version 1.1.0
RUN apt-get update && apt-get install -y --no-install-recommends \
	libsodium-dev \
&& rm -rf /var/lib/apt/lists/*

RUN R -e "install.packages('shinyjs', repos = 'http://cran.us.r-project.org')" \
&& R -e "install.packages('glue', repos = 'http://cran.us.r-project.org')" \
&& R -e "install.packages('remotes', repos = 'http://cran.us.r-project.org')" \
&& R -e "remotes::install_github('cafernandezlo/shinyauthr')"

# Version 1.1.1
RUN R -e "install.packages('tidyr',repos='http://cran.us.r-project.org')"

#Version 1.1.2
RUN R -e "install.packages('tidyselect',repos='http://cran.us.r-project.org')"
