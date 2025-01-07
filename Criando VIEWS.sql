USE sakila;

-- Criando uma VIEW

CREATE VIEW vendas_por_cliente AS
SELECT
	cus.customer_id,
    cus.first_name,
    cus.last_name,
    pay.amount
FROM customer AS cus
JOIN payment AS pay
	ON cus.customer_id = pay.payment_id