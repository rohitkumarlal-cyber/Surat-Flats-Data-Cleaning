## Real Estate Data Analysis using PostgreSQL & Python

##  Project Overview

This project simulates a real-world data analyst workflow using messy real estate data stored in a CSV file.
The goal was to transform raw property data into meaningful business insights that a real estate stakeholder can use for decision-making.

The project follows a **real industry pipeline**:
CSV → Data Cleaning (Python) → Database (PostgreSQL) → Analysis (SQL) → Dashboard Insights.

---

##  Problem Statement

Real estate stakeholders want to understand:

* Which locations are expensive or affordable?
* What type of flats sell the most?
* How price changes with area and BHK size?
* Which locations give the best value for money?

This project answers these business questions using SQL analysis.

---

##  Tech Stack

* **Python (Pandas)** → Data cleaning
* **PostgreSQL (pgAdmin)** → Data storage & analysis
* **SQL** → Business queries
* **Power BI / Tableau (planned)** → Dashboard visualization

---

##  Dataset
Dataset limk -> https://www.kaggle.com/datasets/kunjadiyarohit/flats-uncleaned-dataset

The dataset contains real estate listings with fields such as:

* Property name
* Price
* Price per sqft
* Area (sqft)
* Furnishing status
* Transaction
* Facing / additional attributes

The raw data was messy and required cleaning before analysis.

---

##  Data Cleaning (Python)

Main cleaning steps:

* Removed currency symbols and commas from price
* Standardized area values
* Handled missing and null values
* Fixed column misalignment 
* Exported clean CSV 

---

## Database Workflow (PostgreSQL)

### Step 1 — Raw Table Creation

Data was first imported as **TEXT columns** to avoid import failures.

### Step 2 — Data Type Conversion

Columns were converted to proper data types:

* Price → DOUBLE PRECISION
* Price per sqft →  DOUBLE PRECISION
* Area → DOUBLE PRECISION

This follows the **Raw → Clean → Analytics** pipeline used by data engineers.

---

##  Business Questions Answered

--What is the average price of flats in each location



## Dashboard

A business dashboard will visualize:

* KPI cards (avg price, avg area, total listings)
* Price vs Area analysis
* Location-based pricing insights
* Buyer preference trends

---

## 🚀 What I Learned

This project helped me practice:

* Cleaning messy real-world data
* Importing CSV data into PostgreSQL
* Writing analytical SQL queries
* Designing a dashboard-ready dataset

---

## 🤝 Connect

If you have feedback or suggestions, feel free to connect or open an issue.

⭐ If you found this project helpful, consider giving it a star!
