# 코딩테스트 연습 > GROUP BY > 조건에 맞는 사용자 정보 조회하기

'''
문제 설명
다음은 중고 거래 게시판 정보를 담은 USED_GOODS_BOARD 테이블과 중고 거래 게시판 첨부파일 정보를 담은 USED_GOODS_FILE 테이블입니다. 
USED_GOODS_BOARD 테이블은 다음과 같으며 BOARD_ID, WRITER_ID, TITLE, CONTENTS, PRICE, CREATED_DATE, STATUS, VIEWS는 게시글 ID, 작성자 ID, 게시글 제목, 게시글 내용, 가격, 작성일, 거래상태, 조회수를 의미합니다.

문제
USED_GOODS_BOARD와 USED_GOODS_USER 테이블에서 완료된 중고 거래의 총금액이 70만 원 이상인 사람의 회원 ID, 닉네임, 총거래금액을 조회하는 SQL문을 작성해주세요. 
결과는 총거래금액을 기준으로 오름차순 정렬해주세요.
'''

SELECT USER_ID, NICKNAME, SUM(PRICE) AS TOTAL_SALES
FROM USED_GOODS_BOARD UGB, USED_GOODS_USER UGU
WHERE UGB.WRITER_ID = UGU.USER_ID
AND STATUS = 'DONE'
GROUP BY USER_ID
HAVING TOTAL_SALES >= 700000
ORDER BY 3