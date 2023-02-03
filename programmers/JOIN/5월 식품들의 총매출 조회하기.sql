# 코딩테스트 연습 < JOIN < 5월 식품들의 총매출 조회하기

'''
문제 설명
다음은 식품의 정보를 담은 FOOD_PRODUCT 테이블과 식품의 주문 정보를 담은 FOOD_ORDER 테이블입니다.
 FOOD_PRODUCT 테이블은 다음과 같으며 PRODUCT_ID, PRODUCT_NAME, PRODUCT_CD, CATEGORY, PRICE는 식품 ID, 식품 이름, 식품코드, 식품분류, 식품 가격을 의미합니다.

문제
FOOD_PRODUCT와 FOOD_ORDER 테이블에서 생산일자가 2022년 5월인 식품들의 식품 ID, 식품 이름, 총매출을 조회하는 SQL문을 작성해주세요. 
이때 결과는 총매출을 기준으로 내림차순 정렬해주시고 총매출이 같다면 식품 ID를 기준으로 오름차순 정렬해주세요.
'''

SELECT FP.PRODUCT_ID, FP.PRODUCT_NAME, SUM(PRICE*AMOUNT) AS TOTAL_SALES
FROM FOOD_PRODUCT FP, FOOD_ORDER FO
WHERE FP.PRODUCT_ID = FO.PRODUCT_ID
AND DATE_FORMAT(PRODUCE_DATE, '%Y%m') = '202205'
GROUP BY PRODUCT_ID
ORDER BY TOTAL_SALES DESC, PRODUCT_ID