ARG BASE_CONTAINER=jupyter/r-notebook

ARG DESCRIPTION="ENA data-ingress dashboard"

ARG VENDOR="EMBL-EBI"

ARG VERSION="1.0"

ARG AUTHOR="Blaise Alako"

ARG EMAIL="blaise@ebi.ac.uk"

FROM ${BASE_CONTAINER}

LABEL Author=${AUTHOR} Email=${EMAIL}

LABEL Description=${DESCRIPTION} Vendor=${VENDOR} Version=${VERSION}

RUN mkdir -p /home/jovyan/work/R

WORKDIR /home/jovyan/work/R

COPY . .

# Install dependencies packages
RUN Rscript install_packages.R

# Render dashboard in the docker-image
RUN R -e "rmarkdown::render('index.Rmd')"
