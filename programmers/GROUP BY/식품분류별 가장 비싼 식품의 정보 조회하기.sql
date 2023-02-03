# 코딩테스트 연습 < GROUP BY < 식품분류별 가장 비싼 식품의 정보 조회하기

'''
문제 설명
다음은 식품의 정보를 담은 FOOD_PRODUCT 테이블입니다. 
FOOD_PRODUCT 테이블은 다음과 같으며 PRODUCT_ID, PRODUCT_NAME, PRODUCT_CD, CATEGORY, PRICE는 식품 ID, 식품 이름, 식품코드, 식품분류, 식품 가격을 의미합니다.

문제
FOOD_PRODUCT 테이블에서 식품분류별로 가격이 제일 비싼 식품의 분류, 가격, 이름을 조회하는 SQL문을 작성해주세요. 
이때 식품분류가 '과자', '국', '김치', '식용유'인 경우만 출력시켜 주시고 결과는 식품 가격을 기준으로 내림차순 정렬해주세요.
'''

SELECT CATEGORY, MAX(PRICE) AS MAX_PRICE, PRODUCT_NAME
FROM FOOD_PRODUCT
WHERE CATEGORY IN ('과자', '국', '김치', '식용유')
AND PRICE IN (SELECT MAX(PRICE)
              FROM FOOD_PRODUCT
              GROUP BY CATEGORY
             ) 
GROUP BY CATEGORY
ORDER BY MAX_PRICE DESC