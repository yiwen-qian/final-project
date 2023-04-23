IEOR 4501 Final Project 
====
Understanding Hired Rides in NYC
---------
##### Creators: Joy Ren, Yiwen Qian 
#####           UNIS: [jr4154, yq2346]

## About the Project:
*   Introduction:

    The clash between taxis and ride-hailing companies like Uber has been debated for years. In March 2022, Uber announced that it would allow users in New York City to hire yellow taxis from its app. In this project, we will analyze hired-ride trip data from Uber and NYC Yellow Cab from January 2009 through June 2015, and join it with local historical weather data. The goal is to identify trends and patterns to help us understand the dynamics between taxis and ride-hailing companies.

*   Datasets:

    We will use three datasets for this project. The first dataset is a sample of Uber rides from 01-2009 through 06-2015, which can be downloaded from [here](https://drive.google.com/file/d/1F7D82w1D5151GXCR6BTEk7mNQ_YnPNDk/view). The second dataset is historical weather data for the same period, which can be found in [this](https://drive.google.com/drive/folders/1I_Cj3RFHRGcQjb5Gas06buqRbKodIwKC?usp=sharing) folder. The third dataset is Yellow Taxi trip data, which can be downloaded from [here](https://www1.nyc.gov/site/tlc/about/tlc-trip-record-data.page). We will also use the Taxi Zone Shapefile (PARQUET) file, which can be found in the NYC Taxi record data site.

*   Methodology:

    We will first download and clean the data, and then store it in an SQLite database by Jupyter Notebook. We will use SQL queries to answer specific questions and create visualizations to support our findings. We will also join the trip data with weather data to see if there is any correlation between weather patterns and hired-ride trips.

*   Conclusion:

    By analyzing hired-ride trip data from Uber and NYC Yellow Taxi from January 2009 through June 2015, and joining it with local historical weather data, we can identify trends and patterns that can help us understand the dynamics between taxis and ride-hailing companies. The project will provide SQL queries and visualizations to answer specific questions and support our findings.
