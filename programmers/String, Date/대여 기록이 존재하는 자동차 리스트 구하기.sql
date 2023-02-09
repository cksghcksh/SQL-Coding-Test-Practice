# 코딩테스트 연습 < String, Date < 대여 기록이 존재하는 자동차 리스트 구하기

'''
문제 설명
다음은 어느 자동차 대여 회사에서 대여 중인 자동차들의 정보를 담은 CAR_RENTAL_COMPANY_CAR 테이블과 자동차 대여 기록 정보를 담은 CAR_RENTAL_COMPANY_RENTAL_HISTORY 테이블입니다. 
CAR_RENTAL_COMPANY_CAR 테이블은 아래와 같은 구조로 되어있으며, CAR_ID, CAR_TYPE, DAILY_FEE, OPTIONS 는 각각 자동차 ID, 자동차 종류, 일일 대여 요금(원), 자동차 옵션 리스트를 나타냅니다.

문제
CAR_RENTAL_COMPANY_CAR 테이블과 CAR_RENTAL_COMPANY_RENTAL_HISTORY 테이블에서 자동차 종류가 '세단'인 자동차들 중 10월에 대여를 시작한 기록이 있는 자동차 ID 리스트를 출력하는 SQL문을 작성해주세요. 
자동차 ID 리스트는 중복이 없어야 하며, 자동차 ID를 기준으로 내림차순 정렬해주세요.
'''

SELECT CC.CAR_ID
FROM CAR_RENTAL_COMPANY_CAR CC, CAR_RENTAL_COMPANY_RENTAL_HISTORY CH
WHERE CC.CAR_ID = CH.CAR_ID
AND CAR_TYPE = '세단'
AND MONTH(START_DATE) = 10
GROUP BY CAR_ID
ORDER BY CAR_ID DESC