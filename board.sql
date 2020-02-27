select board_subject, board_file, board_content from board where board_num = 1;

SELECT max(board_num) from board;

/* 조회수 업데이트 쿼리 ex> 1번글 */
UPDATE board SET board_readcount = board_readcount+1
WHERE board_num=1;

UPDATE board SET board_subject = '첫번째 글_수정',board_content ='냉무+수정'
WHERE board_name=1;

/* ex > 1번글의 패스워드 보기 */
SELECT board_pass FROM board WHERE board_num = 1;

/* 9번글 삭제 */
DELETE FROM board WHERE board_num =9;

/* 전체 게시글 개수 보기 */
SELECT COUNT(*) FROM board;

/* 게시글 목록보기 */
SELECT * FROM board ORDER BY re_ref DESC, re_step LIMIT 0,5;

/* ex) 3번 글의 답글순서 마지막값(최대값) */
SELECT max(re_step) FROM board WHERE re_ref=3;

/* 제목에 답글이 들어가는 글목록 검색 주의 : 출력된 결과 게시글 목록 순서 */
SELECT * 
from board
WHERE (board_subject LIKE '%답글%') AND (board_subject LIKE '%첫%')
ORDER BY re_ref DESC, re_step
LIMIT 0,5;

/* 제목에 답글이 들어가는 글목록 검색 주의 : 출력된 결과 게시글 목록 순서 */
SELECT * 
from board
WHERE board_subject LIKE '%첫%답글%'
ORDER BY re_ref DESC, re_step
LIMIT 0,5;

/* 이름에 '관리'가 들어가는 작성자 이름만 출력 */
select board_name FROM board WHERE board_name LIKE '%관리%';product