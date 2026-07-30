E-Commerce SQL Analysis

SQL-based analysis of the Olist Brazilian E-Commerce dataset, a real-world dataset of 100,000+ orders across 8 relational tables. The goal was to answer practical business questions using progressively complex SQL, with JOINs across multiple tables, CTEs for readable multi-step queries, and window functions for ranking and trend analysis.

Dataset

Olist Brazilian E-Commerce Public Dataset — 8 tables covering orders, customers, products, sellers, payments, and reviews.

Questions Answered

## What are the top 10 product categories by total revenue?

The top revenue-generating category is health & beauty (beleza_saude) at $1.26M, followed closely by watches & gifts at $1.2M and bed/bath/table at $1.04M. The top 10 categories are all consumer lifestyle goods, with no electronics or tech categories appear in the top 10.

## Which sellers have the highest average review score?

Among sellers with 50+ reviews, the top-rated seller averages 4.82/5. The top 20 sellers by review score all maintain averages above 4.57, suggesting that high-volume sellers on Olist tend to maintain consistently strong ratings.

## Which product categories have the happiest customers?

CDs and music products have the highest customer satisfaction (4.64/5), followed by children's fashion and books. Fashion footwear and food categories score lowest, suggesting fulfillment or quality issues in those segments.

## Which states have the most customers?

São Paulo state accounts for 41,746 customers who order, which is over 3x more than Rio de Janeiro (12,852), the second largest market. The top 3 states (SP, RJ, MG) together represent the majority of all orders, reflecting Brazil's economic concentration in the southeast.

Tools

SQL (SQLite), Python (pandas, matplotlib) for visualizations

Key Findings
