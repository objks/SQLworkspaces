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
values (SEQ_BOARD.NEXTVAL, '�׽�Ʈ ����', '�׽�Ʈ ����', 'user00');

select * from TBL_BOARD;

commit;

select * from tbl_board where bno>0;

INSERT into TBL_BOARD (bno, title, content, writer) values (SEQ_BOARD.NEXTVAL, '���� �ۼ��ϴ� ��', 
'���� �ۼ��ϴ� ����', '������' ); 

select seq_board.nextval from dual;

update tbl_board set title='aaa ����', content='����', writer= '����', updateDate = sysdate WHERE bno = 1;

select * from tab;

-- �۹�ȣ bno�� 3�� ����� �ุ ���
select BNO, TITLE from TBL_BOARD where mod(BNO,3)=0;

INSERT into TBL_BOARD (bno, title, content, writer)
(select SEQ_BOARD.NEXTVAL, title, content, writer from tbl_board);

commit;

select * from(select rownum rn, tbl_board.* from tbl_board where rownum <= 20) where rn > 10;

select * from(select rownum rn, tbl_board.* from tbl_board where rownum <= 100000) where rn > 9999;

-- ������ �۸� �������� ���
select BNO, TITLE,WRITER from TBL_BOARD where WRITER like '������';

select * from(select rownum rn, tbl_board.* from tbl_board where writer='user00' and rownum <= 10 * 1);

select count(*) from tbl_board;

select count(*) from TBL_BOARD where WRITER like '������';

-- �۹�ȣ 3 ~ 200���� �����˻�
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