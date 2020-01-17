create database yb_travel;
use yb_travel;

-- 나라 table
create table nationtb (
	 idx int auto_increment primary key,
     name varchar(30) UNIQUE,
     dust int, 
     continents int
);
drop table nationtb;
desc nationtb;
select * from nationtb;

-- [Europe] 
insert into nationtb(name, dust, continents) values('Germany', 80, 1); 
insert into nationtb(name, dust, continents) values('Italy', 168, 1); 
insert into nationtb(name, dust, continents) values('France', 33, 1); 

-- [Africa]
insert into nationtb(name, dust, continents) values('Egypt', 105, 2); 
insert into nationtb(name, dust, continents) values('Kenya', 110, 2); 

-- [Asia]
insert into nationtb(name, dust, continents) values('Mongolia', 184, 3); 
insert into nationtb(name, dust, continents) values('Vietnam', 95, 3); 
insert into nationtb(name, dust, continents) values('Vladivostok', 72, 3); 
insert into nationtb(name, dust, continents) values('Shanghai', 97, 3); 
insert into nationtb(name, dust, continents) values('Thailand', 91, 3); 

-- [North America]
insert into nationtb(name, dust, continents) values('USA', 4, 4); 
insert into nationtb(name, dust, continents) values('Canada', 52, 4); 
insert into nationtb(name, dust, continents) values('California ', 35, 4); 

-- 월평균 table
create table aver(
	idx int auto_increment primary key,
    nation int UNIQUE,
    tem1 int, tem2 int, tem3 int, tem4 int, tem5 int, tem6 int,
    tem7 int, tem8 int, tem9 int, tem10 int, tem11 int, tem12 int,
	hum1 int, hum2 int, hum3 int, hum4 int, hum5 int, hum6 int,
    hum7 int, hum8 int, hum9 int, hum10 int, hum11 int, hum12 int,
    foreign key (nation) references nationtb(idx)
);
drop table aver;
desc aver;
select * from aver;

-- [Europe]
insert into aver(nation, tem1, tem2, tem3, tem4, tem5, tem6, tem7, tem8, tem9, tem10, tem11, tem12, hum1, hum2, hum3, hum4, hum5, hum6, hum7, hum8, hum9, hum10, hum11, hum12) 
	values(1, 1, 1, 5, 9, 14, 17, 19, 19, 15, 10, 5, 2, 0, 0, 0, 2, 10, 30, 48, 38, 18, 5, 0, 0);
insert into aver(nation, tem1, tem2, tem3, tem4, tem5, tem6, tem7, tem8, tem9, tem10, tem11, tem12, hum1, hum2, hum3, hum4, hum5, hum6, hum7, hum8, hum9, hum10, hum11, hum12) 
	values(2, 7, 9, 14, 20, 24, 30, 33, 32, 27, 23, 14, 7, 0, 0, 3, 20, 54, 90, 92, 94, 80, 50, 21, 2);
insert into aver(nation, tem1, tem2, tem3, tem4, tem5, tem6, tem7, tem8, tem9, tem10, tem11, tem12, hum1, hum2, hum3, hum4, hum5, hum6, hum7, hum8, hum9, hum10, hum11, hum12) 
	values(3, -1, 2, 8, 13, 16, 23, 26, 23, 22, 12, 3, 0, 0, 0, 0, 8, 23, 47, 54, 58, 35, 18, 8, 0);

-- [Africa]
insert into aver(nation, tem1, tem2, tem3, tem4, tem5, tem6, tem7, tem8, tem9, tem10, tem11, tem12, hum1, hum2, hum3, hum4, hum5, hum6, hum7, hum8, hum9, hum10, hum11, hum12) 
	values(4, 14, 15, 17, 21, 24, 27, 28, 28, 26, 23, 19, 15, 0, 3, 6, 18, 47, 80, 93, 95, 73, 25, 20, 8);
insert into aver(nation, tem1, tem2, tem3, tem4, tem5, tem6, tem7, tem8, tem9, tem10, tem11, tem12, hum1, hum2, hum3, hum4, hum5, hum6, hum7, hum8, hum9, hum10, hum11, hum12) 
	values(5, 20, 23, 22, 20, 19, 18, 17, 18, 20, 21, 19, 20, 53, 42, 61, 90, 83, 55, 23, 21, 24, 60, 83, 65);

-- [Asia]
insert into aver(nation, tem1, tem2, tem3, tem4, tem5, tem6, tem7, tem8, tem9, tem10, tem11, tem12, hum1, hum2, hum3, hum4, hum5, hum6, hum7, hum8, hum9, hum10, hum11, hum12) 
	values(6, -26, -21, -10, 0, 8, 15, 17, 15, 8, -2, -14, -24, 0, 0, 0, 0, 0, 8, 17, 8, 0, 0, 0, 0);
insert into aver(nation, tem1, tem2, tem3, tem4, tem5, tem6, tem7, tem8, tem9, tem10, tem11, tem12, hum1, hum2, hum3, hum4, hum5, hum6, hum7, hum8, hum9, hum10, hum11, hum12) 
	values(7, 17, 18, 19, 22, 26, 30, 29, 29, 26, 24, 10, 19, 51, 68, 85, 98, 100, 100, 100, 100, 100, 96, 83, 58);
insert into aver(nation, tem1, tem2, tem3, tem4, tem5, tem6, tem7, tem8, tem9, tem10, tem11, tem12, hum1, hum2, hum3, hum4, hum5, hum6, hum7, hum8, hum9, hum10, hum11, hum12) 
	values(8, -10, -8, -5, 4, 9, 14, 16, 20, 14, 5, -5, -10, 0, 0, 0, 0, 5, 50, 93, 93, 45, 10, 0, 0);
insert into aver(nation, tem1, tem2, tem3, tem4, tem5, tem6, tem7, tem8, tem9, tem10, tem11, tem12, hum1, hum2, hum3, hum4, hum5, hum6, hum7, hum8, hum9, hum10, hum11, hum12) 
	values(9, 4, 6, 9, 12, 20, 25, 29, 26, 24, 19, 14, 9, 0, 3, 6, 35, 75, 97, 100, 100, 95, 65, 20, 4);
insert into aver(nation, tem1, tem2, tem3, tem4, tem5, tem6, tem7, tem8, tem9, tem10, tem11, tem12, hum1, hum2, hum3, hum4, hum5, hum6, hum7, hum8, hum9, hum10, hum11, hum12) 
	values(10, 26, 25, 28, 30, 30, 29, 28, 28, 28, 28, 27, 25, 93, 95, 100, 100, 100, 100, 100, 100, 100, 100, 100, 95);

-- [North America]
insert into aver(nation, tem1, tem2, tem3, tem4, tem5, tem6, tem7, tem8, tem9, tem10, tem11, tem12, hum1, hum2, hum3, hum4, hum5, hum6, hum7, hum8, hum9, hum10, hum11, hum12) 
	values(11, 1, 3, 5, 10, 15, 20, 22, 21, 20, 14, 10, 6, 0, 0, 0, 8, 33, 65, 89, 83, 53, 25, 6, 0);
insert into aver(nation, tem1, tem2, tem3, tem4, tem5, tem6, tem7, tem8, tem9, tem10, tem11, tem12, hum1, hum2, hum3, hum4, hum5, hum6, hum7, hum8, hum9, hum10, hum11, hum12) 
	values(12, -5, -3, 0, 4, 10, 16, 21, 18, 16, 11, 5, 1, 0, 0, 0, 3, 13, 45, 70, 72, 40, 10, 0, 0);
insert into aver(nation, tem1, tem2, tem3, tem4, tem5, tem6, tem7, tem8, tem9, tem10, tem11, tem12, hum1, hum2, hum3, hum4, hum5, hum6, hum7, hum8, hum9, hum10, hum11, hum12) 
	values(13, 15, 16, 16, 18, 20, 22, 23, 24, 22, 18, 15, 14, 2, 2, 3, 4, 30, 68, 92, 92, 78, 40, 10, 2);


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