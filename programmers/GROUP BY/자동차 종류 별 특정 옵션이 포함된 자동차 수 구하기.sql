# 코딩테스트 연습 < GROUP BY < 자동차 종류 별 특정 옵션이 포함된 자동차 수 구하기

'''
문제 설명
다음은 어느 자동차 대여 회사에서 대여중인 자동차들의 정보를 담은 CAR_RENTAL_COMPANY_CAR 테이블입니다. 
CAR_RENTAL_COMPANY_CAR 테이블은 아래와 같은 구조로 되어있으며, CAR_ID, CAR_TYPE, DAILY_FEE, OPTIONS 는 각각 자동차 ID, 자동차 종류, 일일 대여 요금(원), 자동차 옵션 리스트를 나타냅니다.

문제
CAR_RENTAL_COMPANY_CAR 테이블에서 '통풍시트', '열선시트', '가죽시트' 중 하나 이상의 옵션이 포함된 자동차가 자동차 종류 별로 몇 대인지 출력하는 SQL문을 작성해주세요. 
이때 자동차 수에 대한 컬럼명은 CARS로 지정하고, 결과는 자동차 종류를 기준으로 오름차순 정렬해주세요.
'''

SELECT CAR_TYPE, COUNT(CAR_ID) AS CARS
FROM CAR_RENTAL_COMPANY_CAR
WHERE OPTIONS LIKE '%통풍시트%' 
OR OPTIONS LIKE '%열선시트%' 
OR OPTIONS LIKE '%가죽시트%'
# WHERE OPTIONS REGEXP '통풍시트|열선시트|가죽시트'
GROUP BY CAR_TYPE
ORDER BY CAR_TYPE
