# EMBL-EBI SARS-CoV2 data-ingress dashboad
An interactive dashboard to visualize SARS-CoV2 data submission to the EMBL-EBI-ENA
![alt text](fig/docker_logo_horizontal.png)

### Prerequisite.

The open-source software Docker must be pre-installed for the proper functioning of the dashboard:  
[Follow instruction for setting up docker in your machine](https://github.com/EBI-COMMUNITY/ebi-selecta#SELECTA-framework-Docker-Compose-version)

### Get and build the ena-data-ingress dashboard image.
#### 1. Step 1

```
git clone https://github.com/alakob/ena-data-ingress-dashboard.git \
    && cd ena-data-ingress-dashboard \
    && docker build --tag sarscov2 .
```

### Render the dashboard

#### 2. Step 2

```
docker run --rm -v "$PWD":/home/jovyan/work/R sarscov2:latest R -e "rmarkdown::render('index.Rmd')"
```

### Open the dashboard (index.html) with a web browser

Tested with Mozilla Firefox, Google Chrome

