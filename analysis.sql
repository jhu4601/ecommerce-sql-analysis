--What are the top 10 product categories by total revenue?
SELECT product_category, sum(price) as total_revenue
FROM olist_order_items_dataset
inner join olist_products_dataset
on olist_order_items_dataset.product_id = olist_products_dataset.product_id
GROUP BY product_category
order by total_revenue desc
LIMIT 10;

--Which sellers have the highest average review score?
SELECT seller_id, AVG(review_score) as average_score
FROM olist_order_items_dataset
INNER JOIN olist_order_reviews_dataset
on olist_order_items_dataset.order_id = olist_order_reviews_dataset.order_id
GROUP BY seller_id
having Count(*) >= 50
order by average_score DESC
limit 20;

--Which product categories have the happiest customers?
SELECT product_category, avg(review_score) as average_score
FROM olist_order_reviews_dataset
INNER JOIN olist_order_items_dataset
on olist_order_reviews_dataset.order_id = olist_order_items_dataset.order_id
INNER JOIN olist_products_dataset
ON olist_order_items_dataset.product_id = olist_products_dataset.product_id
GROUP BY product_category
ORDER BY average_score desc;

--Which states have the most customers who order?
SELECT customer_state, count(*) as order_count
from olist_customers_dataset
inner join olist_orders_dataset
on olist_customers_dataset.customer_id = olist_orders_dataset.customer_id
group by customer_state
order by count(*) DESC
limit 10;
