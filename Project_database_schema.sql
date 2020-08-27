CREATE SCHEMA MSIS_2603_UNCOUNTABLES;
use MSIS_2603_UNCOUNTABLES;


CREATE TABLE Bank_Details
(
	Payment_method_id    INTEGER NOT NULL,
	Bank_id              INTEGER NULL,
	Bank_Name            VARCHAR(50) NULL,
	Account_Number       VARCHAR(50) NULL,
	Created_Date         DATE NULL,
	Last_Updated_Date    DATE NULL
);

ALTER TABLE Bank_Details
ADD CONSTRAINT XPKBank_Details PRIMARY KEY (Payment_method_id);

CREATE TABLE Categories
(
	Category_id          INTEGER NOT NULL,
	Category_Desc        VARCHAR(50) NULL,
	Created_Date         DATE NULL,
	Last_Updated_Date    DATE NULL,
	Transaction_ID       INTEGER NULL
);

ALTER TABLE Categories
ADD CONSTRAINT XPKCategories PRIMARY KEY (Category_id);

CREATE TABLE Credit_card_details
(
	Payment_method_id    INTEGER NOT NULL,
	Card_id              INTEGER NULL,
	Credit_card_number   INTEGER NULL,
	Credit_card_expiry_date DATE NULL,
	Issuing_Company      VARCHAR(100) NULL,
	Created_date         DATE NULL,
	Last_Updated_Date    DATE NULL
);

ALTER TABLE Credit_card_details
ADD CONSTRAINT XPKCredit_card_details PRIMARY KEY (Payment_method_id);

CREATE TABLE Future_bills
(
	User_id              INTEGER NULL,
	Bill_id              INTEGER NOT NULL,
	Invoice_number       VARCHAR(25) NULL,
	Bill_date            DATE NULL,
	Due_date             DATE NULL,
	Bill_amount          DECIMAL(10,3) NULL,
	Created_date         DATE NULL,
	Last_update_date     DATE NULL
);

ALTER TABLE Future_bills
ADD CONSTRAINT XPKFuture_bills PRIMARY KEY (Bill_id);

CREATE TABLE Payment_Method_Details
(
	User_id              INTEGER NOT NULL,
	Payment_method_id    INTEGER NOT NULL,
	Pymt_method_type     VARCHAR(1) NULL,
	Created_Date         DATE NULL,
	Last_Updated_Date    DATE NULL
);

ALTER TABLE Payment_Method_Details
ADD CONSTRAINT XPKPayment_Method_Details PRIMARY KEY (Payment_method_id);

CREATE TABLE Security_Questions
(
	Question_ID          INTEGER NOT NULL,
	Security_Q_Desc      VARCHAR(100) NULL,
	Created_Date         DATE NULL,
	Last_Updated_Date    DATE NULL
);

ALTER TABLE Security_Questions
ADD CONSTRAINT XPKSecurity_Questions PRIMARY KEY (Question_ID);

CREATE TABLE Transaction_Details
(
	Payment_method_id    INTEGER NOT NULL,
	Transaction_ID       INTEGER NOT NULL,
	Category_ID          INTEGER NULL,
	Transaction_Date     DATE NULL,
	Transaction_Amt      DECIMAL(10,3) NULL,
	Created_Date         DATE NULL,
	Last_Updated_date    DATE NULL
);

ALTER TABLE Transaction_Details
ADD CONSTRAINT XPKTransaction_Details PRIMARY KEY (Transaction_ID);

CREATE TABLE Transaction_Split_Details
(
	Transaction_ID       INTEGER NOT NULL,
	Split_ID             INTEGER NOT NULL,
	Split_with_contact   VARCHAR(50) NULL,
	Split_Percent        DECIMAL(5,2) NULL,
	Created_Date         DATE NULL,
	Last_Updated_Date    DATE NULL
);

ALTER TABLE Transaction_Split_Details
ADD CONSTRAINT XPKTransaction_Split_Details PRIMARY KEY (Transaction_ID,Split_ID);

CREATE TABLE User_Categories
(
	User_id              INTEGER NOT NULL,
	User_Category_ID     INTEGER NOT NULL,
	Category_Desc        VARCHAR(50) NULL,
	Created_Date         DATE NULL,
	Last_Updated_Date    DATE NULL
);

ALTER TABLE User_Categories
ADD CONSTRAINT XPKUser_Categories PRIMARY KEY (User_Category_ID);

CREATE TABLE User_Details
(
	User_id              INTEGER NOT NULL,
	First_Name           VARCHAR(45) NULL,
	Last_name            VARCHAR(45) NULL,
	Phone                VARCHAR(15) NULL,
	Email                VARCHAR(45) NULL,
	Address              VARCHAR(100) NULL,
	Created_Date         DATE NULL,
	Last_Updated_Date    DATE NULL
);

ALTER TABLE User_Details
ADD CONSTRAINT XPKUser_Details PRIMARY KEY (User_id);

CREATE TABLE User_Login_Details
(
	User_id              INTEGER NOT NULL,
	Login_id             VARCHAR(45) NOT NULL,
	Password             VARCHAR(45) NULL,
	Security_Question_1  INTEGER NULL,
	Answer_1             VARCHAR(45) NULL,
	Security_Question_2  INTEGER NULL,
	Answer_2             VARCHAR(45) NULL,
	Password_Change_Date DATE NULL,
	Created_Date         DATE NULL,
	Last_Updated_Date    DATE NULL,
	Question_ID          INTEGER NOT NULL
);

ALTER TABLE User_Login_Details
ADD CONSTRAINT XPKUser_Login_Details PRIMARY KEY (User_id,Login_id);

ALTER TABLE Bank_Details
ADD CONSTRAINT R_15 FOREIGN KEY (Payment_method_id) REFERENCES Payment_Method_Details (Payment_method_id)
		ON DELETE CASCADE;

ALTER TABLE Categories
ADD CONSTRAINT R_11 FOREIGN KEY (Transaction_ID) REFERENCES Transaction_Details (Transaction_ID);

ALTER TABLE Credit_card_details
ADD CONSTRAINT R_22 FOREIGN KEY (Payment_method_id) REFERENCES Payment_Method_Details (Payment_method_id)
		ON DELETE CASCADE;

ALTER TABLE Future_bills
ADD CONSTRAINT R_23 FOREIGN KEY (User_id) REFERENCES User_Details (User_id);

ALTER TABLE Payment_Method_Details
ADD CONSTRAINT R_7 FOREIGN KEY (User_id) REFERENCES User_Details (User_id);

ALTER TABLE Transaction_Details
ADD CONSTRAINT R_9 FOREIGN KEY (Payment_method_id) REFERENCES Payment_Method_Details (Payment_method_id);

ALTER TABLE Transaction_Split_Details
ADD CONSTRAINT R_10 FOREIGN KEY (Transaction_ID) REFERENCES Transaction_Details (Transaction_ID);

ALTER TABLE User_Categories
ADD CONSTRAINT R_8 FOREIGN KEY (User_id) REFERENCES User_Details (User_id);

ALTER TABLE User_Login_Details
ADD CONSTRAINT R_6 FOREIGN KEY (User_id) REFERENCES User_Details (User_id);

ALTER TABLE User_Login_Details
ADD CONSTRAINT R_12 FOREIGN KEY (Question_ID) REFERENCES Security_Questions (Question_ID);
