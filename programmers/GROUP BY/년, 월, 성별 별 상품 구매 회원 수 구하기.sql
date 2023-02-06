# 코딩테스트 연습 < GROUP BY < 년, 월, 성별 별 상품 구매 회원 수 구하기

'''
문제 설명
다음은 어느 의류 쇼핑몰에 가입한 회원 정보를 담은 USER_INFO 테이블과 온라인 상품 판매 정보를 담은 ONLINE_SALE 테이블 입니다.
USER_INFO 테이블은 아래와 같은 구조로 되어있으며 USER_ID, GENDER, AGE, JOINED는 각각 회원 ID, 성별, 나이, 가입일을 나타냅니다.


문제
USER_INFO 테이블과 ONLINE_SALE 테이블에서 년, 월, 성별 별로 상품을 구매한 회원수를 집계하는 SQL문을 작성해주세요. 
결과는 년, 월, 성별을 기준으로 오름차순 정렬해주세요. 이때, 성별 정보가 없는 경우 결과에서 제외해주세요.
'''

SELECT YEAR(SALES_DATE) AS YEAR
, MONTH(SALES_DATE) AS MONTH
, GENDER
, COUNT(DISTINCT OS.USER_ID) AS USERS
FROM USER_INFO UI, ONLINE_SALE OS
WHERE UI.USER_ID = OS.USER_ID
AND GENDER IS NOT NULL
GROUP BY YEAR, MONTH, GENDER
ORDER BY 1, 2, 3