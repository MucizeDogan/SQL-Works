-- Yillara ve aylara gore istatistikler

SELECT
DATEPART(YEAR,O.DATE_) YIL,
DATEPART(MONTH,O.DATE_) AY,

AVG(DATEDIFF(HOUR,O.DATE_,F.DATE_))   AS TESLIMATSURESI,
COUNT(O.ID) AS SIPARISSAYISI,
SUM(O.TOTALPRICE) AS TOPLAMTUTAR
FROM ORDERS O
INNER JOIN  USERS U ON U.ID=O.USERID
INNER JOIN  ADDRESS A ON A.ID = O.ADDRESSID
INNER JOIN INVOICES F ON O.ID=F.ORDERID
INNER JOIN CITIES C ON C.ID=A.CITYID
INNER JOIN TOWNS T ON T.ID=A.TOWNID
INNER JOIN DISTRICTS D ON D.ID=A.TOWNID
INNER JOIN PAYMENTS P ON O.ID=P.ORDERID 

GROUP BY DATEPART(YEAR,O.DATE_),DATEPART(MONTH,O.DATE_)

ORDER BY 1 ,2

