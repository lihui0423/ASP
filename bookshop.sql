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
   bookID      int    not null  identity(1,1)  primary key,   --图书编号
   ISBN      varchar(50)  not null,                             
   bookName       varchar(50)  not null,                      --书名
   bookImage       varchar(50) ,                              --封面图片（文件路径）
  categoryID    int  not null,                                --类别
  author   varchar(50)  not null,                             --作者
   price       money  not null,                               --价格
   description       varchar(200)                             --描述
) 
go
CREATE TABLE  category(
  categoryID  int    not null  identity(1,1)  primary key,  --类别编号
  categoryName  varchar(30)  not null                       --类别名
)
go
CREATE TABLE      orderDetail 
(

   orderDetailID     int     identity(1,1) not null  primary key, --订单明细
   orderID       int  not null,                                   --订单号
   bookID       int  NOT null,                                    --书号
   quantity     int   not null ,                                  --数量
   price       money    not null                                  --单价
) 
go
CREATE TABLE      orders (
orderID       int   identity(1,1)  not null  primary key,  --订单号
username     varchar(15)   not null,                       --注册名
truename     varchar(15)   not null,                       --真实名
postcode     varchar(10)   not null,                       --邮编                
address     varchar(50)   not null,                        --地址
tel     varchar(20)   not null,                            --电话
memo     varchar(200)    null,                             --附言
totalPrice  money   not null,                              --总价
isPay    char(1)   not null,                               --'0'  未  '1' 已付款
isDeliver    char(1)   not null,                           --'0'  未  '1' 已发货
orderDate       datetime      not null                     --下单日期  
)
go
CREATE TABLE     users(
	  userName     varchar(15)   not null   primary key,       --注册名
          PWD     varchar(20)   not null,                          --口令
	  trueName     varchar(15)  ,                     --真实名 
          sex         varchar(2)     ,                  --
	  address     varchar(50)  ,                      --地址
	  postcode     varchar(6)  ,                      --邮编
	  tel     varchar(20)   ,                             --电话
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

insert into book( ISBN,bookName ,bookImage,categoryID,Author,Price,Description) values('789','四级英语晨读经典50篇','英语1.bmp',2,'陈超 刘馥',15,'如果片面地把这本书认为是一本朗读素材的罗列就大错特错了，在每一篇朗读文章中，我们按照四级考试的规律为文章精心设置了诸多环节，来帮助同学们深化对四级考试的理解。')
insert into book( ISBN,bookName ,bookImage,categoryID,Author,Price,Description) values('856','练口语记单词','英语2.bmp',2,'胡敏',16,'万丈高楼平地起。想要学好英语，单词是基础，但它似乎也一直是众多英语爱好者心头永远的痛。背完中考背高考，背完四级背六级，背守TOEFL还有雅思，GRE，这一背，怎一苦字了得。')
insert into book( ISBN,bookName ,bookImage,categoryID,Author,Price,Description) values('586','乔家大院','文学1.jpg',3,'朱秀海',25,'小说讲述主人公乔致庸闯荡天下，开辟商路，追寻“汇通天下”理想的心路历程。以战火弥漫的晚清社会为背景，场面开阔大气，情节跌宕感人，文字亲切平实，充满乡土韵味，带给读者欲罢不能的阅读享受！')
insert into book( ISBN,bookName ,bookImage,categoryID,Author,Price,Description) values('868','与青春有关的日子','文学2.jpg',3,'叶京',36,'本书改编自叶京导演的同名电视剧，灵感来自王朔小说《玩的就是心跳》，因其对北京大院孩子的生动描摹，刚一播出就受到了一大批粉丝的追捧，而且大有愈演愈烈之势，被誉为电视剧版的《阳光灿烂的日子》。')
insert into book( ISBN,bookName ,bookImage,categoryID,Author,Price,Description) values('258','漫友大画集','艺术1.jpg',4,'漫友文化传播机构',24,'本书展现的是《漫友》的成熟而绚烂的彩色单幅（扉页或插画）作品。超大规格，超多容量，超强阵容！在上千件彩绘作品中精挑细选出上百幅顶级名作，首次结集，精彩再现！')
insert into book( ISBN,bookName ,bookImage,categoryID,Author,Price,Description) values('528','室内设计资料集','艺术2.jpg',4,'张绮曼 郑曙旸',28,'全书内容涉及现代室内设计的基本理论、设计程序、室内空间设计方法以及风格等；此外，还广泛收入了室内空间尺度的参考数据以及材料运、装修作法和部分工程实例详图、室内设计的表现技法。')
insert into book( ISBN,bookName ,bookImage,categoryID,Author,Price,Description) values('123','ASP教程','asp.jpg',1,'刘胜',20,'关于ASP的书')
insert into book( ISBN,bookName ,bookImage,categoryID,Author,Price,Description) values('456','Java宝典','java.jpg',1,'王霞',19.8,'关于Java的书')
go
insert into category(categoryName)  values('计算机')
insert into category(categoryName)  values('外语')
insert into category(categoryName)  values('文学')
insert into category(categoryName)  values('艺术')
go

insert into users( userName, trueName,sex,PWD, address, postcode ,tel, email,question,answer) values('dave','刘备','1','123', '长沙' ,'412001','2222222',  'dave@163.com','你最喜欢的动物？','cat')
insert into users( userName, trueName, sex,PWD, address, postcode ,tel, email,question,answer) values('wjh','曹操','1','123', '浙江' ,'555555','666666',  'dave@163.com','你最喜欢的动物？','cat')
go
insert into orders(username,truename,postcode,address,tel,TotalPrice,memo,isPay,IsDeliver,orderDate ) values('dave','刘备','长沙' ,'412001','2222222',62.5,'这本书有光碟吗?','1','1','2007-06-06')
insert into orderDetail(orderID,bookID,quantity,price) values(1,1,5,12.5)