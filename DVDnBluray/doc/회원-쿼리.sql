# 회원 테이블 생성
create table member (
	name varchar(20) not null,
    id varchar(20) not null primary key,
    password varchar(20) not null,
    firstSSN int not null,
    secondSSN int not null,
    phone varchar(20) not null,
    email varchar(50),
    address varchar(100) not null
) engine=InnoDB default char set=utf8;