SELECT * FROM SALES
--Bir M��terinin ortalama ka� adet �r�n ald���n� g�steren sorgu,1. FORM�LLE 2. AVG FONK �LE
--SELECT SUM(AMOUNT)/COUNT(ID) FROM SALES
--SELECT AVG(AMOUNT) FROM SALES

--Adana �ehrinin yapt��� ciro ve ortalamasat�lan fiyat� g�steren sorgu
--SELECT MIN(TOTALPRICE),MAX(TOTALPRICE),COUNT(TOTALPRICE),SUM(TOTALPRICE),AVG(TOTALPRICE) 
--FROM SALES WHERE CITY='ADANA'

-- B�t�n illerin total sat���n�n ne kadar oldu�unu anlamak i�in �ehir �ehir ay�r�yoruz bunun i�in group by
--SELECT CITY AS SEH�R, SUM(TOTALPRICE) AS TOTALSATIS FROM SALES GROUP BY CITY  ORDER BY CITY

-- Ankara ilinde yap�lan sat��lar�n g�n g�n bazl� sat�� rakamlar�n� getirme sorgusu;
--SELECT CITY ,DATE2 AS GUN, SUM(TOTALPRICE) AS TOTALPRICE 
--FROM SALES WHERE CITY='ANKARA' GROUP BY CITY,DATE2 ORDER BY DATE2 ASC

--2019-01-01 tarihinde �ehir bazl� sat�� rakalar� sorgusu;
--SELECT DATE2,CITY, SUM(TOTALPRICE) AS TOTALPRICE FROM SALES WHERE DATE2='2019-01-01'
--GROUP BY DATE2,CITY ORDER BY DATE2,CITY

SELECT * FROM SALES 








