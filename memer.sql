INSERT INTO member VALUES('test','ttt','테스트',10,'남자','a@a.com');

DELETE FROM member WHERE id=?;

SELECT id FROM member;

/* ex> id가 abc인 회원의 정보보기 쿼리 */
SELECT * 
FROM member 
WHERE id='abc';

/* ex> id가 abc가 아닌 회원의 name과 age 확인하기 */
SELECT NAME, age
FROM member
WHERE id!='abc';

/* ex> 나이가 10이상인 회원의 id만 출력 */
SELECT id
FROM member
WHERE age >= 10;

/* id가 abc이고 패스워드가 1234인 회원의 모든 정보를 보고싶다 */
SELECT *
FROM member
WHERE id='abc' && PASSWORD = '1234';

/* 전체 회원정보를 id의 오름차순으로 보고싶다 */
SELECT *
FROM member
ORDER BY id DESC;

/* 남자와 여자의 평균나이를 알고싶다. */
SELECT gender, AVG(age)
FROM member
GROUP BY gender;

SELECT AVG(age)
FROM member
WHERE gender='남자';

/* 해당 id에 상세내용보기 SQL ex > id가 abc인 회원 정보 보기 */
SELECT * FROM member
WHERE id='abc';

/* 로그인을 위해 로그인 id의 패스워드를 가져오는 SQL
ex > id가 abc인 회원의 패스워드 가져오기 */
SELECT PASSWORD FROM member WHERE id='abc';