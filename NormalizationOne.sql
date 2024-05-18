CREATE TABLE Employees (
    EmployeeID INTEGER PRIMARY KEY,
    EmployeeName TEXT NOT NULL
);

CREATE TABLE Projects (
    ProjectID INTEGER PRIMARY KEY,
    ProjectName TEXT NOT NULL
);

CREATE TABLE Tasks (
    TaskID INTEGER PRIMARY KEY,
    TaskDescription TEXT NOT NULL,
    TaskStartDate DATE NOT NULL,
    TaskEndDate DATE NOT NULL,
    EmployeeID INTEGER,
    ProjectID INTEGER,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID)
);

INSERT INTO Employees (EmployeeID, EmployeeName) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie');

INSERT INTO Projects (ProjectID, ProjectName) VALUES
(101, 'ProjectA'),
(102, 'ProjectB'),
(103, 'ProjectC');

INSERT INTO Tasks (TaskID, TaskDescription, TaskStartDate, TaskEndDate, EmployeeID, ProjectID) VALUES
(1, 'Design UI', '2022-01-01', '2022-02-01', 1, 101),
(2, 'Code Backend', '2022-02-02', '2022-03-01', 1, 101),
(3, 'Marketing Analysis', '2022-03-02', '2022-04-01', 1, 102),
(4, 'Testing', '2022-01-15', '2022-02-15', 2, 101),
(5, 'Data Analysis', '2022-04-02', '2022-05-01', 2, 103),
(6, 'Content Creation', '2022-03-15', '2022-04-15', 3, 102);