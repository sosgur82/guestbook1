drop SEQUENCE SEQ_guestbook;

create sequence seq_guestbook
start with 1
increment BY 1
MAXVALUE 9999999999;

--insert

insert into guestbook values (seq_guestbook.nextval,'둘리','1234','호이~',sysdate);

insert into guestbook values (seq_guestbook.nextval,'마이콜','1234','구공탄라면',sysdate);

select no,name,content, to_char(reg_date,'yyyy-mm-dd hh:mi:ss') from guestbook order by no desc;

--delete

delete from guestbook where no = 1 and password = '1234';

rollback;

commit;