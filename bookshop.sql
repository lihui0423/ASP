/*drop table  admin
drop table  book 
drop table  category 
drop table  orderDetail 
drop table  orders 
drop table  users */
use tempdb
go
drop  database bookshop
go
create database bookshop
go
use bookshop
go 
CREATE TABLE     book (	
   bookID      int    not null  identity(1,1)  primary key,   --ͼ����
   ISBN      varchar(50)  not null,                             
   bookName       varchar(50)  not null,                      --����
   bookImage       varchar(50) ,                              --����ͼƬ���ļ�·����
  categoryID    int  not null,                                --���
  author   varchar(50)  not null,                             --����
   price       money  not null,                               --�۸�
   description       varchar(200)                             --����
) 
go
CREATE TABLE  category(
  categoryID  int    not null  identity(1,1)  primary key,  --�����
  categoryName  varchar(30)  not null                       --�����
)
go
CREATE TABLE      orderDetail 
(

   orderDetailID     int     identity(1,1) not null  primary key, --������ϸ
   orderID       int  not null,                                   --������
   bookID       int  NOT null,                                    --���
   quantity     int   not null ,                                  --����
   price       money    not null                                  --����
) 
go
CREATE TABLE      orders (
orderID       int   identity(1,1)  not null  primary key,  --������
username     varchar(15)   not null,                       --ע����
truename     varchar(15)   not null,                       --��ʵ��
postcode     varchar(10)   not null,                       --�ʱ�                
address     varchar(50)   not null,                        --��ַ
tel     varchar(20)   not null,                            --�绰
memo     varchar(200)    null,                             --����
totalPrice  money   not null,                              --�ܼ�
isPay    char(1)   not null,                               --'0'  δ  '1' �Ѹ���
isDeliver    char(1)   not null,                           --'0'  δ  '1' �ѷ���
orderDate       datetime      not null                     --�µ�����  
)
go
CREATE TABLE     users(
	  userName     varchar(15)   not null   primary key,       --ע����
          PWD     varchar(20)   not null,                          --����
	  trueName     varchar(15)  ,                     --��ʵ�� 
          sex         varchar(2)     ,                  --
	  address     varchar(50)  ,                      --��ַ
	  postcode     varchar(6)  ,                      --�ʱ�
	  tel     varchar(20)   ,                             --�绰
	  email     varchar(50)   not null,
	question     varchar(50)    not null ,
	answer    varchar(50)     not null

) 
go
CREATE TABLE   admin(
userName   varchar(15)     not null   primary key,
PWD   varchar(20)   not null 
 
)
go
insert into admin  values('admin','123')
go

insert into book( ISBN,bookName ,bookImage,categoryID,Author,Price,Description) values('789','�ļ�Ӣ�ﳿ������50ƪ','Ӣ��1.bmp',2,'�³� ���',15,'���Ƭ��ذ��Ȿ����Ϊ��һ���ʶ��زĵ����оʹ���ش��ˣ���ÿһƪ�ʶ������У����ǰ����ļ����ԵĹ���Ϊ���¾�����������໷�ڣ�������ͬѧ������ļ����Ե���⡣')
insert into book( ISBN,bookName ,bookImage,categoryID,Author,Price,Description) values('856','������ǵ���','Ӣ��2.bmp',2,'����',16,'���ɸ�¥ƽ������Ҫѧ��Ӣ������ǻ����������ƺ�Ҳһֱ���ڶ�Ӣ�ﰮ������ͷ��Զ��ʹ�������п����߿��������ļ�������������TOEFL������˼��GRE����һ������һ�����˵á�')
insert into book( ISBN,bookName ,bookImage,categoryID,Author,Price,Description) values('586','�ǼҴ�Ժ','��ѧ1.jpg',3,'���㺣',25,'С˵�������˹�����ӹ�������£�������·��׷Ѱ����ͨ���¡��������·���̡���ս���������������Ϊ���������濪����������ڵ�崸��ˣ���������ƽʵ������������ζ�������������ղ��ܵ��Ķ����ܣ�')
insert into book( ISBN,bookName ,bookImage,categoryID,Author,Price,Description) values('868','���ഺ�йص�����','��ѧ2.jpg',3,'Ҷ��',36,'����ı���Ҷ�����ݵ�ͬ�����Ӿ磬���������˷С˵����ľ���������������Ա�����Ժ���ӵ�������ġ����һ�������ܵ���һ������˿��׷�������Ҵ�����������֮�ƣ�����Ϊ���Ӿ��ġ�������õ����ӡ���')
insert into book( ISBN,bookName ,bookImage,categoryID,Author,Price,Description) values('258','���Ѵ󻭼�','����1.jpg',4,'�����Ļ���������',24,'����չ�ֵ��ǡ����ѡ��ĳ����Ѥ�õĲ�ɫ��������ҳ��廭����Ʒ�������񣬳�����������ǿ���ݣ�����ǧ���ʻ���Ʒ�о���ϸѡ���ϰٷ������������״νἯ���������֣�')
insert into book( ISBN,bookName ,bookImage,categoryID,Author,Price,Description) values('528','����������ϼ�','����2.jpg',4,'����� ֣��D',28,'ȫ�������漰�ִ�������ƵĻ������ۡ���Ƴ������ڿռ���Ʒ����Լ����ȣ����⣬���㷺���������ڿռ�߶ȵĲο������Լ������ˡ�װ�������Ͳ��ֹ���ʵ����ͼ��������Ƶı��ּ�����')
insert into book( ISBN,bookName ,bookImage,categoryID,Author,Price,Description) values('123','ASP�̳�','asp.jpg',1,'��ʤ',20,'����ASP����')
insert into book( ISBN,bookName ,bookImage,categoryID,Author,Price,Description) values('456','Java����','java.jpg',1,'��ϼ',19.8,'����Java����')
go
insert into category(categoryName)  values('�����')
insert into category(categoryName)  values('����')
insert into category(categoryName)  values('��ѧ')
insert into category(categoryName)  values('����')
go

insert into users( userName, trueName,sex,PWD, address, postcode ,tel, email,question,answer) values('dave','����','1','123', '��ɳ' ,'412001','2222222',  'dave@163.com','����ϲ���Ķ��','cat')
insert into users( userName, trueName, sex,PWD, address, postcode ,tel, email,question,answer) values('wjh','�ܲ�','1','123', '�㽭' ,'555555','666666',  'dave@163.com','����ϲ���Ķ��','cat')
go
insert into orders(username,truename,postcode,address,tel,TotalPrice,memo,isPay,IsDeliver,orderDate ) values('dave','����','��ɳ' ,'412001','2222222',62.5,'�Ȿ���й����?','1','1','2007-06-06')
insert into orderDetail(orderID,bookID,quantity,price) values(1,1,5,12.5)