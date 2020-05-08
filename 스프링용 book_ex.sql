create SEQUENCE seq_board;

create TABLE tbl_board (
bno number(10, 0),
title varchar2(200) not null,
content varchar2(2000) not null,
writer varchar2(50) not null,
regdate date default sysdate
);

alter table tbl_board add CONSTRAINT pk_board
PRIMARY key (bno);

INSERT into TBL_BOARD (bno, title, content, writer)
values (SEQ_BOARD.NEXTVAL, '테스트 제목', '테스트 내용', 'user00');

select * from TBL_BOARD;

commit;

select * from tbl_board where bno>0;

INSERT into TBL_BOARD (bno, title, content, writer) values (SEQ_BOARD.NEXTVAL, '새로 작성하는 글', 
'새로 작성하는 내용', '관리자' ); 

select seq_board.nextval from dual;

update tbl_board set title='aaa 제목', content='내용', writer= '변경', updateDate = sysdate WHERE bno = 1;

select * from tab;

-- 글번호 bno가 3의 배수인 행만 출력
select BNO, TITLE from TBL_BOARD where mod(BNO,3)=0;

INSERT into TBL_BOARD (bno, title, content, writer)
(select SEQ_BOARD.NEXTVAL, title, content, writer from tbl_board);

commit;

select * from(select rownum rn, tbl_board.* from tbl_board where rownum <= 20) where rn > 10;

select * from(select rownum rn, tbl_board.* from tbl_board where rownum <= 100000) where rn > 9999;

-- 관리자 글만 가져오게 출력
select BNO, TITLE,WRITER from TBL_BOARD where WRITER like '관리자';

select * from(select rownum rn, tbl_board.* from tbl_board where writer='user00' and rownum <= 10 * 1);

select count(*) from tbl_board;

select count(*) from TBL_BOARD where WRITER like '관리자';

-- 글번호 3 ~ 200까지 구간검색
select count(*) from TBL_BOARD where BNO between 3 and 200;

select  rno, bno, reply, replyer, replydate, updatedate
 from 
   (
    select /*+INDEX(admin_memo idx_reply) */ 
      rno, bno, reply, replyer, replyDate, updatedate
    from TBL_REPLY
    where bno =  73750
    and rno > 0
    and rno <= 1 * 1
   ) where rno > 1 * 1;