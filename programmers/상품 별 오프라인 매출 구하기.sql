# 코딩테스트 연습 < JOIN < 상품 별 오프라인 매출 구하기

'''
문제 설명
다음은 어느 의류 쇼핑몰에서 판매중인 상품들의 상품 정보를 담은 PRODUCT 테이블과 오프라인 상품 판매 정보를 담은 OFFLINE_SALE 테이블 입니다. 
PRODUCT 테이블은 아래와 같은 구조로 PRODUCT_ID, PRODUCT_CODE, PRICE는 각각 상품 ID, 상품코드, 판매가를 나타냅니다.


문제
PRODUCT 테이블과 OFFLINE_SALE 테이블에서 상품코드 별 매출액(판매가 * 판매량) 합계를 출력하는 SQL문을 작성해주세요.
결과는 매출액을 기준으로 내림차순 정렬해주시고 매출액이 같다면 상품코드를 기준으로 오름차순 정렬해주세요.
'''

SELECT PR.PRODUCT_CODE, SUM(PR.PRICE * OS.SALES_AMOUNT) AS SALES
FROM PRODUCT PR, OFFLINE_SALE OS
WHERE PR.PRODUCT_ID = OS.PRODUCT_ID
GROUP BY PRODUCT_CODE
ORDER BY SALES DESC, PRODUCT_CODE