USE PortfolioProject_MarketingAnalytics;
GO


IF OBJECT_ID('dbo.fact_customer_reviews', 'U') IS NOT NULL
    DROP TABLE dbo.fact_customer_reviews;
GO

CREATE TABLE dbo.fact_customer_reviews (
    ReviewID INT PRIMARY KEY,          -- Unique review ID
    CustomerID INT,                    -- Customer reference
    ProductID INT,                     -- Product reference
    ReviewDate DATE,                   -- Review date
    Rating INT,                        -- Rating (1–5)
    ReviewText NVARCHAR(MAX)           -- Cleaned review text
);
GO


INSERT INTO dbo.fact_customer_reviews (
    ReviewID, 
    CustomerID, 
    ProductID, 
    ReviewDate, 
    Rating, 
    ReviewText
)
SELECT 
    ReviewID,
    CustomerID,
    ProductID,
    ReviewDate,
    Rating,
    -- Clean review text (remove double spaces)
    REPLACE(ReviewText, '  ', ' ')
FROM 
    dbo.customer_reviews;
GO



SELECT TOP 20 * 
FROM dbo.fact_customer_reviews;
GO

select * from dbo.fact_customer_reviews
