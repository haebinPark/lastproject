create database lastproject;
use lastproject;
show tables;

create table if not exists TBL_MEMBER (
	USERID varchar(100) not null,
    PW varchar(100) not null,
    EMAIL varchar(100),
    PHONE varchar(100),
    REGDATE date,
    GENDER char(1), 
    NAME varchar(100),
    BIRTHDATE DATE,
    NICKNAME varchar(100) unique,
	PRIMARY KEY (USERID)
)default CHARSET=utf8;

insert into TBL_MEMBER (USERID,PW,EMAIL) values('admin' , 'a1234567!','admin@admin.com');
insert into TBL_MEMBER (USERID,PW,EMAIL) values('user' , 'a1234567!','user@user.com');

create table if not exists TBL_PENSION (
	PENSIONID int not null auto_increment,
    NAME varchar(100) not null unique,
    USERID varchar(100),
    foreign key (USERID) references TBL_MEMBER(USERID),
    ADDRESS varchar(100),
    COMMENTS varchar(1000),
    PRICE int default '0',
    ROOMNUMBER int,
    MAXPEOPLE int,
    CHECKIN time default '00:00:00',
    CHECKOUT time default '00:00:00',
    SERVICE varchar(1000),
    INSERVICE varchar(1000),
    IMAGE varchar(1000),
	PRIMARY KEY (PENSIONID)
)default CHARSET=utf8;

insert into TBL_PENSION (NAME,ADDRESS,COMMENTS,PRICE,CHECKIN,CHECKOUT,SERVICE,INSERVICE,IMAGE) values('사궁두미479' , '경남 창원시 마산합포구 사궁두미길 479 사궁두미479 민박','사궁두미479 펜션형 단체민박은 2021년 1월 신 축건물로 되어 있는 창원3대 일출 명소 중 하나인 사궁두미 마을에 위치한 조용한 공간입니다.','220000','17:00:00','13:00:00','유선인터넷,사우나,스파,야외 수영장,세탁서비,흡연 공간,레스토랑,발레파킹,전기차 충전소','모닝콜,샤워실,세면도구,소파,수건,에어컨,일일 청소 서빗,전화기,전용 수영장,컴퓨터,발코니/테라스,객실 내 안전 금고','479.jpg');
insert into TBL_PENSION (NAME,ADDRESS,COMMENTS,PRICE,CHECKIN,CHECKOUT,SERVICE,INSERVICE,IMAGE) values('영아펜션' , '경남 창원시 마산합포구 구산면 안녕로 223 영아 펜션','바다뷰 아지트 펜션 레져 입니다.','180000','17:00:00','13:00:00','유선인터넷,사우나,스파,야외 수영장,세탁서비,흡연 공간,레스토랑,발레파킹,전기차 충전소','모닝콜,샤워실,세면도구,소파,수건,에어컨,일일 청소 서빗,전화기,전용 수영장,컴퓨터,발코니/테라스,객실 내 안전 금고','young.jpg');
insert into TBL_PENSION (NAME,ADDRESS,COMMENTS,PRICE,CHECKIN,CHECKOUT,SERVICE,INSERVICE,IMAGE) values('오늘은선물' , '경남 창원시 마산합포구 구산면 안녕로 348','도심 속의 오션뷰 자연 힐링공간','150000','17:00:00','13:00:00','유선인터넷,사우나,스파,야외 수영장,세탁서비,흡연 공간,레스토랑,발레파킹,전기차 충전소','모닝콜,샤워실,세면도구,소파,수건,에어컨,일일 청소 서빗,전화기,전용 수영장,컴퓨터,발코니/테라스,객실 내 안전 금고','day.jpg');
create table if not exists TBL_ROOM (
	ROOMNUM int auto_increment not null,
    STARTTIME date,
    DEADLINE date,
    RESERVATIONSTATUS char(1) default '0', 
    PRICE int,
    TOTALPRICE int,
    ROOM int, 
    ROOMNAME varchar(200),
    PENSIONID int,
	foreign key (PENSIONID) references TBL_PENSION(PENSIONID), 
    PEOPLE int,
    DAY int,
	PRIMARY KEY (ROOMNUM)
)default CHARSET=utf8;

create table if not exists TBL_RESERVATION (
	RESERVATIONNUM int auto_increment not null,
	RESERVATIONSTATUS char(1),
	ROOMNAME varchar(50),
    STARTTIME date,
	DEADLINE date,
	NAME varchar(50),
    PHON varchar(50),
    PENSIONID int,
	foreign key (PENSIONID) references TBL_PENSION(PENSIONID), 
	USERID varchar(50),
    foreign key (USERID) references TBL_MEMBER(USERID), 
    ROOM int,   
	PEOPLE int,
    DAY int,
    TOTALPRICE int,
PRIMARY KEY (RESERVATIONNUM)
)default CHARSET=utf8;

insert into TBL_RESERVATION (ROOMNAME,STARTTIME,DEADLINE,NAME,PHON,PENSIONID,USERID,ROOM,PEOPLE,DAY,TOTALPRICE) values('사궁두미479' , '2022-08-10','2022-08-13','user','01012345678','1','user','1','1','3','660000');
insert into TBL_RESERVATION (ROOMNAME,STARTTIME,DEADLINE,NAME,PHON,PENSIONID,USERID,ROOM,PEOPLE,DAY,TOTALPRICE) values('영아펜션' , '2022-08-15','2022-08-20','user','01012345678','1','user','1','2','5','900000');
insert into TBL_RESERVATION (ROOMNAME,STARTTIME,DEADLINE,NAME,PHON,PENSIONID,USERID,ROOM,PEOPLE,DAY,TOTALPRICE) values('오늘은선물' , '2022-08-21','2022-08-30','user','01012345678','1','user','1','3','9','1350000');

create table if not exists notice(
	notice_code int auto_increment not null, 
    notice_title varchar(100),
    notice_content varchar(1000),
    notice_date varchar(100),
    notice_hit int,
PRIMARY KEY (notice_code)
)default CHARSET=utf8;

insert into notice (notice_title,notice_content,notice_date,notice_hit) values('사이트 개설안내' , '사이트 개설안내','2022-08-04 12:00:00','0');

select * from TBL_MEMBER;
select * from TBL_PENSION;
select * from TBL_ROOM;
select * from TBL_RESERVATION;
select * from notice;
delete from A;
drop table TBL_PENSION1;
drop database lastproject;