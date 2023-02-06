# 코딩테스트 연습 < JOIN < 주문량이 많은 아이스크림들 조회하기

'''
문제 설명
다음은 아이스크림 가게의 상반기 주문 정보를 담은 FIRST_HALF 테이블과 7월의 아이스크림 주문 정보를 담은 JULY 테이블입니다. 
FIRST_HALF 테이블 구조는 다음과 같으며, SHIPMENT_ID, FLAVOR, TOTAL_ORDER는 각각 아이스크림 공장에서 아이스크림 가게까지의 출하 번호, 아이스크림 맛, 상반기 아이스크림 총주문량을 나타냅니다. 
FIRST_HALF 테이블의 기본 키는 FLAVOR입니다. 
FIRST_HALF테이블의 SHIPMENT_ID는 JULY테이블의 SHIPMENT_ID의 외래 키입니다.

문제
7월 아이스크림 총 주문량과 상반기의 아이스크림 총 주문량을 더한 값이 큰 순서대로 상위 3개의 맛을 조회하는 SQL 문을 작성해주세요.
'''

SELECT FH.FLAVOR
FROM FIRST_HALF FH, JULY J
WHERE FH.FLAVOR = J.FLAVOR
GROUP BY FLAVOR
ORDER BY SUM(FH.TOTAL_ORDER + J.TOTAL_ORDER) DESC
LIMIT 3