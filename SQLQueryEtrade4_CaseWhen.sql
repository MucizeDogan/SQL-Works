--CASE WHEN YAPISI(OLMAYAN B�R S�T�N YARATMAK)

SELECT PAYMENTTYPE AS ODEMETURU,
CASE
	WHEN PAYMENTTYPE=1 THEN 'KRED� KARTI'
	WHEN PAYMENTTYPE=2 THEN 'BANKA HAVALES�'
	END AS ODEMETURU_ACIKLAMA,
SUM(PAYMENTTOTAL) AS TOPLAMTUTAR
FROM PAYMENTS

GROUP BY PAYMENTTYPE