FROM jupyter/r-notebook

LABEL Author="Blaise Alako" Email="blaise@ebi.ac.uk"

LABEL Description="ENA data-ingress dashboard" Vendor="EMBL-EBI" Version="1.0"

RUN mkdir -p /home/jovyan/work/R

WORKDIR /home/jovyan/work/R

COPY . .

# Install dependencies packages
RUN Rscript install_packages.R

# Render dashboard in the docker-image
RUN R -e "rmarkdown::render('index.Rmd')"
