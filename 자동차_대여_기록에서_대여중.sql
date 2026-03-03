Select CAR_ID, 
    Case 
        When MAX(START_DATE <= '2022-10-16'
                 AND END_DATE >= '2022-10-16')
        Then '대여중'
        Else '대여 가능'
    End AS AVAILABILITY
From CAR_RENTAL_COMPANY_RENTAL_HISTORY  
Group by CAR_ID
Order by CAR_ID DESC;


## 문제가 딱 2022 10 16일에 대여 중인거야? !! 
### 차가 몇번  빌렸는지는 중요하지 않음
# 그런데 그 특정한 차가 저날 빌렸는지 여부인거여... 으미.. 그래서 group by..
