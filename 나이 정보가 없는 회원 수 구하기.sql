# 코딩테스트 연습 < IS NULL < 나이 정보가 없는 회원 수 구하기

'''
문제 설명
다음은 어느 의류 쇼핑몰에 가입한 회원 정보를 담은 USER_INFO 테이블입니다. 
USER_INFO 테이블은 아래와 같은 구조로 되어있으며, USER_ID, GENDER, AGE, JOINED는 각각 회원 ID, 성별, 나이, 가입일을 나타냅니다.

문제
USER_INFO 테이블에서 나이 정보가 없는 회원이 몇 명인지 출력하는 SQL문을 작성해주세요. 
이때 컬럼명은 USERS로 지정해주세요.
'''

SELECT COUNT(*) AS USERS
FROM USER_INFO
WHERE AGE IS NULL