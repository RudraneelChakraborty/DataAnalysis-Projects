CREATE TABLE books (
    id  number GENERATED BY DEFAULT ON NULL AS IDENTITY PRIMARY KEY,
    title VARCHAR2(255) NOT NULL,
    author VARCHAR2(255) NOT NULL,
    genre VARCHAR2(100),
    year_published NUMBER,
    summary CLOB
);

CREATE TABLE reviews (
    id NUMBER GENERATED BY DEFAULT on null AS IDENTITY PRIMARY KEY,
    book_id NUMBER NOT NULL,
    user_id VARCHAR2(255) NOT NULL,
    review_text CLOB,
    rating NUMBER,
    FOREIGN KEY (book_id) REFERENCES books(id)
);


--select * from reviews;

--insert into books values(null,'My Book','Me','sample','2012','anyminny');
--insert into reviews values(null,2,1,'sample',5);

--drop table books;