 # date포멧이 YYYY-mm-DD hh:mm:ss 까지 나오는데 yyyymmdd만나오게하려면 DATE_FORMAT써야함

Select BOOK_ID, 
       DATE_FORMAT(PUBLISHED_DATE, '%Y-%m-%d') AS PUBLISHED_DATE
From BOOK
where PUBLISHED_DATE LIKE '2021%' 
    AND CATEGORY = '인문'
Order by PUBLISHED_DATE ASC;