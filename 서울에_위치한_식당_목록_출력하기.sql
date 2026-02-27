# 내가푼문제에서는 맛집식당별로 뭐뭐 셀렉해주세요. 이렇게 OO별로 ... 이런 문장이나오면 이제 group by쓰라는건데
# 이거는 문제보고 알아서 유추를 해야함
#아 ? 리뷰는 각각의 식당별로~겠구나 지금 이 리뷰는 짬뽕된거니까


# 서울에 위치한 !!!

#스코어 반올림 ㄱround,3
Select REST_INFO.REST_ID, REST_INFO.REST_NAME, REST_INFO.FOOD_TYPE, REST_INFO.FAVORITES, REST_INFO.ADDRESS, ROUND(AVG(REST_REVIEW.REVIEW_SCORE),2) AS 'SCORE'
From REST_INFO, REST_REVIEW
Where REST_INFO.REST_ID = REST_REVIEW.REST_ID 
    AND REST_INFO.ADDRESS Like "서울%"
Group by REST_INFO.REST_ID
Order by SCORE DESC, REST_INFO.FAVORITES DESC;