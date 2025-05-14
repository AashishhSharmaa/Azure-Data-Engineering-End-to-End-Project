# **Azure Data Engineering End-to-End Pipeline Project**
![1  Main](https://github.com/user-attachments/assets/c3ae66a9-1257-4d64-b5ae-2f217b6b7963)

## **1. Introduction**

This project demonstrates an end-to-end Azure Data Engineering pipeline that ingests, transforms, stores, and visualizes data using multiple Azure services. It covers two core areas:
1.	**Data Engineering** – Building a complete pipeline from the data source to Azure Synapse.
2.	**Data Analytics** – Writing SQL queries to extract insights and visualizing them through a Power BI dashboard.

## **2. Objective**

The objective of this project is to develop a complete data pipeline using various technologies such as GitHub, Azure Data Factory, Azure Data Lake Storage, Azure Databricks, Azure Synapse Analytics, and Power BI. The goal is to demonstrate a seamless integration of tools and services to provide a full data solution—from ingestion to analytics.

## 3. Data Used

The dataset used in this project is based on the Tokyo Olympics 2021. It includes the following five CSV files stored on GitHub:
•	**Athletes**

•	**Coaches**

•	**Entries by Gender**

•	**Medals**

•	**Teams**

**Source:** Kaggle - Tokyo Olympics 2021 Dataset
This dataset contains information on over 11,000 athletes, 47 disciplines, and 743 teams. It includes athlete names, their disciplines, gender, country, and coach details.

## **4. Services & Technologies Used**

The following services and technologies were utilized in this project:

•	Version Control: GitHub

•	Cloud Platform: Microsoft Azure

•	Data Ingestion: Azure Data Factory

•	Data Storage: Azure Data Lake Storage Gen2

•	Data Transformation: Azure Databricks with Apache Spark (PySpark)

•	Authentication & Access: Azure App Registration & Key Vault

•	Data Warehousing: Azure Synapse Analytics

•	Visualization: Power BI

## **5. Languages Used**

•	Python (PySpark) for data transformation

•	SQL for querying insights from Synapse

•	DAX in Power BI for data modeling and visualization

## **6. Data Pipeline Architecture**

![2  Data Pipeline Architecture](https://github.com/user-attachments/assets/dc9d8602-55a9-4aa1-b0f4-7ccf30f71fc3)


The flow of the pipeline is as follows:

1.	Data Source (GitHub): Stores the raw CSV datasets.
2.	Azure Data Factory: Ingests files from GitHub and moves them to the Raw Data Lake container.
3.	Azure Databricks: Pulls data from the Raw Data Lake, performs transformations using PySpark, and stores the results into the Transformed Data Lake.
4.	Azure Synapse Analytics: Imports the cleaned datasets from the Transformed Data Lake and creates structured tables. SQL queries are used to extract insights.
5.	Power BI: Connects to Synapse and visualizes the insights in an interactive dashboard.

## **7. Stage-by-Stage Breakdown**

### **a. Initial Setup**

•	Created a Resource Group named “Azure-DE-Project”.

![3  Resource Gorup](https://github.com/user-attachments/assets/8c949d70-8866-4cdb-aa5c-e397d6663144)

•	Set up a Storage Account “adeprojectdata” with two containers:

![4  Storage Accountt](https://github.com/user-attachments/assets/ef779936-53e8-40a5-8102-1f9345fe737c)

o	raw – for raw CSV ingestion

o	transformed – for storing cleaned datasets

![5  Data Lakes](https://github.com/user-attachments/assets/043d5c71-9bb4-424b-be17-3ecbb20c353c)


