use homework;

create table book(
	book_id char(5) primary key,
    book_name varchar(200) not null,
    quantity int check (quantity > 0),
    rent decimal(10,2) default 5000
);

create table borrow_books(
	borrow_id int auto_increment primary key,
    book_id char(5),
    foreign key (book_id) references book(book_id),
    borrow_date date default (current_date)
);