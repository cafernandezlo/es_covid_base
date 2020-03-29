# Descargar imagen de shiny con tidyverse
FROM rocker/shiny-verse:latest

# Librerias de uso general
RUN apt-get update && apt-get install -y \
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
	libgdal-dev

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
