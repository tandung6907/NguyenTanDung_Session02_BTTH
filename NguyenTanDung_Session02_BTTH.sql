use homework;

create table book(
	book_id char(5) primary key,
    book_name varchar(200) not null,
    quantity int not null check (quantity > 0),
    rent decimal(10,2) default 5000
);

create table borrow_books(
	borrow_id int auto_increment primary key,
    book_id char(5) not null,
    foreign key (book_id) references book(book_id),
    borrow_date timestamp default (current_timestamp)
);
