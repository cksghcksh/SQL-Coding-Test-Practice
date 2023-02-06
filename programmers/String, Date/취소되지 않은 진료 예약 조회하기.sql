# 코딩테스트 연습 < String, Date < 취소되지 않은 진료 예약 조회하기

'''
문제 설명
다음은 환자 정보를 담은 PATIENT 테이블과 의사 정보를 담은 DOCTOR 테이블, 그리고 진료 예약목록을 담은 APPOINTMENT에 대한 테이블입니다. 
PATIENT 테이블은 다음과 같으며 PT_NO, PT_NAME, GEND_CD, AGE, TLNO는 각각 환자번호, 환자이름, 성별코드, 나이, 전화번호를 의미합니다.

문제
PATIENT, DOCTOR 그리고 APPOINTMENT 테이블에서 2022년 4월 13일 취소되지 않은 흉부외과(CS) 진료 예약 내역을 조회하는 SQL문을 작성해주세요. 진료예약번호, 환자이름, 환자번호, 진료과코드, 의사이름, 진료예약일시 항목이 출력되도록 작성해주세요. 
결과는 진료예약일시를 기준으로 오름차순 정렬해주세요.
'''

SELECT APNT_NO, PT_NAME, PA.PT_NO, DO.MCDP_CD, DR_NAME, APNT_YMD
FROM PATIENT PA, DOCTOR DO, APPOINTMENT AP
WHERE PA.PT_NO = AP.PT_NO
AND DO.DR_ID = AP.MDDR_ID
AND DATE_FORMAT(APNT_YMD, '%Y%m%d') = '20220413'
AND APNT_CNCL_YMD IS NULL
AND DO.MCDP_CD	= 'CS'
ORDER BY APNT_YMD