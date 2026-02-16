# The Rhamphotheca

A data science project focused on collecting, storing, and analyzing biodiversity data from animal species.

At first, it will focus on data extracted from WikiAves, a platform containing georeferenced records of bird observations across Brazil.

Later, data sources from other locations may be included as well.

The long-term goal is to build a complete data pipeline — from automated data extraction to statistical analysis and interactive dashboards — to support the study of species distribution, population trends, and biodiversity patterns.


### Status - Early Development

Data extraction module implemented, database and web server in progress.



## 1. Tools

- **Python:** the main programming language used for collecting and analyzing data.
- **CustomTkinter:** library for creating a graphical interface that allows user-initiated data extraction
- **PostgreSQL:** relational database for storing data
- **Flask:** backend web server used to host interactive dashboards to external users



## 2. Current Functionalities

- Graphical interface allowing users to request data extraction of selected WikiAves pages
- Extraction of data from WikiAves URLs

## 3. Planned Features


### 3.1. Data Infrastructure

- Central PostgreSQL database
- Scraping logs and monitoring

### 3.2. Visualization

- Interactive distribution maps
- Temporal dashboards
- Spatial biodiversity layers
