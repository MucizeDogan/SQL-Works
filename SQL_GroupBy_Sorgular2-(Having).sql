
--	Kategorilere ay�rarak sat�� rakamlar�n� getirme
SELECT CATEGORY1,CATEGORY2,CATEGORY3,CATEGORY4,SUM(TOTALPRICE) FROM SALES 
GROUP BY CATEGORY1,CATEGORY2,CATEGORY3,CATEGORY4 ORDER BY SUM(TOTALPRICE) DESC

--Ma�azalar�n m��teri say�lar�n� getirme(tekil m��teri);
SELECT CITY, COUNT(DISTINCT CUSTOMERCODE) AS SINGLECUSTOMERS FROM SALES 
GROUP BY CITY ORDER BY COUNT(DISTINCT CUSTOMERCODE) DESC

-- 40.000 tl Cironun �zerinde sat�� yapan ma�azalar� getiren sorgu;
SELECT CITY ,SUM(TOTALPRICE) AS TOTALPRICEE FROM SALES  
GROUP BY CITY HAVING SUM(TOTALPRICE)>40000 ORDER BY SUM(TOTALPRICE) DESC

