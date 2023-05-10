create table Customer
(
	cust_Name nvarchar(250) not null primary key,
	cust_Email varchar(max) not null,
	cust_Password varchar(max) not null,
	cust_ConfarmPassword varchar(max) not null,
	cust_Phone varchar(11) not null,
	cust_Address varchar(max) not null,
	cust_Quistion nvarchar(max) not null,
	cust_Answer nvarchar(max) not null
)

create table Orders
(
	Id int identity(1,1) primary key,
	order_Quntaty nvarchar(max),
	order_Total decimal(18,2),
	order_Date date,
	order_Address nvarchar(max),
	City nvarchar(max),
	Street nvarchar(max),
	UserName nvarchar(250) not null
)

create table Product
(
	p_ID int identity(1,1) primary key,
	p_Name nvarchar(max) not null,
	p_Price int not null,
	p_Quantity int not null,
	c_ID int not null
)

create table Category
(
	c_ID int primary key,
	c_Name nvarchar(50) not null
)

create table OrderDetails
(
	Id int primary key,
	order_Id int ,
	p_Id int ,
	Quantity int ,
	Price decimal(18,2) ,
	Total decimal(18,2) 
)

create table Visa
(
	v_No int primary key,
	Email nvarchar(100),
	Address nvarchar(100),
	State nvarchar(100),
	Zip_Code nvarchar(100),
	Exp_Year nvarchar(100),
	Exp_Month nvarchar(100),
	CVV nvarchar(100),
	Card_Number nvarchar(100),
	Name_On_Card nvarchar(100),
	c_Name nvarchar(250)
)

alter table Orders add foreign key (UserName) references Customer (cust_Name)

alter table Visa add foreign key (c_Name) references Customer (cust_Name)

alter table Product add foreign key (c_ID) references Category (c_ID)

alter table OrderDetails add foreign key (order_Id) references Orders (Id)

alter table OrderDetails add foreign key (p_Id) references Product (p_Id)