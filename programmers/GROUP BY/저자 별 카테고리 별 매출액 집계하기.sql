# 코딩테스트 연습 < GROUP BY < 저자 별 카테고리 별 매출액 집계하기

'''
문제 설명
다음은 어느 한 서점에서 판매중인 도서들의 도서 정보(BOOK), 저자 정보(AUTHOR) 테이블입니다.

문제
2022년 1월의 도서 판매 데이터를 기준으로 저자 별, 카테고리 별 매출액(TOTAL_SALES = 판매량 * 판매가) 을 구하여, 저자 ID(AUTHOR_ID), 저자명(AUTHOR_NAME), 카테고리(CATEGORY), 매출액(SALES) 리스트를 출력하는 SQL문을 작성해주세요.
결과는 저자 ID를 오름차순으로, 저자 ID가 같다면 카테고리를 내림차순 정렬해주세요.
'''

SELECT A.AUTHOR_ID, AUTHOR_NAME, CATEGORY, SUM(PRICE*SALES) AS TOTAL_SALES
FROM BOOK B, AUTHOR A, BOOK_SALES BS
WHERE B.BOOK_ID = BS.BOOK_ID
AND B.AUTHOR_ID = A.AUTHOR_ID
AND DATE_FORMAT(SALES_DATE, '%Y%m') = '202201'
GROUP BY AUTHOR_ID, CATEGORY
ORDER BY AUTHOR_ID, CATEGORY DESC