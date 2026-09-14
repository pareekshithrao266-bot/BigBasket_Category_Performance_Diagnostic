SELECT p.product_name,
       SUM(o.amount_inr) AS total_revenue,
       CASE
           WHEN SUM(o.amount_inr) >= 3000 THEN 'High'
           WHEN SUM(o.amount_inr) >= 1000 THEN 'Medium'
           ELSE 'Low'
       END AS revenue_tier
FROM orders o
JOIN products p ON o.product_id = p.product_id
WHERE o.status = 'Delivered'
GROUP BY p.product_id;


SELECT p.category AS category,
       strftime('%Y-%m', o.order_date) AS month,
       COUNT(*) AS order_count,
       SUM(o.amount_inr) AS total_revenue,
       AVG(o.amount_inr) AS avg_revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id
WHERE o.status = 'Delivered'
GROUP BY p.category, month
ORDER BY p.category, month;



SELECT t.category,
       t.target_revenue_inr,
       cat_rev.total_revenue,
       (t.target_revenue_inr - cat_rev.total_revenue) AS variance,
       ((cat_rev.total_revenue - t.target_revenue_inr) * 100.0) / t.target_revenue_inr AS percentage_variance,
       CASE
           WHEN cat_rev.total_revenue >= t.target_revenue_inr THEN 'Above Target'
           WHEN ((t.target_revenue_inr - cat_rev.total_revenue) * 100.0) / t.target_revenue_inr <= 15 THEN 'Below Target - Watch'
           ELSE 'Below Target - Critical'
       END AS status_tag
FROM category_targets t
JOIN (
    SELECT p.category, SUM(o.amount_inr) AS total_revenue
    FROM orders o
    JOIN products p ON o.product_id = p.product_id
    WHERE o.status = 'Delivered'
    GROUP BY p.category
  )cat_rev ON t.category = cat_rev.category;