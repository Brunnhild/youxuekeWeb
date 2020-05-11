use stu;

drop table if exists booking;
drop table if exists course;
drop table if exists `release`;
drop table if exists reply;
drop table if exists topic;
drop table if exists reply_liker;
drop table if exists topic_liker;
drop table if exists user;
drop table if exists question;
drop table if exists answer;

create table booking (stuId varchar(20), courseId int, phone varchar(20));

create table course (id int auto_increment primary key, title varchar(50), des varchar(200),lecturer varchar(20), date varchar(50), location varchar(50), verification int, category varchar(50),phone varchar(20), trueName varchar(50));

create table `release` (teaId varchar(20), courseId int, phone varchar(20), trueName varchar(50));

-- the field likes changed to type, added date and oldCommenter fields
create table reply (
    id int auto_increment primary key, 
    topic_id int, 
    des varchar(200), 
    type int, 
    author varchar(20),
    date varchar(20),
    oldCommenter varchar(30)
);

-- added the date field
create table topic (
    id int auto_increment primary key, 
    title varchar(50), 
    des varchar(200), 
    likes int, 
    replies int, 
    author varchar(20),
    date varchar(20)
);

create table reply_liker (reply int, liker varchar(20));

create table topic_liker (topic int, liker varchar(20));

create table user (open_id varchar(50)  , ID varchar(15) primary key, name varchar(20), identity int, password varchar(65), avatar varchar(500));
-- create table user (open_id varchar(50) primary key , ID varchar(15), name varchar(20), identity int);

create table question (description varchar (10000), id int auto_increment primary key);

create table answer (description varchar (16380), queId int primary key, isRight boolean);

-- 1 for student; 2 for student lecturer; 3 for administrator
insert into user value
('', '10111', '王小虎', 1, '6ca13d52ca70c883e0f0bb101e425a89e8624de51db2d2392593af6a84118090', ''),
('', '10222', '张小明', 2, '6ca13d52ca70c883e0f0bb101e425a89e8624de51db2d2392593af6a84118090', ''),
('', '10333', '管理员', 3, '6ca13d52ca70c883e0f0bb101e425a89e8624de51db2d2392593af6a84118090', '');

insert into course(title, des, lecturer, date, location, verification, category, phone, trueName) value
('高等数学', '高等数学A第一章', '10222', '2020-05-20 15:30', '文史楼302', 0, '1', '13033233323', '张小明'),
('离散数学', '生成函数求解递推式', '10222', '2020-05-22 11:30', '文史楼202', 1, '0', '133333333', '张小明'),
('线性代数', '线性代数总结复习', '10111', '2020-05-12 14:30', '理科大楼222', 0, '1', '155666666', '王小虎'),
('程序设计', 'EOJ1234', '10222', '2020-05-11 09:30', '教书院234', 1, '0', '13033233323', '张小明'),
('网页设计', 'VUE初探', '10111', '2020-05-13 08:30', '文史楼303', 1, '1', '13033233323', '王小虎'),
('数值优化', 'ADMM的实际应用', '10222', '2020-05-21 17:30', '文史楼101', 0, '0', '13033233323', '张小明'),
('机器学习', 'TSVM实例', '10111', '2020-05-24 20:30', '文史楼305', 1, '1', '13033233323', '王小虎');