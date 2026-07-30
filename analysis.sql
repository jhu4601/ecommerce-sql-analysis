--What are the top 10 product categories by total revenue?
SELECT product_category, sum(price) as total_revenue
FROM olist_order_items_dataset
inner join olist_products_dataset
on olist_order_items_dataset.product_id = olist_products_dataset.product_id
GROUP BY product_category
order by total_revenue desc
LIMIT 10;
