# NDIS Funding & Participant Analysis (SQL + Power BI)

## Project Overview
This project analyzes publicly available NDIS and ABS datasets to understand how disability support demand and funding allocation vary across time, geography, and demographics.

The analysis focuses on identifying where demand is growing fastest, how funding is distributed, and where potential mismatches exist, enabling more informed decisions around service delivery and resource planning.

---

## Business Context
Understanding how disability support demand evolves is critical for:
- Service providers deciding where to expand  
- Planners and policymakers allocating funding  
- Organizations ensuring equitable service access  

This project simulates a real-world analytics workflow to support those decisions using data.

---

## Signature Insight
In several LGAs, NDIS participant growth is outpacing population growth, indicating increasing service demand that is not purely driven by population changes.

These areas are likely to experience increased pressure on services and funding and represent key targets for strategic planning and investment.

---

## Key Business Questions

### Growth and Forecasting
- How is the number of NDIS participants changing over time?  
- Can future participant growth be projected at the district level?  
- Which LGAs are experiencing the fastest growth?  

### Funding and Distribution
- Which groups receive the highest average budgets?  
- Does funding vary by region, age group, or disability type?  

### Patterns and Anomalies
- Where is participant growth outpacing population growth?  
- Are there areas with unusually high funding relative to participation?  
- How do remoteness and demographics affect funding and participation?  

---

## Tools and Technologies
- SQL for data cleaning, transformation, and joins  
- Power BI for data modeling, DAX measures, and visualization  
- Public datasets from NDIS and ABS  

---

## Data Pipeline
The project follows a structured and reproducible workflow:

Raw data (NDIS and ABS)  
→ SQL cleaning and validation  
→ Aggregation and normalization  
→ Dataset joins (LGA, district, demographics)  
→ Power BI data model  
→ DAX measures and KPIs  
→ Interactive dashboards  

---

## Data Preparation (SQL)

### Datasets Used
- Budgets: annualized funding per participant  
- Participants: counts by LGA, age group, and year  
- Population: baseline population metrics  
- Geographical mapping: LGA to Service District alignment  
- First Nations participants: subgroup analysis by remoteness  

### Key Transformations
- Standardized categorical values across datasets  
- Resolved mismatched granularity (LGA vs district vs remoteness)  
- Aggregated data to enable valid comparisons  
- Excluded incomplete or suppressed values (e.g. "<11")  
- Created analysis-ready tables for reporting  

Example:
Participant growth metrics were derived by joining participant counts with ABS population data and calculating growth rates across time (see Participants.sql and Population.sql).

---

## Dashboard

### Insights
Insights

### Overview
Overview

### Top Metrics
Top Numbers

The report supports filtering by:
- Service District  
- LGA  
- Disability Type  
- Age Group  
- Remoteness  

---

## Key Insights

### Participant Growth
NDIS participant numbers show a clear upward trend, with forecasts indicating continued growth into 2026. Growth is not uniform, with certain LGAs expanding significantly faster than others.

### Growth vs Population Mismatch
Multiple LGAs show participant growth exceeding population growth, indicating increasing demand intensity rather than population-driven change.

### Funding Distribution
Average budgets vary significantly across disability types, age groups, and service districts, suggesting non-uniform allocation patterns.

### Geographic Patterns
Participant distribution is concentrated in specific regions, with some areas combining high growth and high funding levels.

### First Nations and Remoteness
First Nations participant trends vary by remoteness, though analysis is limited by aggregated and suppressed data.

---

## Business Implications
This analysis supports:
- Identifying high-growth areas for service expansion  
- Adjusting funding where demand is accelerating  
- Anticipating future service pressure using forecasts  
- Investigating regional disparities in funding allocation  

---

## Data Considerations
- All data is public, aggregated, and anonymized  
- No personally identifiable information is used  
- Some datasets differ in granularity (LGA vs district vs remoteness)  
- Small populations were excluded where data was suppressed  

Despite these limitations, the dataset supports robust trend analysis.

---

## Analytical Approach
This project demonstrates:
- Multi-source data integration using SQL  
- Handling real-world data quality issues  
- Aligning datasets with different granularities  
- Creating meaningful KPIs such as growth rates and weighted averages  
- Translating raw data into actionable insights  

---

## Future Improvements
- Implement a star schema for improved scalability  
- Add advanced DAX measures  
- Incorporate updated ABS population data  
- Improve First Nations analysis with more granular datasets  
- Simulate automated data pipelines and incremental loads  

---

## Summary
This project demonstrates an end-to-end analytics workflow:
Raw data → SQL transformation → Data modeling → Insight generation → Visualization

It reflects the ability to work with real-world data and translate it into meaningful, decision-supporting insights.

---

## Author
Fred Rinaldo  
Business Analytics | Data Analysis | SQL | Power BI
