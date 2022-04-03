USE library;

CREATE TABLE CATEGORY (
	category_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(200) NOT NULL
);

CREATE TABLE PUBLISHER (
	pub_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(200) NOT NULL,
    address VARCHAR(200) NOT NULL
);

CREATE TABLE LMEMBER (
	member_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(200) NOT NULL,
    address VARCHAR(200) NOT NULL,
    join_date DATETIME NOT NULL
);

CREATE TABLE BOOK (
	book_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(200) NOT NULL,
    price FLOAT NOT NULL,
    pub_id INT,
    category_id INT,
    FOREIGN KEY (pub_id) REFERENCES PUBLISHER(pub_id),
    FOREIGN KEY (category_id) REFERENCES CATEGORY(category_id)
);

CREATE TABLE BORROWING_BOOK (
	member_id INT,
    book_id INT,
    borrow_date DATETIME NOT NULL,
    PRIMARY KEY(member_id , book_id, borrow_date),
    due_date DATETIME ,
    return_date DATETIME,
    FOREIGN KEY (book_id) REFERENCES BOOK(book_id),
    FOREIGN KEY (member_id) REFERENCES LMEMBER(member_id)
);