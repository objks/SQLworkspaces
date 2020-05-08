SELECT nfcid, MIN(TIME) FROM commute WHERE `nfcid`='AAA';

UPDATE `nfc`.`commute` SET `checkout`='2020-03-19 12:31:56' WHERE  `nfcid`='AAA' AND `time`='2020-03-19 10:31:56';

select * from memberinfo where seq <= 10;
-- ?Ž˜?´ì§•ì²˜ë¦? --
select 
     ID, username, email, serialnum
   from 
       (
       select /*+INDEX_DESC(memberinfo pk_board) */
         seq, ID, username, email, serialnum
       from 
         memberinfo
      where seq <= 1 * 10
      )CNT
  where seq > (1 -1) * 10;
  
-- getList --
  select * from memberinfo where
		ID <= 10;
		
select seq_board.nextval from dual;

SELECT seq FROM memberinfo;

select * from memberinfo where
		SEQ <= 10;
		
DELETE FROM memberinfo WHERE  id='mit';

memberinfo; 
SELECT * FROM memberinfo;

select COUNT(*) AS totoaltest from memberinfo where seq > 0;

DELETE FROM `testfarm`.`memberinfo` WHERE  `id`='raven';

select * from admin_memo WHERE 'wendy' = 'wendy';

select * from admin_memo WHERE rno = 2;

select rno, ID, reply, replyer, replydate, updatedate
from admin_memo
where ID =  'wendy';
 
 select rno, ID, reply, replyer, replydate, updatedate
from admin_memo
where ID =  'wendy'
 order by rno
LIMIT 0,10;

select * from admin_memo where ID = 'wendy';

select seq_board.nextval from dual;