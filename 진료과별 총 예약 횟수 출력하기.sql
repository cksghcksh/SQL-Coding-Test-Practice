# 코딩테스트 연습 < GROUP BY < 진료과별 총 예약 횟수 출력하기

'''
문제 설명
다음은 종합병원의 진료 예약정보를 담은 APPOINTMENT 테이블 입니다.
APPOINTMENT 테이블은 다음과 같으며 APNT_YMD, APNT_NO, PT_NO, MCDP_CD, MDDR_ID, APNT_CNCL_YN, APNT_CNCL_YMD는 각각 진료예약일시, 진료예약번호, 환자번호, 진료과코드, 의사ID, 예약취소여부, 예약취소날짜를 나타냅니다.

문제
APPOINTMENT 테이블에서 2022년 5월에 예약한 환자 수를 진료과코드 별로 조회하는 SQL문을 작성해주세요. 
이때, 컬럼명은 '진료과 코드', '5월예약건수'로 지정해주시고 결과는 진료과별 예약한 환자 수를 기준으로 오름차순 정렬하고, 예약한 환자 수가 같다면 진료과 코드를 기준으로 오름차순 정렬해주세요.
'''

SELECT MCDP_CD AS 진료과코드, COUNT(PT_NO) AS 5월예약건수
FROM APPOINTMENT
WHERE DATE_FORMAT(APNT_YMD, '%Y%m') = '202205'
GROUP BY MCDP_CD
ORDER BY COUNT(PT_NO), MCDP_CD