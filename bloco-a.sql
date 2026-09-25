-- A.1 — Listar os 20 pedidos com status `delivered` mais recentes, ordenados pela data de entrega
-- Pergunta: quais foram os últimos pedidos efetivamente entregues?
SELECT
    order_id,
    customer_id,
    order_delivered_customer_date
FROM olist_orders_dataset
WHERE order_status = 'delivered'
ORDER BY order_delivered_customer_date desc -- [9-0]
LIMIT 20;



-- A.3 — Listar os métodos de pagamento distintos utilizados na base
-- Pergunta: quais formas de pagamento existem na base?
SELECT DISTINCT payment_type
FROM olist_order_payments_dataset
ORDER BY payment_type asc; -- [A-Z]