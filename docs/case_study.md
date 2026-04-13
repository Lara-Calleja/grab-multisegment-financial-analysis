# 📊 Case Study — Grab Holdings Multi-Segment Financial & Fraud Analysis

## Problem Statement

Grab Holdings operates as a multi-service platform across mobility, deliveries, and financial services. While revenue growth is strong, the company faces two key challenges:

1. Understanding **which segments drive sustainable growth vs profitability**
2. Identifying **operational risks within its financial transactions**, particularly fraud detection inefficiencies

This project aims to provide a structured, data-driven analysis to support strategic and operational decision-making.

---

## Objectives

- Analyze financial performance across business segments
- Evaluate profitability using EBITDA and margin trends
- Forecast future revenue scenarios
- Investigate transaction behavior and fraud detection effectiveness
- Deliver insights through an executive-level dashboard

---

## Methodology

This project was executed in three analytical layers:

---

### Module A — Financial Modeling (Excel)

- Structured multi-year financial data (FY2023–FY2025)
- Calculated:
  - Revenue by segment
  - Year-over-Year (YoY) growth
  - Adjusted EBITDA and margins
- Compared segment performance across growth and profitability dimensions

---

### Module B — Transaction & Fraud Analysis (SQL)

- Analyzed transaction-level data using a synthetic payments dataset (PaySim)
- Performed:
  - Transaction type analysis
  - Fraud vs non-fraud comparison
  - System detection performance evaluation
- Identified discrepancies between actual fraud and system-flagged cases

---

### Module C — Dashboard Development (Power BI)

- Integrated financial and transaction datasets
- Built data model and calculated metrics using DAX
- Designed an executive dashboard featuring:
  - KPI summaries
  - Trend visualizations
  - Fraud detection insights

---

## 📊 Key Findings

### 1. Revenue Growth Driven by Deliveries
- Deliveries contributed the largest share of total revenue
- Overall revenue increased significantly year-over-year

---

### 2. Mobility is the Most Profitable Segment
- Mobility consistently achieved the highest EBITDA margins
- Indicates strong operational efficiency and mature business model

---

### 3. Financial Services Shows High Growth but Low Profitability
- Fastest-growing segment
- Negative or low margins suggest ongoing investment phase

---

### 4. Fraud Detection System is Critically Underperforming ⚠

- System flagged only **16 out of 8,213 actual fraud cases**
- Represents a **99.8% miss rate**

**Implication:**
- Significant financial and reputational risk
- Indicates need for improved detection models or rule systems

---

### 5. EBITDA Trends Reveal Investment Strategy

- Financial Services losses are narrowing over time
- Suggests long-term growth strategy rather than short-term profitability focus

---

## 📈 Business Recommendations

### 🔹 Improve Fraud Detection System
- Implement machine learning-based anomaly detection
- Enhance rule-based filtering for high-risk transaction types
- Introduce real-time fraud monitoring

---

### 🔹 Optimize Segment Investment Strategy
- Continue scaling Financial Services cautiously
- Monitor path to profitability closely

---

### 🔹 Leverage Mobility Profitability
- Use Mobility as a profit anchor
- Cross-subsidize growth in emerging segments

---

### 🔹 Enhance Data Monitoring
- Build automated alerts for unusual transaction behavior
- Track fraud detection rate as a core KPI

---

## 🛠 Tools & Technologies

- **Excel** — Financial modeling and analysis  
- **PostgreSQL** — Transaction data querying and fraud analysis  
- **Power BI** — Dashboard development and visualization  
- **DAX** — KPI calculations and metrics  

---

## Project Outcome

This project demonstrates the ability to:

- Perform **end-to-end data analysis** across multiple tools
- Translate raw data into **business insights and recommendations**
- Identify both **growth opportunities and operational risks**
- Communicate findings through a **decision-ready dashboard**

---

## 📌 Key Takeaway

Strong revenue growth alone does not guarantee business health.  
Sustainable success requires balancing:

- Growth (Deliveries, Financial Services)
- Profitability (Mobility)
- Risk management (Fraud detection systems)

This analysis highlights the importance of integrating financial and operational data to drive better decision-making.

