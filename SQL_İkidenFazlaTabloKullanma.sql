--�K�DEN FAZLA TABLOYU KULLANMAK 
SELECT 
U.NAMESURNAME, U.EMAIL,U.TELNR1,C.COUNTRY,CT.CITY,A.ADDRESSTEXT
FROM USERS U, ADDRESS A, COUNTRIES C, CITIES CT 

WHERE U.ID=A.USERID AND C.ID=A.COUNTRYID AND C.ID=CT.COUNTRYID AND CT.ID=A.CITYID
AND CT.CITY = '�ZM�R'