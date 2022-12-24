--Ortalama teslimat suresi 28 saatten çok olanlari tespit etme

SELECT U.ID, U.NAMESURNAME AS ADSOYAD,

AVG(DATEDIFF(HOUR,O.DATE_,F.DATE_))   AS TESLIMATSURESI

FROM ORDERS O
INNER JOIN  USERS U ON U.ID=O.USERID
INNER JOIN  ADDRESS A ON A.ID = O.ADDRESSID
INNER JOIN INVOICES F ON O.ID=F.ORDERID
INNER JOIN CITIES C ON C.ID=A.CITYID
INNER JOIN TOWNS T ON T.ID=A.TOWNID
INNER JOIN DISTRICTS D ON D.ID=A.TOWNID
INNER JOIN PAYMENTS P ON O.ID=P.ORDERID 

GROUP BY U.ID,U.NAMESURNAME
HAVING AVG(DATEDIFF(HOUR,O.DATE_,F.DATE_))>22
