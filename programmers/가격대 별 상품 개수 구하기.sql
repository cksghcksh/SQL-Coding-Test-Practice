# 코딩테스트 연습 < GROUP BY < 가격대 별 상품 개수 구하기

'''
문제 설명
다음은 어느 의류 쇼핑몰에서 판매중인 상품들의 정보를 담은 PRODUCT 테이블입니다. 
PRODUCT 테이블은 아래와 같은 구조로 되어있으며, PRODUCT_ID, PRODUCT_CODE, PRICE는 각각 상품 ID, 상품코드, 판매가를 나타냅니다.


문제
PRODUCT 테이블에서 만원 단위의 가격대 별로 상품 개수를 출력하는 SQL 문을 작성해주세요. 이때 컬럼명은 각각 컬럼명은 PRICE_GROUP, PRODUCTS로 지정해주시고 가격대 정보는 각 구간의 최소금액(10,000원 이상 ~ 20,000 미만인 구간인 경우 10,000)으로 표시해주세요. 
결과는 가격대를 기준으로 오름차순 정렬해주세요.
'''

# floor(price / 10000) * 10000 as PRICE_GROUP
SELECT CASE WHEN PRICE < 10000 THEN '0'
            WHEN PRICE < 20000 THEN '10000'
            WHEN PRICE < 30000 THEN '20000'
            WHEN PRICE < 40000 THEN '30000' 
            WHEN PRICE < 50000 THEN '40000' 
            WHEN PRICE < 60000 THEN '50000'
            WHEN PRICE < 70000 THEN '60000'
            WHEN PRICE < 80000 THEN '70000'
            WHEN PRICE < 90000 THEN '80000' END AS PRICE_GROUP
            , COUNT(PRODUCT_ID) AS PRODUCTS
FROM PRODUCT
GROUP BY PRICE_GROUP
ORDER BY PRICE_GROUP
