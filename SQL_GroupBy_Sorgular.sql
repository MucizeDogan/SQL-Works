SELECT * FROM SALES
--Bir Musterinin ortalama kaç adet urun aldıgini gosteren sorgu,1. FORMULLE 2. AVG FONK İLE
SELECT SUM(AMOUNT)/COUNT(ID) FROM SALES
SELECT AVG(AMOUNT) FROM SALES

--Adana sehrinin yaptigi ciro ve ortalama satılan fiyati gosteren sorgu
SELECT MIN(TOTALPRICE),MAX(TOTALPRICE),COUNT(TOTALPRICE),SUM(TOTALPRICE),AVG(TOTALPRICE) 
FROM SALES WHERE CITY='ADANA'

-- Butun illerin total satisinin ne kadar oldugunu anlamak icin sehir sehir ayiriyoruz bunun icin group by
SELECT CITY AS SEHİR, SUM(TOTALPRICE) AS TOTALSATIS FROM SALES GROUP BY CITY  ORDER BY CITY

-- Ankara ilinde yapılan satislarin gun gun bazlı satıs rakamlarini getirme sorgusu;
SELECT CITY ,DATE2 AS GUN, SUM(TOTALPRICE) AS TOTALPRICE 
FROM SALES WHERE CITY='ANKARA' GROUP BY CITY,DATE2 ORDER BY DATE2 ASC

--2019-01-01 tarihinde sehir bazli satıs rakamlari sorgusu;
SELECT DATE2,CITY, SUM(TOTALPRICE) AS TOTALPRICE FROM SALES WHERE DATE2='2019-01-01'
GROUP BY DATE2,CITY ORDER BY DATE2,CITY

SELECT * FROM SALES 








