# **Azure Data Engineering End-to-End ETL Pipeline Project**
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

### **b. GitHub – Data Source**

The Olympic dataset is hosted in CSV format on GitHub.

![6  Github Rep Image](https://github.com/user-attachments/assets/eb888d09-453d-4e36-8a9c-644b7f6b4140)

### **c. Azure Data Factory – Data Ingestion**

•	Created a Data Factory resource named "adeproject-adf".

•	Built a pipeline using the Author tab, which:

o	Reads CSV files from GitHub using HTTP connector

![7  ADF ETL workflow](https://github.com/user-attachments/assets/bd0002ee-6973-444a-93cf-d250d47133cb)

o	Writes them to the Raw Data Lake container

![8  Dump - Raw DL](https://github.com/user-attachments/assets/6dda409c-66ce-4191-a8ec-84f731fa92aa)

### **d. Azure Databricks – Data Transformation**

•	Created a Databricks resource "adeproject-databricks".

•	Created a compute cluster and a notebook using PySpark.

![9  Databricks - Compute](https://github.com/user-attachments/assets/bdcebf8d-951d-4814-8e72-48fa66080eda)

•	Registered an Azure App (App01) and used Azure Key Vault to store authentication secrets.

•	Mounted the Data Lake containers into Databricks using the secrets.

![10  Config + Mount  DB-Adls](https://github.com/user-attachments/assets/ad02a558-ce52-4edd-96d2-d1b10194656b)

•	Transformed the datasets using PySpark (e.g., filtering nulls, formatting, joins).

![11  Databricks - Transformation](https://github.com/user-attachments/assets/71deb669-5abd-4378-b78a-2150ad89737e)

•	Saved the transformed files into the Transformed Data Lake.

![12  Databricks - Dump into TRFM Data Lake](https://github.com/user-attachments/assets/f5581db2-ed97-4447-b575-e4a3c25403db)

• Transformed Data Lake container
![12 1  Transform Data Lake](https://github.com/user-attachments/assets/85e6b702-9ed8-4d32-99a5-280f41cc18e3)

### **e. Azure Synapse Analytics – Data Warehousing & Querying**

•	Created a Synapse workspace "adeproject-azsynapse".

•	Created a dedicated SQL pool and imported the transformed datasets into structured tables:
o	Athletes, Coaches, EntriesGender, Medals, Teams

![13  Azure Sy - Database  pull from trfm dl](https://github.com/user-attachments/assets/77348cce-cf64-415e-93d6-741c9be2bb36)

•	Wrote SQL queries to extract meaningful insights from the datasets.

![14  Azure Sy - SQL query](https://github.com/user-attachments/assets/2c41368c-ec25-4a0c-8578-c08929518597)

### **f. Power BI – Visualization**

•	Connected Power BI to Azure Synapse using the Azure SQL Database connector.

•	Imported the tables and created interactive dashboards:

![15  Power BI Dashboard](https://github.com/user-attachments/assets/7a50d380-278c-41e9-b80d-39b8b7097aed)

### **8. Conclusion**

This project successfully demonstrates the implementation of a full data engineering and analytics pipeline using Azure services. It covers every stage of the data lifecycle—from ingestion to transformation, querying, and visualization—highlighting how Azure tools can be integrated for scalable data solutions.

### **Key Skills Developed**

•	Building end-to-end pipelines using Azure Data Factory

•	Performing large-scale transformations using Databricks + PySpark

•	Managing secure access with App Registration & Key Vault

•	Querying structured data in Azure Synapse

•	Creating dashboards with Power BI & DAX

•	Integrating cloud services and automating data flows

