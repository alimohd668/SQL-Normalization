CREATE TABLE Members (
    MemberID INTEGER PRIMARY KEY,
    MemberName TEXT NOT NULL,
    MemberAddress TEXT NOT NULL
);

CREATE TABLE Books (
    BookID INTEGER PRIMARY KEY AUTOINCREMENT,
    BookTitle TEXT NOT NULL,
    Author TEXT NOT NULL
);

CREATE TABLE BorrowedBooks (
    MemberID INTEGER,
    BookID INTEGER,
    DueDate DATE NOT NULL,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

INSERT INTO Members (MemberID, MemberName, MemberAddress) VALUES
(1001, 'John Smith', '123 Main St'),
(1002, 'Jane Doe', '456 Elm St');

INSERT INTO Books (BookTitle, Author) VALUES
('The Lord of the Rings', 'J.R.R Tolkien'),
('To Kill a Mokingbird', 'Harper Lee'),
("The Hitchhiker's Guide to the Galaxy", 'Douglas Adams');

-- Assuming the BookIDs are assigned in the order the books were inserted
INSERT INTO BorrowedBooks (MemberID, BookID, DueDate) VALUES
(1001, 1, '2024-05-20'),
(1002, 2, '2024-05-15'),
(1001, 3, '2024-06-01');