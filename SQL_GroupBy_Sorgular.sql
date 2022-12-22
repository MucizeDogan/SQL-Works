SELECT * FROM SALES
--Bir Müþterinin ortalama kaç adet ürün aldýðýný gösteren sorgu,1. FORMÜLLE 2. AVG FONK ÝLE
--SELECT SUM(AMOUNT)/COUNT(ID) FROM SALES
--SELECT AVG(AMOUNT) FROM SALES

--Adana þehrinin yaptýðý ciro ve ortalamasatýlan fiyatý gösteren sorgu
--SELECT MIN(TOTALPRICE),MAX(TOTALPRICE),COUNT(TOTALPRICE),SUM(TOTALPRICE),AVG(TOTALPRICE) 
--FROM SALES WHERE CITY='ADANA'

-- Bütün illerin total satýþýnýn ne kadar olduðunu anlamak için þehir þehir ayýrýyoruz bunun için group by
--SELECT CITY AS SEHÝR, SUM(TOTALPRICE) AS TOTALSATIS FROM SALES GROUP BY CITY  ORDER BY CITY

-- Ankara ilinde yapýlan satýþlarýn gün gün bazlý satýþ rakamlarýný getirme sorgusu;
--SELECT CITY ,DATE2 AS GUN, SUM(TOTALPRICE) AS TOTALPRICE 
--FROM SALES WHERE CITY='ANKARA' GROUP BY CITY,DATE2 ORDER BY DATE2 ASC

--2019-01-01 tarihinde þehir bazlý satýþ rakalarý sorgusu;
--SELECT DATE2,CITY, SUM(TOTALPRICE) AS TOTALPRICE FROM SALES WHERE DATE2='2019-01-01'
--GROUP BY DATE2,CITY ORDER BY DATE2,CITY

SELECT * FROM SALES 








