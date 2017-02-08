# < 콘솔에서 mysql 사용할때 >
# 	mysql이설치된폴더\mysql -u root -p
# 	C:\Program Files\MySQL\MySQL Server 5.7\bin\mysql -u root -p


# < root 작업 >
# 	db 생성 쿼리 
create database db명 charset utf8;
# 	db 삭제 쿼리 
drop database db명;

# 	데이터베이스 목록 보기
show databases;
# 	테이블 목록 보기
show tables;

# 	테이블 구조 보기
desc tabale명;

# 	사용자 계정 생성 및 DB권한 설정 쿼리 (한라인씩 실행해야됨)
create user 'tester'@'localhost' identified by 'testerpw'; # local 접속용 계정
grant all privileges on test.* to 'tester'@'localhost'; # 권한
create user 'tester'@'%' identified by 'testerpw'; # 모든 host 에서 사용할 계정 
grant all privileges on test.* to 'tester'@'%'; # 권한
