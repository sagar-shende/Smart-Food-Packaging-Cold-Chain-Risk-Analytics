<div align="center">

# 🧊 Smart Food Packaging & Cold Chain Risk Analytics

**End-to-End Data Analytics Project | IoT Sensor Data | Food Safety & Cold Chain Monitoring**

![Python](https://img.shields.io/badge/Python-3776AB?style=flat&logo=python&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=flat&logo=mysql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?style=flat&logo=powerbi&logoColor=black)
![Excel](https://img.shields.io/badge/Excel-217346?style=flat&logo=microsoft-excel&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-150458?style=flat&logo=pandas&logoColor=white)

</div>

---

## 📑 Table of Contents
- [Project Overview](#project-overview)
- [Business Problem](#business-problem)
- [Dataset](#dataset)
- [Tools & Technologies](#tools--technologies)
- [Project Workflow](#project-workflow)
- [Feature Engineering](#feature-engineering)
- [Key Performance Indicators (KPIs)](#key-performance-indicators-kpis)
- [Business Questions Solved](#business-questions-solved)
- [Dashboards](#dashboards)
- [Repository Structure](#repository-structure)
- [How to Reproduce](#how-to-reproduce)
- [Key Insights](#key-insights)
- [Skills Demonstrated](#skills-demonstrated)
- [Author](#author)

---

## Project Overview
This project is an end-to-end Data Analytics solution developed using **Excel, MySQL, Python, and Power BI**. The objective is to monitor food safety, evaluate cold chain performance, identify high-risk packages, and generate actionable business insights using IoT sensor data.

---

## Business Problem
Food products are highly sensitive to storage and transportation conditions. This project analyzes IoT sensor data to identify food safety risks, monitor cold chain failures, evaluate packaging quality, and support business decision-making.

---

## Dataset
| Attribute | Detail |
|---|---|
| Total Records | **15,000** |
| Domain | Smart Food Packaging & Cold Chain Analytics |
| Dataset Type | IoT Sensor Data |
| Source | *(add: Kaggle / self-generated / simulated — specify here)* |
| Time Period | *(add if applicable)* |

---

## Tools & Technologies
| Category | Tools |
|---|---|
| Data Cleaning & Analysis | Excel, MySQL, Python (Pandas, NumPy) |
| Visualization | Matplotlib, Seaborn, Power BI |
| BI & Modeling | Power Query, DAX |

---

## Project Workflow
1. Data Collection
2. Data Cleaning
3. Feature Engineering
4. Exploratory Data Analysis (EDA)
5. Business Analysis
6. Dashboard Development
7. Business Insights

---

## Feature Engineering
Created multiple business-driven features including:
- Temperature Status
- Humidity Status
- Freshness Index
- Shelf Life Remaining
- Sensor Health Score
- Environmental Stress Score
- Gas Exposure Level
- Cold Chain Status
- Package Quality Status
- Compliance Status
- Spoilage Probability
- Digital Twin State

---

## Key Performance Indicators (KPIs)
- Total Packages
- High Risk Packages
- Compliance Rate
- Average Risk Score
- Cold Chain Failure Rate
- Average Freshness Index
- Average Shelf Life Remaining
- Average Temperature
- Average Humidity
- Average Sensor Health Score
- Package Damage Rate
- Spoilage Probability Rate

---

## Business Questions Solved
- Which Food Category has the highest Risk Score?
- Which Packaging Material provides the best protection?
- Which Storage Zone has the highest Risk Score?
- Does Temperature affect Shelf Life?
- Does Humidity increase Food Safety Risk?
- Does Light Exposure reduce Freshness?
- Does Oxygen Concentration affect Risk Score?
- Does Carbon Dioxide increase Food Safety Risk?
- Does Volatile Gas indicate Product Contamination?
- Which Digital Twin State has the highest Risk Score?
- Which Storage Zone has the highest Compliance Rate?
- Which Storage Zone has the highest number of High-Risk Packages?

---

## Dashboards

### 📊 Excel Dashboard
- Executive KPIs
- Pivot Charts
- Pivot Tables
- Interactive Slicers

<!-- ![Excel Dashboard](Excel/screenshots/excel_dashboard.png) -->

### 📈 Power BI Dashboard
- Executive Dashboard
- Risk Analysis
- Environmental Analysis
- Operational Analysis
- Package Details (Drill-through)

**Features:** DAX Measures • Power Query • Drill-through • Bookmarks • Slicers • Interactive Reports

<!-- ![Power BI Dashboard](PowerBI/screenshots/powerbi_dashboard.png) -->

> 📌 *Add PNG screenshots of each dashboard page inside `Excel/screenshots/` and `PowerBI/screenshots/`, then uncomment the image lines above.*

---

## Repository Structure
```text
Smart-Food-Packaging-Cold-Chain-Analytics/
│
├── Dataset/            # Raw and cleaned IoT sensor data
├── Excel/              # Excel dashboard + pivot analysis
│   └── screenshots/
├── MySQL/              # SQL scripts for business analysis
├── Python/             # EDA, feature engineering, cleaning notebooks
├── PowerBI/             # .pbix file + DAX measures
│   └── screenshots/
├── Documentation/       # Project report / insights summary
└── README.md
```

---

## How to Reproduce
1. Clone the repository:
   ```bash
   git clone https://github.com/sagar-shende/<repo-name>.git
   ```
2. **Python (EDA & Feature Engineering):**
   Open `Python/` notebooks in order (Cleaning → Feature Engineering → EDA) and run cells sequentially. Requires `pandas`, `numpy`, `matplotlib`, `seaborn`.
3. **MySQL:**
   Import the dataset into MySQL, then run scripts from `MySQL/` in numbered order to reproduce business-question queries.
4. **Power BI:**
   Open the `.pbix` file in `PowerBI/` with Power BI Desktop. Data source path may need to be updated under *Transform Data → Data Source Settings*.
5. **Excel:**
   Open the workbook in `Excel/` — pivot tables and slicers are pre-built on the cleaned dataset.

---

## Key Insights
> *(Replace with your actual numbers — this is what recruiters look for first)*
- **[Category]** category recorded the highest average risk score at **[X]%**.
- Cold chain failure rate across all zones stood at **[X]%**.
- **[Storage Zone]** had the highest compliance rate at **[X]%**, while **[Zone]** had the most high-risk packages.
- Temperature deviation beyond **[X]°C** was linked to a **[X]%** drop in shelf life.
- **[Packaging Material]** provided the strongest protection with the lowest spoilage probability (**[X]%**).
- Overall, **[X]%** of packages were flagged high-risk, driving targeted recommendations for storage and packaging improvements.

---

## Skills Demonstrated
- Data Cleaning
- Feature Engineering
- SQL Analysis
- Exploratory Data Analysis
- Data Visualization
- Dashboard Development
- Business Intelligence
- Power BI
- DAX
- Power Query
- Excel Analytics

---

## Author

**Sagar Shende**
Aspiring Data Analyst | Power BI • SQL • Python • Excel

📧 *(add email)*
🔗 [LinkedIn](https://linkedin.com/in/sagarshende-ai)
🔗 [GitHub](https://github.com/sagar-shende)
