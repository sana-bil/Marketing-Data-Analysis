# Marketing-Data-Analysis
Marketing analytics project using SQL, Python and Power BI

# Business Problem / Use Case
The project addresses marketing challenges faced by the online retail business, Shop E, which is experiencing declining performance despite new marketing campaigns. Key issues include:

- **Reduced customer engagement**: Fewer interactions with the site and marketing content, leading to decreased satisfaction.  
- **Decreased conversion rates**: Less site visitors converting into paying customers, impacting revenue.  
- **High marketing expenses not yielding expected returns**: Marketing ROI is below expectations.

# Key Performance Indicators (KPIs) for Analysis
The project focuses on analyzing the following KPIs to identify opportunities and improve business performance:

- **Conversion rate**  
- **Customer engagement rate**  
- **Average order value**  
- **Customer feedback score**  

The ultimate goals are to **increase conversion rates**, **enhance customer engagement**, and **improve customer feedback scores** by analyzing customer reviews and extracting actionable insights.


## Project Overview
This project extracts and analyzes customer reviews to understand sentiment and its relationship with business KPIs. The workflow includes:

1. **SQL Layer**
   - Create and clean tables in SQL Server  
   - Transform and prepare customer review data for analysis  

2. **Python Layer**
   - Connect to SQL Server or read the processed CSV  
   - Perform **sentiment analysis** using **VADER (NLTK)**  
   - Calculate:
     - Sentiment score (compound)  
     - Sentiment category (Positive, Negative, Neutral, Mixed)  
     - Sentiment bucket (score ranges)  
   - Export the results to CSV for reporting  

3. **CSV Output**
   - `fact_customer_reviews_with_sentiment.csv`  
   - Ready for visualization in **Power BI** 


# Tech Stack
- **Database**: SQL Server  
- **Programming**: Python (pandas, pyodbc, NLTK VADER)  
- **Data Export**: CSV  
- **Visualization**: Power BI  


