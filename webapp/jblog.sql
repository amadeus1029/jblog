--------------------------------------------------------
--  파일이 생성됨 - 화요일-7월-28-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEQ_CATEGORY_NO
--------------------------------------------------------

   CREATE SEQUENCE  "JBLOG"."SEQ_CATEGORY_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 23 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_COMMENTS_NO
--------------------------------------------------------

   CREATE SEQUENCE  "JBLOG"."SEQ_COMMENTS_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 4 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_POST_NO
--------------------------------------------------------

   CREATE SEQUENCE  "JBLOG"."SEQ_POST_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 315 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_USERS_NO
--------------------------------------------------------

   CREATE SEQUENCE  "JBLOG"."SEQ_USERS_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 11 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table BLOG
--------------------------------------------------------

  CREATE TABLE "JBLOG"."BLOG" 
   (	"ID" VARCHAR2(50 BYTE), 
	"BLOGTITLE" VARCHAR2(200 BYTE), 
	"LOGOFILE" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CATEGORY
--------------------------------------------------------

  CREATE TABLE "JBLOG"."CATEGORY" 
   (	"CATENO" NUMBER, 
	"ID" VARCHAR2(50 BYTE), 
	"CATENAME" VARCHAR2(200 BYTE), 
	"DESCRIPTION" VARCHAR2(500 BYTE), 
	"REGDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table COMMENTS
--------------------------------------------------------

  CREATE TABLE "JBLOG"."COMMENTS" 
   (	"CMTNO" NUMBER, 
	"POSTNO" NUMBER, 
	"USERNO" NUMBER, 
	"CMTCONTENT" VARCHAR2(1000 BYTE), 
	"REGDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table POST
--------------------------------------------------------

  CREATE TABLE "JBLOG"."POST" 
   (	"POSTNO" NUMBER, 
	"CATENO" NUMBER, 
	"POSTTITLE" VARCHAR2(300 BYTE), 
	"POSTCONTENT" VARCHAR2(4000 BYTE), 
	"REGDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "JBLOG"."USERS" 
   (	"USERNO" NUMBER, 
	"ID" VARCHAR2(50 BYTE), 
	"USERNAME" VARCHAR2(100 BYTE), 
	"PASSWORD" VARCHAR2(50 BYTE), 
	"JOINDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into JBLOG.BLOG
SET DEFINE OFF;
Insert into JBLOG.BLOG (ID,BLOGTITLE,LOGOFILE) values ('test1','카테고리 테스트','1595900218612bc9f9f0b-7b52-4dae-b4ab-1ca036dcdb1b.jpg');
Insert into JBLOG.BLOG (ID,BLOGTITLE,LOGOFILE) values ('test2','포스트 테스트','1595900389680f87f3351-dbce-4601-b4f3-67cca5e5c11f.jpg');
Insert into JBLOG.BLOG (ID,BLOGTITLE,LOGOFILE) values ('test3','코멘트 테스트','1595902116280652ac7fb-9aa7-4a4c-8e5a-f0858f0a32c3.jpg');
Insert into JBLOG.BLOG (ID,BLOGTITLE,LOGOFILE) values ('test4','test4의 블로그입니다','15959022624928cbbf063-c051-4431-9e06-32abae9db9a7.jpg');
Insert into JBLOG.BLOG (ID,BLOGTITLE,LOGOFILE) values ('test5','test5의 블로그입니다','1595902274686cf44b659-e534-4065-a010-ce934d3e3d52.jpg');
Insert into JBLOG.BLOG (ID,BLOGTITLE,LOGOFILE) values ('test6','test6의 블로그입니다','1595902288084f01b3ac6-f557-4cbf-9be8-3cf8a7b1c089.jpg');
Insert into JBLOG.BLOG (ID,BLOGTITLE,LOGOFILE) values ('test7','test7의 블로그입니다','15959023050399d08a326-23d5-48b9-9d28-413b5cb08b69.jpg');
Insert into JBLOG.BLOG (ID,BLOGTITLE,LOGOFILE) values ('test8','test8의 블로그입니다','15959023225996b385323-c891-482b-9356-b7387b92d479.jpg');
Insert into JBLOG.BLOG (ID,BLOGTITLE,LOGOFILE) values ('test9','test9의 블로그입니다','default');
Insert into JBLOG.BLOG (ID,BLOGTITLE,LOGOFILE) values ('test10','test10의 블로그입니다','default');
REM INSERTING into JBLOG.CATEGORY
SET DEFINE OFF;
Insert into JBLOG.CATEGORY (CATENO,ID,CATENAME,DESCRIPTION,REGDATE) values (1,'test1','미분류','기본으로 만들어지는 카테고리 입니다.',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,ID,CATENAME,DESCRIPTION,REGDATE) values (2,'test2','미분류','기본으로 만들어지는 카테고리 입니다.',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,ID,CATENAME,DESCRIPTION,REGDATE) values (3,'test3','미분류','기본으로 만들어지는 카테고리 입니다.',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,ID,CATENAME,DESCRIPTION,REGDATE) values (4,'test4','미분류','기본으로 만들어지는 카테고리 입니다.',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,ID,CATENAME,DESCRIPTION,REGDATE) values (5,'test5','미분류','기본으로 만들어지는 카테고리 입니다.',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,ID,CATENAME,DESCRIPTION,REGDATE) values (6,'test6','미분류','기본으로 만들어지는 카테고리 입니다.',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,ID,CATENAME,DESCRIPTION,REGDATE) values (7,'test7','미분류','기본으로 만들어지는 카테고리 입니다.',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,ID,CATENAME,DESCRIPTION,REGDATE) values (8,'test8','미분류','기본으로 만들어지는 카테고리 입니다.',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,ID,CATENAME,DESCRIPTION,REGDATE) values (9,'test9','미분류','기본으로 만들어지는 카테고리 입니다.',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,ID,CATENAME,DESCRIPTION,REGDATE) values (10,'test10','미분류','기본으로 만들어지는 카테고리 입니다.',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,ID,CATENAME,DESCRIPTION,REGDATE) values (11,'test1','JAVA','자바입니다',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,ID,CATENAME,DESCRIPTION,REGDATE) values (12,'test1','JQUERY','제이쿼리입니다',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,ID,CATENAME,DESCRIPTION,REGDATE) values (13,'test1','HTML','마크업 언어입니다',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,ID,CATENAME,DESCRIPTION,REGDATE) values (14,'test1','CSS','스타일시트입니다',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,ID,CATENAME,DESCRIPTION,REGDATE) values (18,'test2','이효리',null,to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,ID,CATENAME,DESCRIPTION,REGDATE) values (20,'test2','김종국',null,to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,ID,CATENAME,DESCRIPTION,REGDATE) values (19,'test2','전소민',null,to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,ID,CATENAME,DESCRIPTION,REGDATE) values (21,'test2','유재석',null,to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.CATEGORY (CATENO,ID,CATENAME,DESCRIPTION,REGDATE) values (22,'test3','테스트 카테고리','코멘트 테스트를 위해 카테고리 생성',to_date('20/07/28','RR/MM/DD'));
REM INSERTING into JBLOG.COMMENTS
SET DEFINE OFF;
Insert into JBLOG.COMMENTS (CMTNO,POSTNO,USERNO,CMTCONTENT,REGDATE) values (1,314,3,'댓글 좀 달아주세요',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.COMMENTS (CMTNO,POSTNO,USERNO,CMTCONTENT,REGDATE) values (2,314,1,'你好',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.COMMENTS (CMTNO,POSTNO,USERNO,CMTCONTENT,REGDATE) values (3,314,2,'hello',to_date('20/07/28','RR/MM/DD'));
REM INSERTING into JBLOG.POST
SET DEFINE OFF;
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (1,14,'아무 글이나 써둡니다','넵',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (2,18,'이효리 카테고리 테스트타이틀1','이효리포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (3,19,'전소민 카테고리 테스트타이틀1','전소민포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (4,20,'김종국 카테고리 테스트타이틀1','김종국포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (5,21,'유재석 카테고리 테스트타이틀1','유재석포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (6,18,'이효리 카테고리 테스트타이틀2','이효리포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (7,19,'전소민 카테고리 테스트타이틀2','전소민포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (8,20,'김종국 카테고리 테스트타이틀2','김종국포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (9,21,'유재석 카테고리 테스트타이틀2','유재석포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (10,18,'이효리 카테고리 테스트타이틀3','이효리포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (11,19,'전소민 카테고리 테스트타이틀3','전소민포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (12,20,'김종국 카테고리 테스트타이틀3','김종국포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (13,21,'유재석 카테고리 테스트타이틀3','유재석포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (14,18,'이효리 카테고리 테스트타이틀1','이효리포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (15,19,'전소민 카테고리 테스트타이틀1','전소민포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (16,20,'김종국 카테고리 테스트타이틀1','김종국포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (17,21,'유재석 카테고리 테스트타이틀1','유재석포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (18,18,'이효리 카테고리 테스트타이틀2','이효리포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (19,19,'전소민 카테고리 테스트타이틀2','전소민포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (20,20,'김종국 카테고리 테스트타이틀2','김종국포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (21,21,'유재석 카테고리 테스트타이틀2','유재석포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (22,18,'이효리 카테고리 테스트타이틀3','이효리포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (23,19,'전소민 카테고리 테스트타이틀3','전소민포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (24,20,'김종국 카테고리 테스트타이틀3','김종국포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (25,21,'유재석 카테고리 테스트타이틀3','유재석포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (26,18,'이효리 카테고리 테스트타이틀1','이효리포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (27,19,'전소민 카테고리 테스트타이틀1','전소민포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (28,20,'김종국 카테고리 테스트타이틀1','김종국포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (29,21,'유재석 카테고리 테스트타이틀1','유재석포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (30,18,'이효리 카테고리 테스트타이틀2','이효리포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (31,19,'전소민 카테고리 테스트타이틀2','전소민포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (32,20,'김종국 카테고리 테스트타이틀2','김종국포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (33,21,'유재석 카테고리 테스트타이틀2','유재석포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (34,18,'이효리 카테고리 테스트타이틀3','이효리포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (35,19,'전소민 카테고리 테스트타이틀3','전소민포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (36,20,'김종국 카테고리 테스트타이틀3','김종국포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (37,21,'유재석 카테고리 테스트타이틀3','유재석포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (38,18,'이효리 카테고리 테스트타이틀1','이효리포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (39,19,'전소민 카테고리 테스트타이틀1','전소민포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (40,20,'김종국 카테고리 테스트타이틀1','김종국포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (41,21,'유재석 카테고리 테스트타이틀1','유재석포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (42,18,'이효리 카테고리 테스트타이틀2','이효리포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (43,19,'전소민 카테고리 테스트타이틀2','전소민포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (44,20,'김종국 카테고리 테스트타이틀2','김종국포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (45,21,'유재석 카테고리 테스트타이틀2','유재석포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (46,18,'이효리 카테고리 테스트타이틀3','이효리포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (47,19,'전소민 카테고리 테스트타이틀3','전소민포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (48,20,'김종국 카테고리 테스트타이틀3','김종국포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (49,21,'유재석 카테고리 테스트타이틀3','유재석포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (50,18,'이효리 카테고리 테스트타이틀1','이효리포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (51,19,'전소민 카테고리 테스트타이틀1','전소민포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (52,20,'김종국 카테고리 테스트타이틀1','김종국포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (53,21,'유재석 카테고리 테스트타이틀1','유재석포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (54,18,'이효리 카테고리 테스트타이틀2','이효리포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (55,19,'전소민 카테고리 테스트타이틀2','전소민포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (56,20,'김종국 카테고리 테스트타이틀2','김종국포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (57,21,'유재석 카테고리 테스트타이틀2','유재석포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (58,18,'이효리 카테고리 테스트타이틀3','이효리포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (59,19,'전소민 카테고리 테스트타이틀3','전소민포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (60,20,'김종국 카테고리 테스트타이틀3','김종국포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (61,21,'유재석 카테고리 테스트타이틀3','유재석포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (62,18,'이효리 카테고리 테스트타이틀1','이효리포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (63,19,'전소민 카테고리 테스트타이틀1','전소민포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (64,20,'김종국 카테고리 테스트타이틀1','김종국포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (65,21,'유재석 카테고리 테스트타이틀1','유재석포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (66,18,'이효리 카테고리 테스트타이틀2','이효리포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (67,19,'전소민 카테고리 테스트타이틀2','전소민포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (68,20,'김종국 카테고리 테스트타이틀2','김종국포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (69,21,'유재석 카테고리 테스트타이틀2','유재석포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (70,18,'이효리 카테고리 테스트타이틀3','이효리포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (71,19,'전소민 카테고리 테스트타이틀3','전소민포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (72,20,'김종국 카테고리 테스트타이틀3','김종국포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (73,21,'유재석 카테고리 테스트타이틀3','유재석포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (74,18,'이효리 카테고리 테스트타이틀1','이효리포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (75,19,'전소민 카테고리 테스트타이틀1','전소민포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (76,20,'김종국 카테고리 테스트타이틀1','김종국포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (77,21,'유재석 카테고리 테스트타이틀1','유재석포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (78,18,'이효리 카테고리 테스트타이틀2','이효리포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (79,19,'전소민 카테고리 테스트타이틀2','전소민포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (80,20,'김종국 카테고리 테스트타이틀2','김종국포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (81,21,'유재석 카테고리 테스트타이틀2','유재석포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (82,18,'이효리 카테고리 테스트타이틀3','이효리포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (83,19,'전소민 카테고리 테스트타이틀3','전소민포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (84,20,'김종국 카테고리 테스트타이틀3','김종국포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (85,21,'유재석 카테고리 테스트타이틀3','유재석포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (86,18,'이효리 카테고리 테스트타이틀1','이효리포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (87,19,'전소민 카테고리 테스트타이틀1','전소민포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (88,20,'김종국 카테고리 테스트타이틀1','김종국포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (89,21,'유재석 카테고리 테스트타이틀1','유재석포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (90,18,'이효리 카테고리 테스트타이틀2','이효리포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (91,19,'전소민 카테고리 테스트타이틀2','전소민포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (92,20,'김종국 카테고리 테스트타이틀2','김종국포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (93,21,'유재석 카테고리 테스트타이틀2','유재석포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (94,18,'이효리 카테고리 테스트타이틀3','이효리포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (95,19,'전소민 카테고리 테스트타이틀3','전소민포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (96,20,'김종국 카테고리 테스트타이틀3','김종국포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (97,21,'유재석 카테고리 테스트타이틀3','유재석포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (98,18,'이효리 카테고리 테스트타이틀1','이효리포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (99,19,'전소민 카테고리 테스트타이틀1','전소민포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (100,20,'김종국 카테고리 테스트타이틀1','김종국포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (101,21,'유재석 카테고리 테스트타이틀1','유재석포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (102,18,'이효리 카테고리 테스트타이틀2','이효리포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (103,19,'전소민 카테고리 테스트타이틀2','전소민포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (104,20,'김종국 카테고리 테스트타이틀2','김종국포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (105,21,'유재석 카테고리 테스트타이틀2','유재석포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (106,18,'이효리 카테고리 테스트타이틀3','이효리포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (107,19,'전소민 카테고리 테스트타이틀3','전소민포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (108,20,'김종국 카테고리 테스트타이틀3','김종국포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (109,21,'유재석 카테고리 테스트타이틀3','유재석포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (110,18,'이효리 카테고리 테스트타이틀1','이효리포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (111,19,'전소민 카테고리 테스트타이틀1','전소민포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (112,20,'김종국 카테고리 테스트타이틀1','김종국포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (113,21,'유재석 카테고리 테스트타이틀1','유재석포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (114,18,'이효리 카테고리 테스트타이틀2','이효리포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (115,19,'전소민 카테고리 테스트타이틀2','전소민포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (116,20,'김종국 카테고리 테스트타이틀2','김종국포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (117,21,'유재석 카테고리 테스트타이틀2','유재석포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (118,18,'이효리 카테고리 테스트타이틀3','이효리포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (119,19,'전소민 카테고리 테스트타이틀3','전소민포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (120,20,'김종국 카테고리 테스트타이틀3','김종국포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (121,21,'유재석 카테고리 테스트타이틀3','유재석포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (122,18,'이효리 카테고리 테스트타이틀1','이효리포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (123,19,'전소민 카테고리 테스트타이틀1','전소민포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (124,20,'김종국 카테고리 테스트타이틀1','김종국포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (125,21,'유재석 카테고리 테스트타이틀1','유재석포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (126,18,'이효리 카테고리 테스트타이틀2','이효리포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (127,19,'전소민 카테고리 테스트타이틀2','전소민포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (128,20,'김종국 카테고리 테스트타이틀2','김종국포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (129,21,'유재석 카테고리 테스트타이틀2','유재석포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (130,18,'이효리 카테고리 테스트타이틀3','이효리포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (131,19,'전소민 카테고리 테스트타이틀3','전소민포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (132,20,'김종국 카테고리 테스트타이틀3','김종국포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (133,21,'유재석 카테고리 테스트타이틀3','유재석포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (134,18,'이효리 카테고리 테스트타이틀1','이효리포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (135,19,'전소민 카테고리 테스트타이틀1','전소민포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (136,20,'김종국 카테고리 테스트타이틀1','김종국포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (137,21,'유재석 카테고리 테스트타이틀1','유재석포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (138,18,'이효리 카테고리 테스트타이틀2','이효리포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (139,19,'전소민 카테고리 테스트타이틀2','전소민포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (140,20,'김종국 카테고리 테스트타이틀2','김종국포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (141,21,'유재석 카테고리 테스트타이틀2','유재석포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (142,18,'이효리 카테고리 테스트타이틀3','이효리포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (143,19,'전소민 카테고리 테스트타이틀3','전소민포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (144,20,'김종국 카테고리 테스트타이틀3','김종국포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (145,21,'유재석 카테고리 테스트타이틀3','유재석포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (146,18,'이효리 카테고리 테스트타이틀1','이효리포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (147,19,'전소민 카테고리 테스트타이틀1','전소민포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (148,20,'김종국 카테고리 테스트타이틀1','김종국포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (149,21,'유재석 카테고리 테스트타이틀1','유재석포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (150,18,'이효리 카테고리 테스트타이틀2','이효리포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (151,19,'전소민 카테고리 테스트타이틀2','전소민포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (152,20,'김종국 카테고리 테스트타이틀2','김종국포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (153,21,'유재석 카테고리 테스트타이틀2','유재석포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (154,18,'이효리 카테고리 테스트타이틀3','이효리포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (155,19,'전소민 카테고리 테스트타이틀3','전소민포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (156,20,'김종국 카테고리 테스트타이틀3','김종국포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (157,21,'유재석 카테고리 테스트타이틀3','유재석포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (158,18,'이효리 카테고리 테스트타이틀1','이효리포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (159,19,'전소민 카테고리 테스트타이틀1','전소민포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (160,20,'김종국 카테고리 테스트타이틀1','김종국포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (161,21,'유재석 카테고리 테스트타이틀1','유재석포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (162,18,'이효리 카테고리 테스트타이틀2','이효리포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (163,19,'전소민 카테고리 테스트타이틀2','전소민포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (164,20,'김종국 카테고리 테스트타이틀2','김종국포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (165,21,'유재석 카테고리 테스트타이틀2','유재석포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (166,18,'이효리 카테고리 테스트타이틀3','이효리포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (167,19,'전소민 카테고리 테스트타이틀3','전소민포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (168,20,'김종국 카테고리 테스트타이틀3','김종국포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (169,21,'유재석 카테고리 테스트타이틀3','유재석포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (170,18,'이효리 카테고리 테스트타이틀1','이효리포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (171,19,'전소민 카테고리 테스트타이틀1','전소민포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (172,20,'김종국 카테고리 테스트타이틀1','김종국포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (173,21,'유재석 카테고리 테스트타이틀1','유재석포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (174,18,'이효리 카테고리 테스트타이틀2','이효리포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (175,19,'전소민 카테고리 테스트타이틀2','전소민포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (176,20,'김종국 카테고리 테스트타이틀2','김종국포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (177,21,'유재석 카테고리 테스트타이틀2','유재석포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (178,18,'이효리 카테고리 테스트타이틀3','이효리포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (179,19,'전소민 카테고리 테스트타이틀3','전소민포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (180,20,'김종국 카테고리 테스트타이틀3','김종국포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (181,21,'유재석 카테고리 테스트타이틀3','유재석포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (182,18,'이효리 카테고리 테스트타이틀1','이효리포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (183,19,'전소민 카테고리 테스트타이틀1','전소민포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (184,20,'김종국 카테고리 테스트타이틀1','김종국포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (185,21,'유재석 카테고리 테스트타이틀1','유재석포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (186,18,'이효리 카테고리 테스트타이틀2','이효리포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (187,19,'전소민 카테고리 테스트타이틀2','전소민포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (188,20,'김종국 카테고리 테스트타이틀2','김종국포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (189,21,'유재석 카테고리 테스트타이틀2','유재석포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (190,18,'이효리 카테고리 테스트타이틀3','이효리포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (191,19,'전소민 카테고리 테스트타이틀3','전소민포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (192,20,'김종국 카테고리 테스트타이틀3','김종국포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (193,21,'유재석 카테고리 테스트타이틀3','유재석포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (194,18,'이효리 카테고리 테스트타이틀1','이효리포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (195,19,'전소민 카테고리 테스트타이틀1','전소민포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (196,20,'김종국 카테고리 테스트타이틀1','김종국포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (197,21,'유재석 카테고리 테스트타이틀1','유재석포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (198,18,'이효리 카테고리 테스트타이틀2','이효리포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (199,19,'전소민 카테고리 테스트타이틀2','전소민포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (200,20,'김종국 카테고리 테스트타이틀2','김종국포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (201,21,'유재석 카테고리 테스트타이틀2','유재석포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (202,18,'이효리 카테고리 테스트타이틀3','이효리포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (203,19,'전소민 카테고리 테스트타이틀3','전소민포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (204,20,'김종국 카테고리 테스트타이틀3','김종국포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (205,21,'유재석 카테고리 테스트타이틀3','유재석포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (206,18,'이효리 카테고리 테스트타이틀1','이효리포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (207,19,'전소민 카테고리 테스트타이틀1','전소민포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (208,20,'김종국 카테고리 테스트타이틀1','김종국포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (209,21,'유재석 카테고리 테스트타이틀1','유재석포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (210,18,'이효리 카테고리 테스트타이틀2','이효리포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (211,19,'전소민 카테고리 테스트타이틀2','전소민포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (212,20,'김종국 카테고리 테스트타이틀2','김종국포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (213,21,'유재석 카테고리 테스트타이틀2','유재석포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (214,18,'이효리 카테고리 테스트타이틀3','이효리포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (215,19,'전소민 카테고리 테스트타이틀3','전소민포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (216,20,'김종국 카테고리 테스트타이틀3','김종국포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (217,21,'유재석 카테고리 테스트타이틀3','유재석포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (218,18,'이효리 카테고리 테스트타이틀1','이효리포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (219,19,'전소민 카테고리 테스트타이틀1','전소민포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (220,20,'김종국 카테고리 테스트타이틀1','김종국포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (221,21,'유재석 카테고리 테스트타이틀1','유재석포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (222,18,'이효리 카테고리 테스트타이틀2','이효리포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (223,19,'전소민 카테고리 테스트타이틀2','전소민포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (224,20,'김종국 카테고리 테스트타이틀2','김종국포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (225,21,'유재석 카테고리 테스트타이틀2','유재석포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (226,18,'이효리 카테고리 테스트타이틀3','이효리포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (227,19,'전소민 카테고리 테스트타이틀3','전소민포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (228,20,'김종국 카테고리 테스트타이틀3','김종국포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (229,21,'유재석 카테고리 테스트타이틀3','유재석포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (230,18,'이효리 카테고리 테스트타이틀1','이효리포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (231,19,'전소민 카테고리 테스트타이틀1','전소민포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (232,20,'김종국 카테고리 테스트타이틀1','김종국포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (233,21,'유재석 카테고리 테스트타이틀1','유재석포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (234,18,'이효리 카테고리 테스트타이틀2','이효리포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (235,19,'전소민 카테고리 테스트타이틀2','전소민포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (236,20,'김종국 카테고리 테스트타이틀2','김종국포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (237,21,'유재석 카테고리 테스트타이틀2','유재석포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (238,18,'이효리 카테고리 테스트타이틀3','이효리포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (239,19,'전소민 카테고리 테스트타이틀3','전소민포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (240,20,'김종국 카테고리 테스트타이틀3','김종국포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (241,21,'유재석 카테고리 테스트타이틀3','유재석포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (242,18,'이효리 카테고리 테스트타이틀1','이효리포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (243,19,'전소민 카테고리 테스트타이틀1','전소민포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (244,20,'김종국 카테고리 테스트타이틀1','김종국포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (245,21,'유재석 카테고리 테스트타이틀1','유재석포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (246,18,'이효리 카테고리 테스트타이틀2','이효리포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (247,19,'전소민 카테고리 테스트타이틀2','전소민포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (248,20,'김종국 카테고리 테스트타이틀2','김종국포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (249,21,'유재석 카테고리 테스트타이틀2','유재석포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (250,18,'이효리 카테고리 테스트타이틀3','이효리포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (251,19,'전소민 카테고리 테스트타이틀3','전소민포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (252,20,'김종국 카테고리 테스트타이틀3','김종국포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (253,21,'유재석 카테고리 테스트타이틀3','유재석포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (254,18,'이효리 카테고리 테스트타이틀1','이효리포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (255,19,'전소민 카테고리 테스트타이틀1','전소민포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (256,20,'김종국 카테고리 테스트타이틀1','김종국포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (257,21,'유재석 카테고리 테스트타이틀1','유재석포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (258,18,'이효리 카테고리 테스트타이틀2','이효리포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (259,19,'전소민 카테고리 테스트타이틀2','전소민포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (260,20,'김종국 카테고리 테스트타이틀2','김종국포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (261,21,'유재석 카테고리 테스트타이틀2','유재석포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (262,18,'이효리 카테고리 테스트타이틀3','이효리포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (263,19,'전소민 카테고리 테스트타이틀3','전소민포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (264,20,'김종국 카테고리 테스트타이틀3','김종국포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (265,21,'유재석 카테고리 테스트타이틀3','유재석포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (266,18,'이효리 카테고리 테스트타이틀1','이효리포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (267,19,'전소민 카테고리 테스트타이틀1','전소민포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (268,20,'김종국 카테고리 테스트타이틀1','김종국포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (269,21,'유재석 카테고리 테스트타이틀1','유재석포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (270,18,'이효리 카테고리 테스트타이틀2','이효리포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (271,19,'전소민 카테고리 테스트타이틀2','전소민포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (272,20,'김종국 카테고리 테스트타이틀2','김종국포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (273,21,'유재석 카테고리 테스트타이틀2','유재석포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (274,18,'이효리 카테고리 테스트타이틀3','이효리포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (275,19,'전소민 카테고리 테스트타이틀3','전소민포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (276,20,'김종국 카테고리 테스트타이틀3','김종국포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (277,21,'유재석 카테고리 테스트타이틀3','유재석포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (278,18,'이효리 카테고리 테스트타이틀1','이효리포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (279,19,'전소민 카테고리 테스트타이틀1','전소민포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (280,20,'김종국 카테고리 테스트타이틀1','김종국포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (281,21,'유재석 카테고리 테스트타이틀1','유재석포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (282,18,'이효리 카테고리 테스트타이틀2','이효리포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (283,19,'전소민 카테고리 테스트타이틀2','전소민포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (284,20,'김종국 카테고리 테스트타이틀2','김종국포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (285,21,'유재석 카테고리 테스트타이틀2','유재석포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (286,18,'이효리 카테고리 테스트타이틀3','이효리포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (287,19,'전소민 카테고리 테스트타이틀3','전소민포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (288,20,'김종국 카테고리 테스트타이틀3','김종국포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (289,21,'유재석 카테고리 테스트타이틀3','유재석포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (290,18,'이효리 카테고리 테스트타이틀1','이효리포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (291,19,'전소민 카테고리 테스트타이틀1','전소민포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (292,20,'김종국 카테고리 테스트타이틀1','김종국포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (293,21,'유재석 카테고리 테스트타이틀1','유재석포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (294,18,'이효리 카테고리 테스트타이틀2','이효리포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (295,19,'전소민 카테고리 테스트타이틀2','전소민포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (296,20,'김종국 카테고리 테스트타이틀2','김종국포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (297,21,'유재석 카테고리 테스트타이틀2','유재석포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (298,18,'이효리 카테고리 테스트타이틀3','이효리포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (299,19,'전소민 카테고리 테스트타이틀3','전소민포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (300,20,'김종국 카테고리 테스트타이틀3','김종국포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (301,21,'유재석 카테고리 테스트타이틀3','유재석포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (302,18,'이효리 카테고리 테스트타이틀1','이효리포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (303,19,'전소민 카테고리 테스트타이틀1','전소민포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (304,20,'김종국 카테고리 테스트타이틀1','김종국포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (305,21,'유재석 카테고리 테스트타이틀1','유재석포스트의 테스트내용1',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (306,18,'이효리 카테고리 테스트타이틀2','이효리포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (307,19,'전소민 카테고리 테스트타이틀2','전소민포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (308,20,'김종국 카테고리 테스트타이틀2','김종국포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (309,21,'유재석 카테고리 테스트타이틀2','유재석포스트의 테스트내용2',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (310,18,'이효리 카테고리 테스트타이틀3','이효리포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (311,19,'전소민 카테고리 테스트타이틀3','전소민포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (312,20,'김종국 카테고리 테스트타이틀3','김종국포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (313,21,'유재석 카테고리 테스트타이틀3','유재석포스트의 테스트내용3',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.POST (POSTNO,CATENO,POSTTITLE,POSTCONTENT,REGDATE) values (314,22,'적당한 제목을 지어봅니다','뿅',to_date('20/07/28','RR/MM/DD'));
REM INSERTING into JBLOG.USERS
SET DEFINE OFF;
Insert into JBLOG.USERS (USERNO,ID,USERNAME,PASSWORD,JOINDATE) values (1,'test1','테스트01','1234',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.USERS (USERNO,ID,USERNAME,PASSWORD,JOINDATE) values (2,'test2','테스트2','1234',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.USERS (USERNO,ID,USERNAME,PASSWORD,JOINDATE) values (3,'test3','테스트3','1234',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.USERS (USERNO,ID,USERNAME,PASSWORD,JOINDATE) values (4,'test4','test4','1234',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.USERS (USERNO,ID,USERNAME,PASSWORD,JOINDATE) values (5,'test5','test5','1234',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.USERS (USERNO,ID,USERNAME,PASSWORD,JOINDATE) values (6,'test6','test6','1234',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.USERS (USERNO,ID,USERNAME,PASSWORD,JOINDATE) values (7,'test7','test7','1234',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.USERS (USERNO,ID,USERNAME,PASSWORD,JOINDATE) values (8,'test8','test8','1234',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.USERS (USERNO,ID,USERNAME,PASSWORD,JOINDATE) values (9,'test9','test9','1234',to_date('20/07/28','RR/MM/DD'));
Insert into JBLOG.USERS (USERNO,ID,USERNAME,PASSWORD,JOINDATE) values (10,'test10','test10','1234',to_date('20/07/28','RR/MM/DD'));
--------------------------------------------------------
--  Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "JBLOG"."COMMENTS" ADD PRIMARY KEY ("CMTNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JBLOG"."COMMENTS" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "JBLOG"."COMMENTS" MODIFY ("CMTCONTENT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CATEGORY
--------------------------------------------------------

  ALTER TABLE "JBLOG"."CATEGORY" ADD PRIMARY KEY ("CATENO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JBLOG"."CATEGORY" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "JBLOG"."CATEGORY" MODIFY ("CATENAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table POST
--------------------------------------------------------

  ALTER TABLE "JBLOG"."POST" ADD PRIMARY KEY ("POSTNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JBLOG"."POST" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "JBLOG"."POST" MODIFY ("POSTTITLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "JBLOG"."USERS" ADD UNIQUE ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JBLOG"."USERS" ADD PRIMARY KEY ("USERNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JBLOG"."USERS" MODIFY ("JOINDATE" NOT NULL ENABLE);
  ALTER TABLE "JBLOG"."USERS" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "JBLOG"."USERS" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "JBLOG"."USERS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BLOG
--------------------------------------------------------

  ALTER TABLE "JBLOG"."BLOG" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JBLOG"."BLOG" MODIFY ("BLOGTITLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table BLOG
--------------------------------------------------------

  ALTER TABLE "JBLOG"."BLOG" ADD CONSTRAINT "C_BLOG_USERS_FK" FOREIGN KEY ("ID")
	  REFERENCES "JBLOG"."USERS" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CATEGORY
--------------------------------------------------------

  ALTER TABLE "JBLOG"."CATEGORY" ADD CONSTRAINT "C_CATEGORY_BLOG_FK" FOREIGN KEY ("ID")
	  REFERENCES "JBLOG"."BLOG" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "JBLOG"."COMMENTS" ADD CONSTRAINT "C_COMMENTS_POST_FK" FOREIGN KEY ("POSTNO")
	  REFERENCES "JBLOG"."POST" ("POSTNO") ENABLE;
  ALTER TABLE "JBLOG"."COMMENTS" ADD CONSTRAINT "C_COMMENTS_USER_FK" FOREIGN KEY ("USERNO")
	  REFERENCES "JBLOG"."USERS" ("USERNO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table POST
--------------------------------------------------------

  ALTER TABLE "JBLOG"."POST" ADD CONSTRAINT "C_POST_CATEGORY_FK" FOREIGN KEY ("CATENO")
	  REFERENCES "JBLOG"."CATEGORY" ("CATENO") ENABLE;
