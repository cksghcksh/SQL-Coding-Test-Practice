# 코딩테스트 연습 > SELECT > 과일로 만든 아이스크림 고르기

'''
문제 설명
다음은 아이스크림 가게의 상반기 주문 정보를 담은 FIRST_HALF 테이블과 아이스크림 성분에 대한 정보를 담은 ICECREAM_INFO 테이블입니다. 
FIRST_HALF 테이블 구조는 다음과 같으며, SHIPMENT_ID, FLAVOR, TOTAL_ORDER 는 각각 아이스크림 공장에서 아이스크림 가게까지의 출하 번호, 아이스크림 맛, 상반기 아이스크림 총주문량을 나타냅니다. 
FIRST_HALF 테이블의 기본 키는 FLAVOR입니다.

문제
상반기 아이스크림 총주문량이 3,000보다 높으면서 아이스크림의 주 성분이 과일인 아이스크림의 맛을 총주문량이 큰 순서대로 조회하는 SQL 문을 작성해주세요.
'''

SELECT X.FLAVOR
FROM FIRST_HALF X INNER JOIN ICECREAM_INFO Y 
ON (X.FLAVOR = Y.FLAVOR)
WHERE TOTAL_ORDER >=3000 AND INGREDIENT_TYPE = 'fruit_based'
ORDER BY TOTAL_ORDER DESC