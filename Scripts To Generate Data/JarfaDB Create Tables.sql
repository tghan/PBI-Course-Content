--/*

DROP TABLE SaleHeader
--
CREATE TABLE SaleHeader
(
	ID int identity,
	SaleBackID int,
	[Date] date,
	CustomerID int,
	RegisteredUser int,
	TotalPrice decimal(38,0),
	TotalDiscount decimal(38,0),
	TotalTax decimal(38,0),
	Caption nvarchar(100),
)
--	================================
DROP TABLE SaleDetail
--
CREATE TABLE SaleDetail
(
	ID int identity,
	SaleHeaderID int,
	[Date] date,
	[ProductID] int,
	Price decimal(38,0),
	Discount decimal(38,0),
	Tax decimal(38,0),
	Amount decimal(38,0),
	Caption nvarchar(100),
)
--	================================
DROP TABLE Products
--
CREATE TABLE Products
(
	ID int identity,
	ParentID int,
	[ProductTitle] Nvarchar(200),
	UnitID int,
)
--	================================
DROP TABLE Units
--
CREATE TABLE Units
(
	ID int identity,
	UnitTitle Nvarchar(200),
)
--	================================
DROP TABLE Users
--
CREATE TABLE Users
(
	ID int identity,
	UserName Nvarchar(200),
	UserPost int,
)
--	================================
DROP TABLE Posts
--
CREATE TABLE Posts
(
	ID int identity,
	PostTitle Nvarchar(200),
)
--	================================
DROP TABLE Customers
--
CREATE TABLE Customers
(
	ID int identity,
	CustomerName Nvarchar(200),
)
--	================================
