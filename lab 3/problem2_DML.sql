/*question 1*/
select name as member_name from lmember
where join_date > ('2000-9-1');

/*question 2*/
select * from lmember
where join_date BETWEEN ('1995-10-1') AND ('2019-10-1');

/*question 3*/
select * from(
select b.book_id, b.title, b.price, b.pub_id, b.category_id, p.name as publisher_name
from book as b
left join publisher as p ON p.pub_id = b.pub_id
) as r 
where publisher_name='Oxford' or price between 15 and 20;

/*question 4*/
select title from(
select bb.book_id , bb.member_id ,  b.title , lm.name
from borrowing_book as bb
left join book as b on bb.book_id = b.book_id
left join lmember as lm on bb.member_id = lm.member_id
where lm.name="Scot Reinger"
)as result;

/*question 5*/
select name from(
select bb.member_id , bb.borrow_date ,lm.name 
from borrowing_book as bb
left join lmember as lm on bb.member_id = lm.member_id
where bb.borrow_date between '2019-1-1' and '2019-12-31'
)as result;