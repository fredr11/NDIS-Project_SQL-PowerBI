# NDIS Demand, Funding & Service Planning Analytics

## Executive Summary

This project analyzes National Disability Insurance Scheme (NDIS) participant and funding trends across Australia using publicly available datasets from the NDIS and the Australian Bureau of Statistics (ABS).

The objective was to identify emerging demand patterns, funding distribution trends, and geographic areas where service needs may be increasing faster than population growth.

Using SQL for data preparation and Power BI for visualization, the project combines multiple datasets into a unified analytical model that supports strategic planning, resource allocation, and service expansion decisions.

---

## Business Problem

NDIS service providers require visibility into where disability support demand is growing and whether funding allocations are keeping pace with participant needs.

Without integrated reporting, it can be difficult to identify:

- High-growth service areas
- Emerging funding pressures
- Regional disparities in participant support
- Long-term demand trends
- Priority locations for future investment

This project demonstrates how data analytics can support evidence-based planning and decision-making.

---

## Key Finding

Several Local Government Areas (LGA) are experiencing NDIS participant growth that exceeds underlying population growth.

This suggests increasing service demand intensity rather than simple population expansion and may indicate future pressure on local service capacity, workforce availability, and funding requirements. Consequently, these areas may be fertile ground for NDIS service providers to expand their supports to.

---

## Project Objectives

The analysis was designed to answer the following questions:

### Demand & Growth

- How are NDIS participant numbers changing over time?
- Which regions are experiencing the fastest participant growth?
- Can future demand be forecast using historical trends?

### Funding Analysis

- Which participant groups receive the highest average funding allocations?
- How does funding vary across age groups, disability types, and regions?
- Are funding patterns consistent across Australia?

### Geographic Analysis

- Where is participant growth outpacing population growth?
- Which areas may require additional service capacity?
- How does remoteness affect participation and funding?

### Equity & Inclusion

- How do participation patterns vary for First Nations communities?
- What is the correlation between remoteness and First Nations NDIS participants?

---

## Data Sources

The project integrates ten public datasets from multiple government sources.

| Dataset | Description | Source |
|----------|----------|----------|
| LGA_To_Service_District | Correspondence between Local Government Areas and NDIS Service Districts | NDIS |
| MB_2021_AUST | Correspondence between Mesh Blocks and Statistical Areas | ABS |
| LGA_2024_AUST | Correspondence between Mesh Blocks and Local Government Areas | ABS |
| NDIS_First_Nations_Participants | Count and budget of First Nations NDIS participants by state and remoteness | NDIS |
| NDIS_Participant_Budgets_2023 | Participant counts and budgets by service district, age group, and disability type | NDIS |
| NDIS_Participant_Budgets_2024 | Participant counts and budgets by service district, age group, and disability type | NDIS |
| Participants_By_LGA | NDIS participant counts by Local Government Area | NDIS |
| Population_By_LGA | Population counts by Local Government Area and demographic characteristics | ABS |
| Modified_Monash_Model | Remoteness classification by suburb and locality | Department of Health |
| MB_To_Post_Code | Correspondence between Mesh Blocks and postcodes | ABS |

All datasets are publicly available, aggregated, and anonymized.

---

## Technical Stack

- SQL
- Power BI
- DAX
- Data Modeling
- Data Validation
- Data Visualization

---


## Skills Demonstrated

### Analytics

- Exploratory Data Analysis (EDA)
- Trend Analysis
- Forecasting
- KPI Development
- Business Intelligence

### Data Engineering

- Data Cleaning
- Data Validation
- Data Integration
- Data Transformation
- Data Standardization

### Technical

- SQL
- Power BI
- DAX
- Data Modeling
- Data Visualization

### Business

- Stakeholder-Oriented Reporting
- Strategic Planning Support
- Data Storytelling
- Insight Generation
- Geographic Analysis

---

## Data Architecture

The Power BI model was built from ten source datasets that were cleaned, standardized, and consolidated into five reporting-ready datasets.

### Source Datasets

| Dataset | Purpose |
|----------|----------|
| NDIS_Participant_Budgets_2023 | Participant counts and budgets by disability type, age group, and service district |
| NDIS_Participant_Budgets_2024 | Participant counts and budgets by disability type, age group, and service district |
| Participants_By_LGA | NDIS participant counts by Local Government Area |
| Population_By_LGA | Population benchmarking and demographic analysis |
| NDIS_First_Nations_Participants | First Nations participation and funding analysis |
| LGA_To_Service_District | Geographic correspondence mapping |
| LGA_2024_AUST | Geographic boundary mapping |
| MB_2021_AUST | Mesh Block correspondence data |
| MB_To_Post_Code | Mesh Block to postcode mapping |
| Modified_Monash_Model | Remoteness classification data |

### Reporting Datasets Created

| Dataset | Description |
|----------|----------|
| Budgets | Cleaned and standardized participant budget data |
| Participants | NDIS participant counts by geography and demographics |
| Population | ABS population benchmarks for growth analysis |
| First Nations Participants | First Nations participant and funding metrics |
| Geographical Data | Consolidated geographic correspondence and remoteness mapping |

---

## Data Lineage

```text
NDIS Budgets (2023, 2024)
Participants by LGA
Population by LGA
First Nations Participants
Geographic Reference Tables
            │
            ▼
SQL Cleaning & Transformation
            │
            ▼
Budgets
Participants
Population
First Nations Participants
Geographical Data
            │
            ▼
Power BI Data Model
            │
            ▼
Interactive Dashboard
```

---

## Data Preparation & Transformation

The project involved integrating multiple datasets with differing geographic and demographic granularities.

Key preparation activities included:

- Data quality validation
- Standardization of categorical values
- Removal of incomplete and suppressed records
- Geographic alignment across reporting levels
- Aggregation and normalization of metrics
- Creation of analysis-ready reporting tables

### Example Challenges Addressed

- LGA-level datasets required alignment with NDIS service district reporting structures
- Population data required normalization for valid growth comparisons
- Geographic datasets were merged to create a reusable location mapping framework
- Suppressed values (e.g. "<11") required cleansing before analysis
- Multiple source systems were consolidated into a consistent reporting model

---

## Analytical Workflow

```text
Raw NDIS Data
        +
Raw ABS Data
        ↓
SQL Cleaning & Validation
        ↓
Data Transformation
        ↓
Dataset Integration
        ↓
Reporting Datasets
        ↓
Power BI Data Model
        ↓
DAX Measures & KPIs
        ↓
Interactive Dashboards
        ↓
Business Insights
```

---

## Dashboard Features

The Power BI solution enables users to explore trends through interactive filtering and drill-down analysis.

### Filters

- Service District
- Local Government Area (LGA)
- Disability Type
- Age Group
- Remoteness Classification

### Key Metrics

- Total Participants
- Participant Growth Rate
- Population Growth Rate
- Average Funding per Participant
- Funding Distribution
- Forecast Participant Growth

---

## Dashboard Screenshots

### Executive Overview

![Executive Overview](https://raw.githubusercontent.com/fredr11/NDIS-Project_SQL-PowerBI/refs/heads/main/Power%20BI/Screenshots/Top%20Numbers.png)

**Business Insight:** Provides a high-level view of participant growth, funding allocation, and key trends across Australia.

### Growth Analysis

![Growth Analysis](https://raw.githubusercontent.com/fredr11/NDIS-Project_SQL-PowerBI/refs/heads/main/Power%20BI/Screenshots/Insights.png)

**Business Insight:** Identifies regions where participant demand is growing faster than population growth.

### Funding Distribution

![Funding Distribution](https://raw.githubusercontent.com/fredr11/NDIS-Project_SQL-PowerBI/refs/heads/main/Power%20BI/Screenshots/Insights.png)

**Business Insight:** Highlights differences in average funding across disability types, age groups, and service districts.

---

## Key Insights

### Participant Demand Continues to Increase

NDIS participation has grown consistently over time, with forecasts indicating continued growth across multiple regions.

### Demand Growth Exceeds Population Growth in Some Areas

Several LGAs show participant growth significantly exceeding population growth, suggesting increasing demand intensity for disability support services.

### Funding Distribution Varies Considerably

Funding allocations differ substantially by disability type, participant demographics, and geographic region.

### Geographic Demand Hotspots Exist

Some regions demonstrate both high participant growth and high funding concentration, making them important areas for future planning.

### Remoteness Influences Participation Patterns

Participation and funding patterns vary across remoteness classifications, highlighting differences in service accessibility and support requirements.

---

## Business Impact

The analysis can support organizations by:

- Identifying regions for potential service expansion
- Anticipating future demand pressures
- Supporting evidence-based funding decisions
- Monitoring regional equity of service access
- Improving long-term workforce and capacity planning

---

## Repository Structure

```text
├── Data
│   ├── Raw
│   │   └── Source Datasets
│   │
│   └── Processed
│       ├── Budgets.csv
│       ├── Participants.csv
│       ├── Population.csv
│       ├── First_Nations_Participants.csv
│       └── Geographical_Data.csv
│
├── SQL Queries
│   ├── Budgets.sql
│   ├── Participants.sql
│   ├── Population.sql
│   ├── First Nations Participants.sql
│   └── Geographical Data.sql
│
├── Power BI
│   ├── NDIS Project.pbix
│   └── Screenshots
│
└── README.md
```

---

## Skills Demonstrated

### Analytics

- Exploratory Data Analysis (EDA)
- Trend Analysis
- Forecasting
- KPI Development
- Business Intelligence

### Data Engineering

- Data Cleaning
- Data Validation
- Data Integration
- Data Transformation
- Data Standardization

### Technical

- SQL
- Power BI
- DAX
- Data Modeling
- Data Visualization

### Business

- Stakeholder-Oriented Reporting
- Strategic Planning Support
- Data Storytelling
- Insight Generation
- Geographic Analysis

---

## Future Enhancements

Potential future improvements include:

- Expanded reporting period to five years for higher comparability
- Incremental data refresh processes
- Enhanced forecasting models
- More granular First Nations analysis
- Additional geographic and socioeconomic indicators

---

## Data Considerations

- All data is publicly available and aggregated.
- No personally identifiable information is included.
- Some datasets use different geographic levels, requiring transformation and alignment.
- Suppressed values were excluded where necessary to maintain analytical integrity.
- Findings should be interpreted within the limitations of publicly reported aggregate data.

---

## Author

**Fred Rinaldo**

Business Analytics | Data Analysis | SQL | Power BI
