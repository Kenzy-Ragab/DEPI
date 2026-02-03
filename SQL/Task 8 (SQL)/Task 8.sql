----------------------Part 01----------------------
----------------------ITI DB-----------------------
--1
CREATE TRIGGER tr_PreventDeptInsert ON Department
INSTEAD OF INSERT
AS BEGIN
	PRINT 'You cannot insert a new record in the Department table.'
END

--2
CREATE TABLE StudentAudit ( [Server User Name] VARCHAR(100), [Date] DATETIME, Note VARCHAR(MAX) )

--3
CREATE TRIGGER tr_StudentInsertAudit ON Student 
AFTER INSERT
AS BEGIN
	DECLARE @id INT SELECT @id = St_Id FROM inserted
	INSERT INTO StudentAudit ([Server User Name], [Date], Note)
	VALUES(
    SUSER_NAME(), GETDATE(), SUSER_NAME() + ' Insert New Row with Key = ' +
	CAST(@id AS VARCHAR) + ' in table Student'
	)
END

--4
CREATE TRIGGER tr_StudentDeleteAudit ON Student
INSTEAD OF DELETE
AS BEGIN
	DECLARE @id INT
	SELECT @id = St_Id FROM deleted
	INSERT INTO StudentAudit ([Server User Name], [Date], Note)
	VALUES(
    SUSER_NAME(), GETDATE(), 'try to delete Row with id = ' + CAST(@id AS VARCHAR)
	)
END

----------------------Part 02----------------------
---------------------------------------------------

--1 (Use MyCompany DB)
CREATE TRIGGER TR_PREVENT_EMP_INSERT_MARCH ON EMPLOYEE
FOR INSERT
AS BEGIN
	IF DATENAME(MONTH, GETDATE()) = 'MARCH'
	BEGIN
	ROLLBACK TRANSACTION
	RAISERROR('INSERTION IS NOT ALLOWED IN MARCH', 16, 1)
	END
END

-----------------Use SD32-Company--------------

--2 (CREATE AUDIT TABLE)
CREATE TABLE PROJECT_AUDIT
(
	PROJECTNO VARCHAR(10),USERNAME VARCHAR(100), MODIFIEDDATE DATETIME,
	BUDGET_OLD INT, BUDGET_NEW INT
)

--2 (CREATE AUDIT TRIGGER)
CREATE TRIGGER TR_AUDIT_PROJECT_BUDGET
ON PROJECT
AFTER UPDATE
AS BEGIN
	IF UPDATE(BUDGET)
	BEGIN
	INSERT INTO PROJECT_AUDIT (PROJECTNO, USERNAME, MODIFIEDDATE, BUDGET_OLD, BUDGET_NEW)
	SELECT D.PNUMBER, SUSER_NAME(), GETDATE(), D.BUDGET, I.BUDGET
	FROM DELETED D
	JOIN INSERTED I ON D.PNUMBER = I.PNUMBER
	END
END


----------------------Part 03----------------------
--------------------Use ITI DB---------------------

--1
CREATE CLUSTERED INDEX IX_Dept_HireDate ON Department(Manager_hiredate)
--It will fail because a table can have only one clustered index.

--2
CREATE UNIQUE INDEX IX_Student_Age ON Student(St_Age)

--3
CREATE LOGIN RouteStudent WITH PASSWORD = '123'
GO
USE ITI
GO
CREATE USER RouteStudentUser FOR LOGIN RouteStudent

GRANT SELECT, INSERT ON Student TO RouteStudentUser

GRANT SELECT, INSERT ON Course TO RouteStudentUser

DENY DELETE, UPDATE ON Student TO RouteStudentUser

DENY DELETE, UPDATE ON Course TO RouteStudentUser
