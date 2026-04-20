# Module B — SQL Transaction & Fraud Analysis

## Objective
Analyze transaction patterns and identify fraud risks.

## Dataset
- PaySim synthetic financial dataset [Kaggle PaySim Dataset](https://www.kaggle.com/datasets/ealaxi/paysim1)

## Data Cleaning & Validation Process
- Identified and handled missing values in transaction-level data
- Removed duplicate records to ensure accuracy of aggregations
- Standardized date formats and categorical variables across datasets
- Validated joins to prevent data duplication or loss during transformations
- Applied consistency checks between raw and aggregated outputs

## Key Analyses
- Fraud vs non-fraud transaction patterns
- Detection system performance
- Transaction type risk comparison

## Key Finding
⚠ Fraud detection system flagged only 16 out of 8,213 fraudulent transactions (99.8% miss rate)

## SQL Skills Demonstrated
- Aggregations
- CASE statements
- Window functions
- Data filtering & joins
- CTEs
