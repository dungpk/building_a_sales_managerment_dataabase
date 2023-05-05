use quanlybanhang;

create table customer(
	customerID int 				not null auto_increment primary key,
    customerName varchar(30)	not null ,
    customerAge int 			not null
);

create table Orders(
	orderID int					not null auto_increment primary key,
    customerID int 				not null,
    orderDate	datetime		not null,
    orderTotalPrice int 		default 0,
    foreign key(customerID) references customer(customerID)
);

create table Product(
	ProductID int 				not null auto_increment primary key,
    ProductName varchar(50) 	not null,
    ProductPrice int 			not null
);


create table OrderDetail(
	OderdetailID int 				not null,
    OderdetailProductID int 		not null,
    OderdetailQuantity	int 		default 0
);
