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

# Instalar paquetes de R necesarios 
RUN R -e "install.packages('magrittr', repos='http://cran.us.r-project.org')"
RUN R -e "install.packages('rvest', repos = 'http://cran.us.r-project.org')"
RUN R -e "install.packages('readxl', repos = 'http://cran.us.r-project.org')"
RUN R -e "install.packages('dplyr', repos = 'http://cran.us.r-project.org')"
RUN R -e "install.packages('maps', repos = 'http://cran.us.r-project.org')"
RUN R -e "install.packages('ggplot2', repos = 'http://cran.us.r-project.org')"
RUN R -e "install.packages('reshape2', repos = 'http://cran.us.r-project.org')"
RUN R -e "install.packages('ggiraph', repos = 'http://cran.us.r-project.org')"
RUN R -e "install.packages('RColorBrewer', repos = 'http://cran.us.r-project.org')"
RUN R -e "install.packages('leaflet', repos = 'http://cran.us.r-project.org')"
RUN R -e "install.packages('plotly', repos='http://cran.us.r-project.org')"
RUN R -e "install.packages('geojsonio', repos = 'http://cran.us.r-project.org')"
RUN R -e "install.packages('shiny', repos='http://cran.us.r-project.org')"
RUN R -e "install.packages('shinyWidgets', repos = 'http://cran.us.r-project.org')"
RUN R -e "install.packages('shinydashboard', repos='http://cran.us.r-project.org')"
RUN R -e "install.packages('shinythemes', repos = 'http://cran.us.r-project.org')"

# Copia la app y dependencias a la image
COPY app.R /srv/shiny-server/
COPY ms_data_processing.R /srv/shiny-server/
COPY styles.css /srv/shiny-server/
COPY input_data /srv/shiny-server/input_data
COPY rsconnect /srv/shiny-server/rsconnect
COPY www /srv/shiny-server/www

# Selecciona puerto
EXPOSE 3838

# Permisos
RUN sudo chown -R shiny:shiny /srv/shiny-server

# Ejecutar app
CMD ["/usr/bin/shiny-server.sh"]
