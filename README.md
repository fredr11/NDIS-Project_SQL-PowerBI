# NDIS Reporting Project (SQL + Power BI)

A data analysis project exploring NDIS budget and participant numbers across Western Australia. Built using SQL (SSMS) for data cleanup and transformation, and Power BI for visualization.

### Report Link: (Coming Soon) 

## Project Objective

This report aims to provide insight into NDIS funding and NDIS participant numbers in Western Australia between 2023 and 2024. Specifically, it helps answer the following questions:
    
  1. Which age groups and disability types receive the most funding, and how does this vary across districts?
  2. What are the most common disability types in WA, and how do they differ in prevalence versus funding?
  3. How are participant numbers and budgets changing across regions and over time?
  4. Which LGAs or service districts stand out as outliers in participant numbers or funding per capita?
  5. How does remoteness or First Nations status intersect with disability support and budget allocation?

The central aim of this analysis is to understand how support needs and resource allocation vary across regions, demographics, and time. This includes uncovering trends, outliers, and potential gaps in the provision of disability services across WA.

A real-world use case could be for an NDIS service provider seeking data-driven insights to expand their services and target high-need areas.

## Tools Used

- SQL Server Management Studio (SSMS)
- Power BI
- Microsoft Excel (for initial data review)

## Dataset Description

The dataset combines publicly available data from the NDIS and the Australian Bureau of Statistics. It includes::

- Geographical Data
    - Correspondence between Mesh Blocks and Local Government Areas
    - Correspondence between Local Government Areas and Service Districts
    - Correspondence between Mesh Blocks and Statistical Areas
    - Correspondence between Mesh Blocks and Post Codes
    - Correspondence Between Suburb Names and Remoteness Level based on the Modified Monash Model
- Budgets
    - 2023 Count and Budget of NDIS Participants by Service District, Age Group, and Disability Type
    - 2024 Count and Budget of NDIS Participants by Service District, Age Group, and Disability Type
- Count of NDIS Participants by Local Government Areas
- Count and Budget of First Nations NDIS Participants by State and Remoteness of Location
- Count of Population in all Local Government Areas by Age Group and Gender

All data was already anonymized and has been further aggregated.

## Data Preparation Highlights

**In SQL (SSMS):**
- Cleaned and joined geographical, budget, participant, and population tables
- Filtered to WA records and aligned naming conventions across datasets
- Aggregated and reshaped data for analysis across time, region, and disability type

**In Power BI:**
- Built calculated columns and measures for budget per participant, growth rates, and distribution patterns
- Normalized classifications (e.g. age groups, remoteness levels) for consistency
- Designed interactive dashboards to enable slicing by location, year, and demographics

## Dashboards
**Top Numbers**
![Top Numbers](https://github.com/user-attachments/assets/ba6d3ad3-7631-4e57-885e-8df19cde8b8e)
**Overview**
![Overview](https://github.com/user-attachments/assets/f18da841-09d6-48a7-b967-ae09eef16a63)
**Insights**
![Insights](https://github.com/user-attachments/assets/17060933-1e19-4ae9-8fb9-5643da841b6c)

## Key Takeaways
- In both 2023 and 2024, participants aged 55–64 received the highest average funding across WA. The Central North Metro district had the highest overall budgets.
- Autism, psychological disabilities, and intellectual disabilities are the primary disabilities affecting most West Australians across all age groups. It is cerebral palsy, spinal cord injury, and other neurological disabilities that get the most funding however.
- Of all districts, South Metro stands out with a high number of NDIS participants but a relatively low budget per capita. The opposite is true for Goldfields-Esperance and Kimberly-Pilbara, where NDIS participant numbers are much lower but funding per capita is especially high.
- Participant numbers are rising steadily across WA, particularly in LGAs with populations under 5,000, where disability rates are growing faster than general population growth.

## Access
- SQL Queries: See the `/SQL` folder
- Power BI Report: `/Power BI` folder

## About Me
Hi, I'm Fred — a data-driven finance professional based in Perth, WA, transitioning into analytics.  
This project reflects real-world insights based on the sector knowledge I have my current role.

[LinkedIn](https://linkedin.com/in/fred-rinaldo)
