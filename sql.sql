create database yb_travel;
use yb_travel;
drop table yb_travel;

-- 나라 table
create table nationtb (
	 idx int auto_increment primary key,
     name varchar(30),
     dust int, 
     Continents int
);
-- [Europe] 
insert into nationtb values('Germany', 80, 1); 
insert into nationtb values('Italy', 168, 1); 
insert into nationtb values('France', 33, 1); 

-- [Africa]
insert into nationtb values('Dubai', 80, 1); 
insert into nationtb values('Egypt', 80, 1); 
insert into nationtb values('Kenya', 80, 1); 



-- 월평균 table
create table aver(
	idx int auto_increment primary key,
    nation int,
    tem1 int, tem2 int, tem3 int, tem4 int, tem5 int, tem6 int,
    tem7 int, tem8 int, tem9 int, tem10 int, tem11 int, tem12 int,
	hum1 int, hum2 int, hum3 int, hum4 int, hum5 int, hum6 int,
    hum7 int, hum8 int, hum9 int, hum10 int, hum11 int, hum12 int,
    foreign key (nation) references nation(idx)
);

-- 경로 및 상세정보 table
create table contents (
	idx int auto_increment primary key,
    nation int,
    seq int,
    detail varchar(10000),
    image varchar(500),
    foreign key (nation) references nation(idx)
);

-- 이미지 테이블
create table image (
	idx int auto_increment primary key,
    nation int,
    type int,
    url varchar(500),
    foreign key (nation) references nation(idx)
);