DROP TABLE TRADE;
DROP TABLE DECLARATION;
DROP TABLE NOTE;
DROP TABLE REPLY;
DROP TABLE PROFILE_IMG;
DROP TABLE ATTACHMENT;
DROP TABLE QNA;
DROP TABLE IMG_FILE;
DROP TABLE SHARE_BOARD;
DROP TABLE FREE_BOARD;
DROP TABLE WISHLIST;
DROP TABLE PRODUCT;
DROP TABLE USER_INFO;
DROP TABLE NOTICE;
DROP TABLE GRADE;
DROP TABLE CATEGORY;
DROP TABLE REGION;

DROP SEQUENCE SEQ_TRADE;
DROP SEQUENCE SEQ_DECLARATION;
DROP SEQUENCE SEQ_NOTE;
DROP SEQUENCE SEQ_REPLY;
DROP SEQUENCE SEQ_PROFILE_IMG;
DROP SEQUENCE SEQ_SHARE_BOARD;
DROP SEQUENCE SEQ_FREE_BOARD;
DROP SEQUENCE SEQ_ATTACHMENT;
DROP SEQUENCE SEQ_QNA;
DROP SEQUENCE SEQ_IMG_FILE;
DROP SEQUENCE SEQ_WISHLIST;
DROP SEQUENCE SEQ_PRODUCT;
DROP SEQUENCE SEQ_USER_INFO;
DROP SEQUENCE SEQ_NOTICE;
DROP SEQUENCE SEQ_CATEGORY;
DROP SEQUENCE SEQ_REGION;

CREATE SEQUENCE SEQ_TRADE;
CREATE SEQUENCE SEQ_DECLARATION;
CREATE SEQUENCE SEQ_NOTE;
CREATE SEQUENCE SEQ_REPLY;
CREATE SEQUENCE SEQ_PROFILE_IMG;
CREATE SEQUENCE SEQ_SHARE_BOARD;
CREATE SEQUENCE SEQ_FREE_BOARD;
CREATE SEQUENCE SEQ_QNA;
CREATE SEQUENCE SEQ_ATTACHMENT;
CREATE SEQUENCE SEQ_IMG_FILE;
CREATE SEQUENCE SEQ_WISHLIST;
CREATE SEQUENCE SEQ_PRODUCT;
CREATE SEQUENCE SEQ_USER_INFO;
CREATE SEQUENCE SEQ_NOTICE;
CREATE SEQUENCE SEQ_CATEGORY;
CREATE SEQUENCE SEQ_REGION;

--------------------------------------------------
--------------    ����     ------------------	
--------------------------------------------------
CREATE TABLE REGION (
	REGION_NO NUMBER PRIMARY KEY,
	REGION_NAME VARCHAR2(100) NOT NULL
);

COMMENT ON COLUMN REGION.REGION_NO IS '�����ڵ�';
COMMENT ON COLUMN REGION.REGION_NAME IS '������';

INSERT INTO REGION VALUES (1, '������ ������');
INSERT INTO REGION VALUES (2, '������ ����');
INSERT INTO REGION VALUES (3, '������ ���ؽ�');
INSERT INTO REGION VALUES (4, '������ ��ô��');
INSERT INTO REGION VALUES (5, '������ ���ʽ�');
INSERT INTO REGION VALUES (6, '������ �籸��');
INSERT INTO REGION VALUES (7, '������ ��籺');
INSERT INTO REGION VALUES (8, '������ ������');
INSERT INTO REGION VALUES (9, '������ ���ֽ�');
INSERT INTO REGION VALUES (10, '������ ������');
INSERT INTO REGION VALUES (11, '������ ������');
INSERT INTO REGION VALUES (12, '������ ö����');
INSERT INTO REGION VALUES (13, '������ ��õ��');
INSERT INTO REGION VALUES (14, '������ �¹��');
INSERT INTO REGION VALUES (15, '������ ��â��');
INSERT INTO REGION VALUES (16, '������ ȫõ��');
INSERT INTO REGION VALUES (17, '������ ȭõ��');
INSERT INTO REGION VALUES (18, '������ Ⱦ����');
INSERT INTO REGION VALUES (19, '��⵵ ����');
INSERT INTO REGION VALUES (20, '��⵵ ����');
INSERT INTO REGION VALUES (21, '��⵵ ��õ��');
INSERT INTO REGION VALUES (22, '��⵵ �����');
INSERT INTO REGION VALUES (23, '��⵵ ���ֽ�');
INSERT INTO REGION VALUES (24, '��⵵ ������');
INSERT INTO REGION VALUES (25, '��⵵ ������');
INSERT INTO REGION VALUES (26, '��⵵ ������');
INSERT INTO REGION VALUES (27, '��⵵ �����ֽ�');
INSERT INTO REGION VALUES (28, '��⵵ ����õ��');
INSERT INTO REGION VALUES (29, '��⵵ ��õ��');
INSERT INTO REGION VALUES (30, '��⵵ ������');
INSERT INTO REGION VALUES (31, '��⵵ ������');
INSERT INTO REGION VALUES (32, '��⵵ �����');
INSERT INTO REGION VALUES (33, '��⵵ �Ȼ��');
INSERT INTO REGION VALUES (34, '��⵵ �ȼ���');
INSERT INTO REGION VALUES (35, '��⵵ �Ⱦ��');
INSERT INTO REGION VALUES (36, '��⵵ ���ֽ�');
INSERT INTO REGION VALUES (37, '��⵵ ����');
INSERT INTO REGION VALUES (38, '��⵵ ���ֽ�');
INSERT INTO REGION VALUES (39, '��⵵ ��õ��');
INSERT INTO REGION VALUES (40, '��⵵ �����');
INSERT INTO REGION VALUES (41, '��⵵ ���ν�');
INSERT INTO REGION VALUES (42, '��⵵ �ǿս�');
INSERT INTO REGION VALUES (43, '��⵵ �����ν�');
INSERT INTO REGION VALUES (44, '��⵵ ��õ��');
INSERT INTO REGION VALUES (45, '��⵵ ���ֽ�');
INSERT INTO REGION VALUES (46, '��⵵ ���ý�');
INSERT INTO REGION VALUES (47, '��⵵ ��õ��');
INSERT INTO REGION VALUES (48, '��⵵ �ϳ���');
INSERT INTO REGION VALUES (49, '��⵵ ȭ����');
INSERT INTO REGION VALUES (50, '��󳲵� ������');
INSERT INTO REGION VALUES (51, '��󳲵� ��â��');
INSERT INTO REGION VALUES (52, '��󳲵� ���ؽ�');
INSERT INTO REGION VALUES (53, '��󳲵� ���ر�');
INSERT INTO REGION VALUES (54, '��󳲵� �о��');
INSERT INTO REGION VALUES (55, '��󳲵� ��õ��');
INSERT INTO REGION VALUES (56, '��󳲵� ��û��');
INSERT INTO REGION VALUES (57, '��󳲵� ����');
INSERT INTO REGION VALUES (58, '��󳲵� �Ƿɱ�');
INSERT INTO REGION VALUES (59, '��󳲵� ���ֽ�');
INSERT INTO REGION VALUES (60, '��󳲵� â�籺');
INSERT INTO REGION VALUES (61, '��󳲵� â����');
INSERT INTO REGION VALUES (62, '��󳲵� �뿵��');
INSERT INTO REGION VALUES (63, '��󳲵� �ϵ���');
INSERT INTO REGION VALUES (64, '��󳲵� �Ծȱ�');
INSERT INTO REGION VALUES (65, '��󳲵� �Ծ籺');
INSERT INTO REGION VALUES (66, '��󳲵� ��õ��');
INSERT INTO REGION VALUES (67, '���ϵ� ����');
INSERT INTO REGION VALUES (68, '���ϵ� ���ֽ�');
INSERT INTO REGION VALUES (69, '���ϵ� ��ɱ�');
INSERT INTO REGION VALUES (70, '���ϵ� ���̽�');
INSERT INTO REGION VALUES (71, '���ϵ� ������');
INSERT INTO REGION VALUES (72, '���ϵ� ��õ��');
INSERT INTO REGION VALUES (73, '���ϵ� �����');
INSERT INTO REGION VALUES (74, '���ϵ� ��ȭ��');
INSERT INTO REGION VALUES (75, '���ϵ� ���ֽ�');
INSERT INTO REGION VALUES (76, '���ϵ� ���ֱ�');
INSERT INTO REGION VALUES (77, '���ϵ� �ȵ���');
INSERT INTO REGION VALUES (78, '���ϵ� ������');
INSERT INTO REGION VALUES (79, '���ϵ� ���籺');
INSERT INTO REGION VALUES (80, '���ϵ� ���ֽ�');
INSERT INTO REGION VALUES (81, '���ϵ� ��õ��');
INSERT INTO REGION VALUES (82, '���ϵ� ��õ��');
INSERT INTO REGION VALUES (83, '���ϵ� �︪��');
INSERT INTO REGION VALUES (84, '���ϵ� ������');
INSERT INTO REGION VALUES (85, '���ϵ� �Ǽ���');
INSERT INTO REGION VALUES (86, '���ϵ� û����');
INSERT INTO REGION VALUES (87, '���ϵ� û�۱�');
INSERT INTO REGION VALUES (88, '���ϵ� ĥ�');
INSERT INTO REGION VALUES (89, '���ϵ� ���׽�');
INSERT INTO REGION VALUES (90, '���ֱ����� ���걸');
INSERT INTO REGION VALUES (91, '���ֱ����� ����');
INSERT INTO REGION VALUES (92, '���ֱ����� ����');
INSERT INTO REGION VALUES (93, '���ֱ����� �ϱ�');
INSERT INTO REGION VALUES (94, '���ֱ����� ����');
INSERT INTO REGION VALUES (95, '�뱸������ �޼���');
INSERT INTO REGION VALUES (96, '�뱸������ �޼���');
INSERT INTO REGION VALUES (97, '�뱸������ ������');
INSERT INTO REGION VALUES (98, '�뱸������ �߱�');
INSERT INTO REGION VALUES (99, '���������� �����');
INSERT INTO REGION VALUES (100, '���������� ������');
INSERT INTO REGION VALUES (101, '�λ걤���� ������');
INSERT INTO REGION VALUES (102, '�λ걤���� ������');
INSERT INTO REGION VALUES (103, '�λ걤���� ���屺');
INSERT INTO REGION VALUES (104, '�λ걤���� ������');
INSERT INTO REGION VALUES (105, '�λ걤���� �λ�����');
INSERT INTO REGION VALUES (106, '�λ걤���� ���');
INSERT INTO REGION VALUES (107, '�λ걤���� ���ϱ�');
INSERT INTO REGION VALUES (108, '�λ걤���� ������');
INSERT INTO REGION VALUES (109, '�λ걤���� ������');
INSERT INTO REGION VALUES (110, '�λ걤���� ������');
INSERT INTO REGION VALUES (111, '�λ걤���� �ؿ�뱸');
INSERT INTO REGION VALUES (112, '����Ư���� ������');
INSERT INTO REGION VALUES (113, '����Ư���� ������');
INSERT INTO REGION VALUES (207, '����Ư���� ������');
INSERT INTO REGION VALUES (114, '����Ư���� ���ϱ�');
INSERT INTO REGION VALUES (115, '����Ư���� ���Ǳ�');
INSERT INTO REGION VALUES (116, '����Ư���� ������');
INSERT INTO REGION VALUES (117, '����Ư���� ���α�');
INSERT INTO REGION VALUES (118, '����Ư���� ��õ��');
INSERT INTO REGION VALUES (119, '����Ư���� �����');
INSERT INTO REGION VALUES (120, '����Ư���� ������');
INSERT INTO REGION VALUES (121, '����Ư���� ���빮��');
INSERT INTO REGION VALUES (122, '����Ư���� ���۱�');
INSERT INTO REGION VALUES (123, '����Ư���� ������');
INSERT INTO REGION VALUES (124, '����Ư���� ���빮��');
INSERT INTO REGION VALUES (125, '����Ư���� ���ʱ�');
INSERT INTO REGION VALUES (126, '����Ư���� ������');
INSERT INTO REGION VALUES (127, '����Ư���� ���ϱ�');
INSERT INTO REGION VALUES (128, '����Ư���� ���ı�');
INSERT INTO REGION VALUES (129, '����Ư���� ��õ��');
INSERT INTO REGION VALUES (130, '����Ư���� ��������');
INSERT INTO REGION VALUES (131, '����Ư���� ��걸');
INSERT INTO REGION VALUES (132, '����Ư���� ����');
INSERT INTO REGION VALUES (133, '����Ư���� ���α�');
INSERT INTO REGION VALUES (134, '����Ư���� �߶���');
INSERT INTO REGION VALUES (135, '��걤���� ���ֱ�');
INSERT INTO REGION VALUES (136, '��õ������ ��ȭ��');
INSERT INTO REGION VALUES (137, '��õ������ ��籸');
INSERT INTO REGION VALUES (138, '��õ������ ������');
INSERT INTO REGION VALUES (139, '��õ������ ����Ȧ��');
INSERT INTO REGION VALUES (140, '��õ������ ����');
INSERT INTO REGION VALUES (141, '��õ������ ������');
INSERT INTO REGION VALUES (142, '��õ������ ������');
INSERT INTO REGION VALUES (143, '���󳲵� ������');
INSERT INTO REGION VALUES (144, '���󳲵� ���ﱺ');
INSERT INTO REGION VALUES (145, '���󳲵� ���');
INSERT INTO REGION VALUES (146, '���󳲵� �����');
INSERT INTO REGION VALUES (147, '���󳲵� ���ʱ�');
INSERT INTO REGION VALUES (148, '���󳲵� ���ֽ�');
INSERT INTO REGION VALUES (149, '���󳲵� ��籺');
INSERT INTO REGION VALUES (150, '���󳲵� ������');
INSERT INTO REGION VALUES (151, '���󳲵� ���ȱ�');
INSERT INTO REGION VALUES (152, '���󳲵� ������');
INSERT INTO REGION VALUES (153, '���󳲵� ��õ��');
INSERT INTO REGION VALUES (154, '���󳲵� �žȱ�');
INSERT INTO REGION VALUES (155, '���󳲵� ������');
INSERT INTO REGION VALUES (156, '���󳲵� ������');
INSERT INTO REGION VALUES (157, '���󳲵� ���ϱ�');
INSERT INTO REGION VALUES (158, '���󳲵� �ϵ���');
INSERT INTO REGION VALUES (159, '���󳲵� �强��');
INSERT INTO REGION VALUES (160, '���󳲵� ���ﱺ');
INSERT INTO REGION VALUES (161, '���󳲵� ������');
INSERT INTO REGION VALUES (162, '���󳲵� ����');
INSERT INTO REGION VALUES (163, '���󳲵� �س���');
INSERT INTO REGION VALUES (164, '���󳲵� ȭ����');
INSERT INTO REGION VALUES (165, '����ϵ� ��â��');
INSERT INTO REGION VALUES (166, '����ϵ� �����');
INSERT INTO REGION VALUES (167, '����ϵ� ������');
INSERT INTO REGION VALUES (168, '����ϵ� ������');
INSERT INTO REGION VALUES (169, '����ϵ� ���ֱ�');
INSERT INTO REGION VALUES (170, '����ϵ� �ξȱ�');
INSERT INTO REGION VALUES (171, '����ϵ� ��â��');
INSERT INTO REGION VALUES (172, '����ϵ� ���ֱ�');
INSERT INTO REGION VALUES (173, '����ϵ� �ͻ��');
INSERT INTO REGION VALUES (174, '����ϵ� �ӽǱ�');
INSERT INTO REGION VALUES (175, '����ϵ� �����');
INSERT INTO REGION VALUES (176, '����ϵ� ���ֽ�');
INSERT INTO REGION VALUES (177, '����ϵ� ������');
INSERT INTO REGION VALUES (178, '����ϵ� ���ȱ�');
INSERT INTO REGION VALUES (179, '����Ư����ġ�� ��������');
INSERT INTO REGION VALUES (180, '����Ư����ġ�� ���ֽ�');
INSERT INTO REGION VALUES (181, '��û���� ����');
INSERT INTO REGION VALUES (182, '��û���� ���ֽ�');
INSERT INTO REGION VALUES (183, '��û���� �ݻ걺');
INSERT INTO REGION VALUES (184, '��û���� ����');
INSERT INTO REGION VALUES (185, '��û���� ������');
INSERT INTO REGION VALUES (186, '��û���� ���ɽ�');
INSERT INTO REGION VALUES (187, '��û���� �ο���');
INSERT INTO REGION VALUES (188, '��û���� �����');
INSERT INTO REGION VALUES (189, '��û���� ��õ��');
INSERT INTO REGION VALUES (190, '��û���� �ƻ��');
INSERT INTO REGION VALUES (191, '��û���� ���걺');
INSERT INTO REGION VALUES (192, '��û���� õ�Ƚ�');
INSERT INTO REGION VALUES (193, '��û���� û�籺');
INSERT INTO REGION VALUES (194, '��û���� �¾ȱ�');
INSERT INTO REGION VALUES (195, '��û���� ȫ����');
INSERT INTO REGION VALUES (196, '��û�ϵ� ���걺');
INSERT INTO REGION VALUES (197, '��û�ϵ� �ܾ籺');
INSERT INTO REGION VALUES (198, '��û�ϵ� ������');
INSERT INTO REGION VALUES (199, '��û�ϵ� ������');
INSERT INTO REGION VALUES (200, '��û�ϵ� ��õ��');
INSERT INTO REGION VALUES (201, '��û�ϵ� ������');
INSERT INTO REGION VALUES (202, '��û�ϵ� ��õ��');
INSERT INTO REGION VALUES (203, '��û�ϵ� ����');
INSERT INTO REGION VALUES (204, '��û�ϵ� ��õ��');
INSERT INTO REGION VALUES (205, '��û�ϵ� û�ֽ�');
INSERT INTO REGION VALUES (206, '��û�ϵ� ���ֽ�');

--------------------------------------------------
--------------    ī�װ�     ------------------	
--------------------------------------------------
CREATE TABLE CATEGORY(
    CATEGORY_NO NUMBER PRIMARY KEY,
    CATEGORY_NAME VARCHAR2(100) NOT NULL
    );
COMMENT ON COLUMN CATEGORY.CATEGORY_NO IS 'ī�װ� ��ȣ';
COMMENT ON COLUMN CATEGORY.CATEGORY_NAME IS 'ī�װ� �̸�';

INSERT INTO CATEGORY VALUES(SEQ_CATEGORY.NEXTVAL, '��ü');
INSERT INTO CATEGORY VALUES(SEQ_CATEGORY.NEXTVAL, '�м�/��ȭ');
INSERT INTO CATEGORY VALUES(SEQ_CATEGORY.NEXTVAL, '������/����');
INSERT INTO CATEGORY VALUES(SEQ_CATEGORY.NEXTVAL, '������/����');
INSERT INTO CATEGORY VALUES(SEQ_CATEGORY.NEXTVAL, '����/Ƽ��/����');
INSERT INTO CATEGORY VALUES(SEQ_CATEGORY.NEXTVAL, '��Ƽ/�̿�');
INSERT INTO CATEGORY VALUES(SEQ_CATEGORY.NEXTVAL, '����/���׸���');
INSERT INTO CATEGORY VALUES(SEQ_CATEGORY.NEXTVAL, '��Ȱ/�ֹ��ǰ');
INSERT INTO CATEGORY VALUES(SEQ_CATEGORY.NEXTVAL, '�ݷ�������ǰ');
INSERT INTO CATEGORY VALUES(SEQ_CATEGORY.NEXTVAL, '��Ÿ');

--------------------------------------------------
--------------     ȸ�� ���     ------------------	
--------------------------------------------------
CREATE TABLE GRADE (
	GRADE_NO NUMBER PRIMARY KEY,
	GRADE_NAME VARCHAR2(100),
	MIN_GRADE NUMBER,
	MAX_GRADE NUMBER
);
COMMENT ON COLUMN GRADE.GRADE_NO IS '��޹�ȣ';
COMMENT ON COLUMN GRADE.GRADE_NAME IS '��޸�';
COMMENT ON COLUMN GRADE.MIN_GRADE IS '�ּҰ�';
COMMENT ON COLUMN GRADE.MAX_GRADE IS '�ִ밪';

INSERT INTO GRADE
VALUES (1, '������� ��ũ��Ʈ', 70, 99.9);
INSERT INTO GRADE
VALUES (2, 'Ʈ���� ��Ʈ', 45, 69.9);
INSERT INTO GRADE
VALUES (3, 'õ�Ͽ�', 30, 44.9);
INSERT INTO GRADE
VALUES (4, '���ұ�', 15, 29.9);
INSERT INTO GRADE
VALUES (5, '��Ʈ��', 0, 14.9);

--------------------------------------------------
--------------    ��������     ------------------	
--------------------------------------------------
CREATE TABLE NOTICE ( -- �������� ���̺� ����
NOTICE_NO NUMBER PRIMARY KEY,
NOTICE_TITLE VARCHAR2(200) NOT NULL,
NOTICE_CONTENT VARCHAR2(1000) NOT NULL,
CREATE_DATE DATE DEFAULT SYSDATE NOT NULL,
NOTICE_VIEWS NUMBER DEFAULT 0 NOT NULL,
DELETE_STATUS CHAR(1) DEFAULT 'N' CHECK(DELETE_STATUS IN ('Y', 'N')) NOT NULL );

INSERT INTO NOTICE (NOTICE_NO, NOTICE_TITLE, NOTICE_CONTENT) VALUES (SEQ_NOTICE.NEXTVAL, 'TITLE1', 'CONTENT1');
INSERT INTO NOTICE (NOTICE_NO, NOTICE_TITLE, NOTICE_CONTENT) VALUES (SEQ_NOTICE.NEXTVAL, 'TITLE2', 'CONTENT2');
INSERT INTO NOTICE (NOTICE_NO, NOTICE_TITLE, NOTICE_CONTENT) VALUES (SEQ_NOTICE.NEXTVAL, 'TITLE3', 'CONTENT3');


--------------------------------------------------
--------------     ȸ�� ����     ------------------	
--------------------------------------------------
CREATE TABLE USER_INFO (
	USER_NO NUMBER PRIMARY KEY,
	USER_ID VARCHAR2(20) NOT NULL UNIQUE,    
	USER_PWD VARCHAR2(20) NOT NULL,
	USER_NAME VARCHAR2(45) NOT NULL,
	PHONE CHAR(11),
	EMAIL VARCHAR2(45),
    ADDRESS VARCHAR2(100) NOT NULL,
	ENROLL_DATE DATE DEFAULT SYSDATE NOT NULL,
	STATUS CHAR(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N')),
	SALTY_SCORE NUMBER DEFAULT 36.5 NOT NULL,
    GRADE_NO NUMBER DEFAULT 3 NOT NULL,
    REGION_NO NUMBER,
    FOREIGN KEY(GRADE_NO) REFERENCES GRADE(GRADE_NO),
    FOREIGN KEY(REGION_NO) REFERENCES REGION(REGION_NO)
);
COMMENT ON COLUMN USER_INFO.USER_NO IS 'ȸ����ȣ';
COMMENT ON COLUMN USER_INFO.USER_ID IS 'ȸ�����̵�';
COMMENT ON COLUMN USER_INFO.USER_PWD IS 'ȸ����й�ȣ';
COMMENT ON COLUMN USER_INFO.USER_NAME IS '�г���';
COMMENT ON COLUMN USER_INFO.PHONE IS '��ȭ��ȣ';
COMMENT ON COLUMN USER_INFO.EMAIL IS '�̸���';
COMMENT ON COLUMN USER_INFO.ADDRESS IS '�ּ�';
COMMENT ON COLUMN USER_INFO.ENROLL_DATE IS 'ȸ��������';
COMMENT ON COLUMN USER_INFO.STATUS IS 'ȸ��Ż�𿩺�';
COMMENT ON COLUMN USER_INFO.SALTY_SCORE IS '����';
COMMENT ON COLUMN USER_INFO.GRADE_NO IS '��޹�ȣ';
COMMENT ON COLUMN USER_INFO.REGION_NO IS '�����ڵ�';

INSERT INTO USER_INFO
VALUES (SEQ_USER_INFO.NEXTVAL, 'admin01', '1234', '������1', '01011112222', 
    'admin01@kh.or.kr', '����Ư���� ��������', SYSDATE, DEFAULT, DEFAULT, DEFAULT, 130);
INSERT INTO USER_INFO
VALUES (SEQ_USER_INFO.NEXTVAL, 'admin02', '1234', '������2', '01022223333', 
    'admin02@kh.or.kr', '����Ư���� ��������', SYSDATE, DEFAULT, DEFAULT, DEFAULT, 130);
INSERT INTO USER_INFO
VALUES (SEQ_USER_INFO.NEXTVAL, 'user01', 'pass01', '�ұ�Ȧ��', '01012341111', 
    'user01@naver.com', '����Ư���� ������', SYSDATE, DEFAULT, DEFAULT, 4, 123);
INSERT INTO USER_INFO
VALUES (SEQ_USER_INFO.NEXTVAL, 'user02', 'pass02', '��ұ�', '01012342222', 
    'user02@naver.com', '����Ư���� ������', SYSDATE, DEFAULT, DEFAULT, 5, 123);
INSERT INTO USER_INFO
VALUES (SEQ_USER_INFO.NEXTVAL, 'user03', 'pass03', '���뺸��', '01012343333', 
    'user03@naver.com', '����Ư���� ������', SYSDATE, DEFAULT, DEFAULT, 1, 123);
INSERT INTO USER_INFO
VALUES (SEQ_USER_INFO.NEXTVAL, 'user04', 'pass04', '��Ʈ����', '01012344444', 
    'user04@naver.com', '����Ư���� ������', SYSDATE, DEFAULT, DEFAULT, 1, 123);
INSERT INTO USER_INFO
VALUES (SEQ_USER_INFO.NEXTVAL, 'user05', 'pass05', 'ġ��', '01012345555',
    'user05@naver.com', '��õ������ ��籸', SYSDATE, DEFAULT, 59, 2, 137);
INSERT INTO USER_INFO
VALUES (SEQ_USER_INFO.NEXTVAL, 'user06', 'pass06', '�Ҵ�', '01012346666',
    'user06@naver.com', '����Ư���� ����', SYSDATE, DEFAULT, DEFAULT, 3, 132);
INSERT INTO USER_INFO
VALUES (SEQ_USER_INFO.NEXTVAL, 'user07', 'pass07', '�����ڻ�', '01012347777',
    'user07@naver.com', '��⵵ ����', SYSDATE, DEFAULT, DEFAULT, 3, 20);
INSERT INTO USER_INFO
VALUES (SEQ_USER_INFO.NEXTVAL, 'user08', 'pass08', '�ұݻ�', '01012348888',
    'user08@naver.com', '��⵵ �Ȼ��', SYSDATE, DEFAULT, DEFAULT, 3, 33);
INSERT INTO USER_INFO
VALUES (SEQ_USER_INFO.NEXTVAL, 'user09', 'pass09', '����', '01012349999',
    'user09@naver.com', '������ ��ô��', SYSDATE, DEFAULT, 26.5, 4, 4);
INSERT INTO USER_INFO
VALUES (SEQ_USER_INFO.NEXTVAL, 'user10', 'pass10', '�𸶷罺', '01012340010',
    'user10@naver.com', '���ϵ� ���̽�', SYSDATE, DEFAULT, DEFAULT, 3, 70);
INSERT INTO USER_INFO
VALUES (SEQ_USER_INFO.NEXTVAL, 'user11', 'pass11', '�ǿ���ī', '01012340011',
    'user11@naver.com', '����Ư���� ����', SYSDATE, DEFAULT, 29, 4, 132);
INSERT INTO USER_INFO
VALUES (SEQ_USER_INFO.NEXTVAL, 'user12', 'pass12', '����', '01012340012',
    'user12@naver.com', '���ֱ����� ����', SYSDATE, DEFAULT, 47, 2, 91);
INSERT INTO USER_INFO
VALUES (SEQ_USER_INFO.NEXTVAL, 'user13', 'pass13', '������', '01012340013',
    'user13@naver.com', '��⵵ ����', SYSDATE, DEFAULT, DEFAULT, 3, 20);
INSERT INTO USER_INFO
VALUES (SEQ_USER_INFO.NEXTVAL, 'user14', 'pass14', '�Ƹ޸�ī��', '01012340014',
    'user14@naver.com', '�뱸������ �޼���', SYSDATE, DEFAULT, 38, 3, 95);
INSERT INTO USER_INFO
VALUES (SEQ_USER_INFO.NEXTVAL, 'user15', 'pass15', '���', '01012340015',
    'user15@naver.com', '�λ걤���� �ؿ�뱸', SYSDATE, DEFAULT, 12, 5, 111);
INSERT INTO USER_INFO
VALUES (SEQ_USER_INFO.NEXTVAL, 'user16', 'pass16', '������', '01012340016',
    'user16@naver.com', '��⵵ ����', SYSDATE, DEFAULT, DEFAULT, 3, 20);
INSERT INTO USER_INFO
VALUES (SEQ_USER_INFO.NEXTVAL, 'user17', 'pass17', '���̴�', '01012340017',
    'user17@naver.com', '����Ư���� ������', SYSDATE, DEFAULT, 60, 2, 123);
INSERT INTO USER_INFO
VALUES (SEQ_USER_INFO.NEXTVAL, 'user18', 'pass18', '�ƶ�ġ��', '01012340018',
    'user18@naver.com', '���󳲵� �����', SYSDATE, DEFAULT, DEFAULT, 3, 166);
INSERT INTO USER_INFO
VALUES (SEQ_USER_INFO.NEXTVAL, 'user19', 'pass19', 'Ű�þ�', '01012340019',
    'user19@naver.com', '��û�ϵ� ���ֽ�', SYSDATE, DEFAULT, DEFAULT, 3, 206);
INSERT INTO USER_INFO
VALUES (SEQ_USER_INFO.NEXTVAL, 'user20', 'pass20', '���͸�', '01012340020',
    'user20@naver.com', '����Ư���� ������', SYSDATE, DEFAULT, 43, 3, 123);


--------------------------------------------------
--------------    �Ź�     ------------------	
--------------------------------------------------
create table product( -- PRODUCT ���̺� ���� 
    product_no number primary key,
    product_name varchar2(100) not null,
    product_status char(1) default 'Y' check (product_status in ('Y','N')) not null,
    price number not null,
    created_at date default sysdate not null,
    delete_status char(1) default 'N' check (delete_status in ('Y','N')) not null,
    description varchar(1000) not null,
    product_views number default 0,
    category_no number,
    foreign key (category_no) references category(category_no),
    user_no number,
    foreign key (user_no) references user_info(user_no),
    region_no number references region(region_no)
    );

insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '�η��� ���̽��� ������� 6516���� �ð�', 10000, 'description1', 1, 155, 1);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '�ϲ����� ������ ����극��Ŀ 105', 20000, 'description2', 1, 155, 1);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '����Ű ���� �ٶ�����(XL)', 30000, 'description3', 1, 155, 1);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '������� û���� �˴ϴ� 28~29������', 10000, 'description1', 1, 155, 1);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '����ǰ) �޸� ���� ���� �տ��ǽ�', 20000, 'description2', 1, 155, 1);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '�����̴� ȸ�� �򸮴׹ݹ��� 34-36��ġ', 30000, 'description3', 1, 155, 1);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '[����ǰ]���븶 ������ ����ĿƮ Ŀ����', 10000, 'description1', 1, 155, 1);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '��籸�� �ǹ��� 35 Ǯ��', 20000, 'description2', 1, 155, 1);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '���� �ɸ� ������ ������ �� ����ǰ', 30000, 'description3', 1, 155, 1);

insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '(����ǰ)ũ�Ͻ� ���� 280', 10000, 'description1', 1, 155, 1);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '���� �� �������Ϻ�ĸ���� CK4601', 10000, 'description1', 1, 155, 1);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '�÷����Ŀ� ������ ������ ����', 20000, 'description2', 1, 155, 1);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, 'BETHEL (BLACK) ������Ʈ ���� �Ȱ�', 30000, 'description3', 1, 155, 1);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '�Ҵ� ������� ���� WH-CH520 ��', 10000, 'description1', 1, 155, 1);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '������ �ϳ׽� s������ (���Ͻ� �ϳ׽�)', 20000, 'description2', 1, 155, 1);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '�����̽� 523 ����û���� 28��ġ', 30000, 'description3', 1, 155, 1);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '���������� Ÿ�� ÿ�� ���� 44������', 10000, 'description1', 1, 155, 1);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '���� ���� ������ 235 ����', 20000, 'description2', 1, 155, 1);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, 'RRACE square fav bag (White)', 30000, 'description3', 1, 155, 1);

insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '��Ʈ�η� ������� WPC ���ڸ� 2kg', 45000, '�ܹ��� �Ŀ��', 6, 100, 3);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '������ ����� �� �ͱ׳��� ���ؽ� �峭��', 1000, '������ �峭��', 9, 121, 4);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '���� DW-5600BB-1', 60000, '���� �ո� �ð�', 2, 50, 5);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '���ų������׷��� ��ġ ���� N231ABG590', 90000, '����', 2, 70, 6);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '������ �� ������ ũ�� 50ml', 5500, '������ ũ�� ȭ��ǰ', 6, 43, 3);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, 'Ŭ��ư 1�ο� ��Ŭ���̳� ���� ���� K05M', 175000, '1�ο����', 7, 88, 4);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '[ũ��Ŀ���Ϸ��̵�] ����ī�� ������ ����_CL0MJK901', 14500, '������ ����', 2, 71, 5);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, 'ũ�Ͻ� �پ߹�� Ŭ�α� 205089-126', 30000, '���� �Ź�', 2, 160, 7);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '����ǰLG���� LG�׷� 15ZD90RT-GX56K', 1100000, 'LG ��Ʈ��', 3, 132, 3);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '���� ����Ʈ�����Ľ��� 72�� MOPV', 21500, '�Ľ���', 5, 196, 4);

insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '�عٶ����� �̼� ���� ���� �����', 182000, 'ķ�ο� ����', 4, 94, 5);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, 'Ƽ���̿��� ������þ ���������� �������� ��׷���', 19200, '��������', 8, 82, 8);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '���ĸ� ���̽��÷ο� �ø� ��Ʈ�� �Һ� 887ml', 31000, '�Һ�', 8, 24, 4);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '������ ����Ʈ �� ���� �޸���� �ȭ', 80000, '������ �ȭ', 2, 123, 5);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '��Ʈ��ġ ���ĸ� ����', 59000, '������ ����', 2, 48, 9);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '�𺣾� ALLNEW29000', 199000, 'û�ұ�', 3, 138, 4);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '����鿡 �Ϸ�߰� �������� 20g x 100��', 26400, '�߰�', 10, 122, 5);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '���� ���� �������� ��� �� �� ��Ǿ', 59200, '���', 6, 111, 4);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, 'ī��ü�� TYPE-2 ', 248000, '�繫�� ����', 7, 76, 10);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '���� �� ����ġ �� �Ͱ��� ', 89500, '����', 2, 145, 4);

insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '���� ����� ���̿���Ʈ ���̵����� ��� ����������', 8900, '������ �����', 2, 83, 6);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '�̳��� í���� ��ġ 14g 4p SC-71', 1000, '����� ��', 9, 179, 5);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '�Ｚ���� �Ｚ LH55BEAHLGFXKR', 554000, '�Ｚ TV', 3, 126, 9);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '�������� ���̺� ���� �����̾� Ʈ����ũ ������', 275000, '������', 10, 165, 5);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '�Ｚ���� ������ ����2 ���� SM-R510', 162000, '����2 ��������̾���', 3, 144, 6);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '���� ����� ���� ���� ���', 9900, '���� ������', 2, 121, 5);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '��ȭ�� ���� 2�� ��Ʈ', 46800, '��ȭ�� ȭ��ǰ', 6, 67, 4);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '�ֿ뾾�غ� CODI ������ ���� 3�� 30m 30��', 6900, '�η縶�� ����', 8, 11, 7);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '������G G304 LIGHTSPEED WIRELESS', 27800, '���� ���콺', 3, 72, 4);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '����Ű ����ƽ� ���ý� AA2146-100', 76500, '���� ���� ����Ű �Ź�', 2, 45, 11);

insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, 'KD���� �ι���������', 69800, '���ÿ� ���ǽ� ����', 4, 56,  7);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '���̺� ���� �ٹ� 1�� Ive IVE ����� 3����Ʈ', 15000, '���̺� 1�� �ٹ�', 10, 78, 4);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '������ ��Ʈ������ ���̺� ��Ŷ�� 8026737', 398000, '������ ��ǰ ����', 2, 28, 8);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '�����Ƚ� 1�ο� ��ǻ�� ���̹� ����ũ GD001 1200', 75000, '���̹� å��', 7, 62, 5);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '����� ���丮�� 6CC 116326', 61000, '������ ����', 2, 47, 8);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '�ݾ��� ��Ʈ�� ������ Ű�� ���ҳ� ���� ���� ���� �縻', 18900, '��Ʈ�� ������', 2, 25, 8);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, 'MF�����Ͽ콺 �˶�� ���� �����ʰ���', 200, '�ʰ��� ���� 200��', 8, 125, 5);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '��Ͽ�� 20�� ���� ���� Ƽ���� �⺻ ���� ��Ƽ', 4900, '������ ���� Ƽ', 2, 111, 4);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '�������� ���� CFM-F200DS', 157800, '�ͼ���', 8, 142, 7);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '�𸣰� MORGAN ���̺� ���� ��Ʈ 4��', 69000, '������ ���� ��Ʈ', 2, 135, 4);

insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '�ҽ��� ũ����Ż ��Ʈ �÷��� ���� ������ ������ 500ml', 6900, '������ ������', 8, 143, 5);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '������ ��Ż ����ũ KFAD', 8000, '����ũ', 10, 178, 9);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '�����۵� ���ַ��� ���� ���� û����', 19900, '������ û����', 2, 124, 5);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '�긮�� BT4000 ANC', 72500, '�����', 3, 152, 4);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '������ A4���� ������� 80g 2500��', 6000, 'A4 ����', 5, 137, 6);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, 'ũ�Ͻ� Ŭ���� ���ͷ��� Ŭ�α� 206340-001', 37600, '���� Ŭ��ũ', 2, 174, 8);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '�ѻ� �������Ʈ ���Ͻ����� ��Ʈ���� SS', 142000, '��Ʈ����', 7, 3, 7);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '�ô� TS ��Ǫ 500g', 8900, 'Ż�� ���� ��Ǫ', 8, 121, 6);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, '10 ������ �� ����ġ ���� 100 ��Ʈ 3��', 78900, '������ ��Ʈ', 2, 46, 4);
insert into product (product_no, product_name, price, description, category_no, region_no,user_no) values (seq_product.nextval, 'WD NEW My Passport Gen3', 72300, '1TB �����ϵ�', 3, 154, 4);



--------------------------------------------------
----------------    ��  	------------------
--------------------------------------------------
CREATE TABLE WISHLIST (
    WISHLIST_NO NUMBER PRIMARY KEY,
    USER_NO NUMBER NOT NULL,
    PRODUCT_NO NUMBER NOT NULL,
    FOREIGN KEY (USER_NO) REFERENCES USER_INFO (USER_NO),
    FOREIGN KEY (PRODUCT_NO) REFERENCES PRODUCT (PRODUCT_NO)
);

--------------------------------------------------
----------------    �����Խ���  	------------------
--------------------------------------------------
CREATE TABLE FREE_BOARD (
	FREE_BOARD_NO NUMBER PRIMARY KEY,
	USER_NO NUMBER NOT NULL,
	BOARD_TITLE VARCHAR2(100) NOT NULL,
	BOARD_CONTENT VARCHAR2(2000) NOT NULL,
	CREATED_DATE DATE DEFAULT SYSDATE NOT NULL,
	BOARD_VIEWS NUMBER DEFAULT 0 NOT NULL,
    LIKE_COUNT NUMBER DEFAULT 0 NOT NULL,
    DISLIKE_COUNT NUMBER DEFAULT 0 NOT NULL,
	DELETE_STATUS CHAR(1) DEFAULT 'Y' CHECK (DELETE_STATUS IN('Y', 'N')),
	CATEGORY VARCHAR2(100) NOT NULL,
    FOREIGN KEY (USER_NO) REFERENCES USER_INFO (USER_NO)
);

COMMENT ON COLUMN FREE_BOARD.FREE_BOARD_NO IS '�Խ��ǹ�ȣ';
COMMENT ON COLUMN FREE_BOARD.USER_NO IS '�ۼ���ȸ����ȣ';
COMMENT ON COLUMN FREE_BOARD.BOARD_TITLE IS '�Խ�������';
COMMENT ON COLUMN FREE_BOARD.BOARD_CONTENT IS '�Խ��ǳ���';
COMMENT ON COLUMN FREE_BOARD.CREATED_DATE IS '�Խ����ۼ���';
COMMENT ON COLUMN FREE_BOARD.BOARD_VIEWS IS '��ȸ��';
COMMENT ON COLUMN FREE_BOARD.DELETE_STATUS IS 'Y/N-������������/������';
COMMENT ON COLUMN FREE_BOARD.LIKE_COUNT IS '���ƿ䰳��';
COMMENT ON COLUMN FREE_BOARD.DISLIKE_COUNT IS '�Ⱦ�䰳��';
COMMENT ON COLUMN FREE_BOARD.CATEGORY IS '����, ����, ���� .. �ϵ��ڵ�';

INSERT INTO FREE_BOARD VALUES (SEQ_FREE_BOARD.NEXTVAL, 1, '���� ����׿�', '���� 5000�� ������ ����1�� ���ﵥ�� �ֳ���?', '2023-03-01', 200, DEFAULT, DEFAULT, DEFAULT, '���');
INSERT INTO FREE_BOARD VALUES (SEQ_FREE_BOARD.NEXTVAL, 2, '�峭 �˶�����', ' ���� ����Ⱦ���� ������ �λ� ��ĥ ��', '2023-03-02', 175, DEFAULT, DEFAULT, DEFAULT, '���');
INSERT INTO FREE_BOARD VALUES (SEQ_FREE_BOARD.NEXTVAL, 3, '���� �ִµ���', ' ����ö�� �˸� �ֹ� �� ���� �� �ֳ���?', '2023-03-03', 150, DEFAULT, DEFAULT, DEFAULT, '����');

--------------------------------------------------
----------------    �����Խ���  	------------------
--------------------------------------------------

CREATE TABLE SHARE_BOARD (
	SHARE_BOARD_NO NUMBER PRIMARY KEY,
	REGION_NO NUMBER NOT NULL,
    USER_NO NUMBER NOT NULL,
	BOARD_TITLE	VARCHAR2(100) NOT NULL,
	BOARD_CONTENT VARCHAR2(2000) NOT NULL,
	CREATED_DATE DATE DEFAULT SYSDATE NOT NULL,
	BOARD_VIEWS NUMBER DEFAULT 0 NOT NULL,
    LIKE_COUNT NUMBER DEFAULT 0 NOT NULL,
    DISLIKE_COUNT NUMBER DEFAULT 0 NOT NULL,
	DELETE_STATUS CHAR(1) DEFAULT 'Y' CHECK (DELETE_STATUS IN('Y', 'N')),
	SHARE_STATUS CHAR(1) DEFAULT 'N' CHECK (SHARE_STATUS IN('Y', 'N')),
    FOREIGN KEY (REGION_NO) REFERENCES REGION (REGION_NO),
	FOREIGN KEY (USER_NO) REFERENCES USER_INFO (USER_NO)
);

COMMENT ON COLUMN SHARE_BOARD.SHARE_BOARD_NO IS '�Խ��ǹ�ȣ';
COMMENT ON COLUMN SHARE_BOARD.REGION_NO IS '�����ڵ�';
COMMENT ON COLUMN SHARE_BOARD.USER_NO IS '�ۼ���ȸ����ȣ';
COMMENT ON COLUMN SHARE_BOARD.BOARD_TITLE IS '�Խ�������';
COMMENT ON COLUMN SHARE_BOARD.BOARD_CONTENT IS '�Խ��ǳ���';
COMMENT ON COLUMN SHARE_BOARD.CREATED_DATE IS '�Խ����ۼ���';
COMMENT ON COLUMN SHARE_BOARD.BOARD_VIEWS IS '��ȸ��';
COMMENT ON COLUMN SHARE_BOARD.DELETE_STATUS IS 'Y/N-������������/������';
COMMENT ON COLUMN SHARE_BOARD.SHARE_STATUS IS 'Y/N-�Ϸ�/������ // �����Ϸ� �� ���� +5��';

INSERT INTO SHARE_BOARD VALUES (SEQ_SHARE_BOARD.NEXTVAL, 155, 1, '���� �����մϴ�!!', '�ʿ��Ͻź� �����ּ��� �����մϴ�!!', '2023-03-01', DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT);
INSERT INTO SHARE_BOARD VALUES (SEQ_SHARE_BOARD.NEXTVAL, 2, 2, '���ϸ�ī�� ����', '�ʿ��Ͻź� �����ּ��� �����մϴ�!!', '2023-03-02', DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT);
INSERT INTO SHARE_BOARD VALUES (SEQ_SHARE_BOARD.NEXTVAL, 3, 3, '������14PRO MAX ����', '�ʿ��Ͻź� �����ּ��� �����մϴ�!!', '2023-03-03', DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT);



--------------------------------------------------
--------------    ��ǰ �̹���     ------------------	
--------------------------------------------------
CREATE TABLE IMG_FILE (
	FILE_NO NUMBER PRIMARY KEY,
    ORIGIN_NAME VARCHAR2(100) NOT NULL,
	CHANGE_FILE_NAME VARCHAR2(100) NOT NULL,
    FILE_PATH VARCHAR2(1000),
	CREATED_AT DATE DEFAULT SYSDATE NOT NULL,
	DELETE_STATUS CHAR(1) DEFAULT 'N' CHECK(DELETE_STATUS IN('Y', 'N')),
	FILE_LEVEL NUMBER NOT NULL,
	PRODUCT_NO NUMBER,
	FREE_BOARD_NO NUMBER,
	SHARE_BOARD_NO NUMBER,
	FOREIGN KEY (PRODUCT_NO) REFERENCES PRODUCT(PRODUCT_NO),
	FOREIGN KEY (FREE_BOARD_NO) REFERENCES FREE_BOARD(FREE_BOARD_NO),
	FOREIGN KEY (SHARE_BOARD_NO) REFERENCES SHARE_BOARD(SHARE_BOARD_NO)
);

-- �Ź� �̹��� �߰��ϰ��
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', 'main1.jpg', 'resources/product_upfiles/', DEFAULT, 1, 1);

INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', 'main2.jpg', 'resources/product_upfiles/', DEFAULT, 1, 2);

INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', 'main3.jpg', 'resources/product_upfiles/', DEFAULT, 1, 3);

INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', 'main4.jpg', 'resources/product_upfiles/', DEFAULT, 1, 4);

INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', 'main5.jpg', 'resources/product_upfiles/', DEFAULT, 1, 5);

INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', 'main6.jpg', 'resources/product_upfiles/', DEFAULT, 1, 6);

INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', 'main7.jpg', 'resources/product_upfiles/', DEFAULT, 1, 7);

INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', 'main8.jpg', 'resources/product_upfiles/', DEFAULT, 1, 8);

INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', 'main9.jpg', 'resources/product_upfiles/', DEFAULT, 1, 9);

INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', 'main10.jpg', 'resources/product_upfiles/', DEFAULT, 1, 10);

INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', 'main11.jpg', 'resources/product_upfiles/', DEFAULT, 1, 11);

INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', 'main12.jpg', 'resources/product_upfiles/', DEFAULT, 1, 12);

INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', 'main13.jpg', 'resources/product_upfiles/', DEFAULT, 1, 13);

INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', 'main14.jpg', 'resources/product_upfiles/', DEFAULT, 1, 14);

INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', 'main15.jpg', 'resources/product_upfiles/', DEFAULT, 1, 15);

INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', 'main16.jpg', 'resources/product_upfiles/', DEFAULT, 1, 16);

INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', 'main17.jpg', 'resources/product_upfiles/', DEFAULT, 1, 17);

INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', 'main18.jpg', 'resources/product_upfiles/', DEFAULT, 1, 18);

INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', 'main19.jpg', 'resources/product_upfiles/', DEFAULT, 1, 19);

INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', 'newyorkwhey.jpg', 'resources/product_upfiles/', DEFAULT, 1, 20);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', 'dogtoy.jpg', 'resources/product_upfiles/', DEFAULT, 1, 21);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', 'DW-5600BB-1.jpg', 'resources/product_upfiles/', DEFAULT, 1, 22);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', 'N231ABG590.jpg', 'resources/product_upfiles/', DEFAULT, 1, 23);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', 'snailcream.jpg', 'resources/product_upfiles/', DEFAULT, 1, 24);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '27927112522.20210714133301.jpg', 'resources/product_upfiles/', DEFAULT, 1, 25);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '1_P320773126_basic_1648556845573.jpg', 'resources/product_upfiles/', DEFAULT, 1, 26);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '39016364621.20230329111322.jpg', 'resources/product_upfiles/', DEFAULT, 1, 27);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '39343059618.20230412154550.jpg', 'resources/product_upfiles/', DEFAULT, 1, 28);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '24062566675.20210805115606.jpg', 'resources/product_upfiles/', DEFAULT, 1, 29);

INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '39317047219.20230412120650.jpg', 'resources/product_upfiles/', DEFAULT, 1, 30);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '39017274620.20230411160235.jpg', 'resources/product_upfiles/', DEFAULT, 1, 31);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '31638943619.20220406144432.jpg', 'resources/product_upfiles/', DEFAULT, 1, 32);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '35859710618.20230227141339.jpg', 'resources/product_upfiles/', DEFAULT, 1, 33);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '1_P335691748_basic_1676361365621.jpg', 'resources/product_upfiles/', DEFAULT, 1, 34);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '26758397523.20230302101017.jpg', 'resources/product_upfiles/', DEFAULT, 1, 35);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '29453271622.20230324145904.jpg', 'resources/product_upfiles/', DEFAULT, 1, 36);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '2600032275.20210527163344.jpg', 'resources/product_upfiles/', DEFAULT, 1, 37);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '5236c9a4c673c35eec8f99e421274cb2.jpg', 'resources/product_upfiles/', DEFAULT, 1, 38);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '39536581200.20230423070152.jpg', 'resources/product_upfiles/', DEFAULT, 1, 39);

INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '38679016542.20230315202638.jpg', 'resources/product_upfiles/', DEFAULT, 1, 40);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '27493720522.20210608173721.jpg', 'resources/product_upfiles/', DEFAULT, 1, 41);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '28121822524.202204071301142.jpg', 'resources/product_upfiles/', DEFAULT, 1, 42);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '33230308618.20230221113401.jpg', 'resources/product_upfiles/', DEFAULT, 1, 43);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '34108100618.20220816172630.jpg', 'resources/product_upfiles/', DEFAULT, 1, 44);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '38736638541.2.20230319133251.jpg', 'resources/product_upfiles/', DEFAULT, 1, 45);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '4157790954.20210723150307.jpg', 'resources/product_upfiles/', DEFAULT, 1, 46);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '9830444614.20220418134740.jpg', 'resources/product_upfiles/', DEFAULT, 1, 47);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '14364285018.20211207165501.jpg', 'resources/product_upfiles/', DEFAULT, 1, 48);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '14034046962.20210310103339.jpg', 'resources/product_upfiles/', DEFAULT, 1, 49);

INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '38833933975.20230322160058.jpg', 'resources/product_upfiles/', DEFAULT, 1, 50);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '38825692832.20230322090900.jpg', 'resources/product_upfiles/', DEFAULT, 1, 51);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '38544367620.20230310142318.jpg', 'resources/product_upfiles/', DEFAULT, 1, 52);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '21653917474.20200103135533.jpg', 'resources/product_upfiles/', DEFAULT, 1, 53);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '21653917474.20200103135533.jpg', 'resources/product_upfiles/', DEFAULT, 1, 54);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '38591881412.20230312133945.jpg', 'resources/product_upfiles/', DEFAULT, 1, 55);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '6490801519.20220330142432.jpg', 'resources/product_upfiles/', DEFAULT, 1, 56);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '32672162618.20220531091838.jpg', 'resources/product_upfiles/', DEFAULT, 1, 57);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '24860948522.20201116140056.jpg', 'resources/product_upfiles/', DEFAULT, 1, 58);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '39047687848.20230330131512.jpg', 'resources/product_upfiles/', DEFAULT, 1, 59);

INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '27805037523.20211118170347.jpg', 'resources/product_upfiles/', DEFAULT, 1, 60);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '37931721618.20230213150253.jpg', 'resources/product_upfiles/', DEFAULT, 1, 61);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '39269278087.20230409155225.jpg', 'resources/product_upfiles/', DEFAULT, 1, 62);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '30485533619.20221020103843.jpg', 'resources/product_upfiles/', DEFAULT, 1, 63);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '18054489982.20210303172646.jpg', 'resources/product_upfiles/', DEFAULT, 1, 64);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '38962910623.20230327122120.jpg', 'resources/product_upfiles/', DEFAULT, 1, 65);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '20291807091.20200406113259.jpg', 'resources/product_upfiles/', DEFAULT, 1, 66);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '10625038735.20180711095429.jpg', 'resources/product_upfiles/', DEFAULT, 1, 67);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '38988673368.20230328130505.jpg', 'resources/product_upfiles/', DEFAULT, 1, 68);
INSERT INTO IMG_FILE(FILE_NO, ORIGIN_NAME, CHANGE_FILE_NAME, FILE_PATH, CREATED_AT, FILE_LEVEL, PRODUCT_NO) VALUES(SEQ_IMG_FILE.NEXTVAL, 'originFileName', '21234238363.20200820180034.jpg', 'resources/product_upfiles/', DEFAULT, 1, 69);




-- �����Խ��� �̹��� �߰��ϰ��
INSERT INTO IMG_FILE(FILE_NO
                   , ORIGIN_NAME
                   , CHANGE_FILE_NAME
                   , FILE_PATH
                   , CREATED_AT
                   , FILE_LEVEL
                   , FREE_BOARD_NO)
              VALUES(SEQ_IMG_FILE.NEXTVAL
                   , 'originFileName2'
                   , 'changeFileName2'
                   , '~~~~~.jpg'
                   , DEFAULT
                   , 1
                   , 2);
                   
-- �����Խ��� �̹��� �߰��ϰ��
INSERT INTO IMG_FILE(FILE_NO
                   , ORIGIN_NAME
                   , CHANGE_FILE_NAME
                   , FILE_PATH
                   , CREATED_AT
                   , FILE_LEVEL
                   , SHARE_BOARD_NO)
              VALUES(SEQ_IMG_FILE.NEXTVAL
                   , 'originFileName3'
                   , 'changeFileName3'
                   , '~~~~~.jpg'
                   , DEFAULT
                   , 1
                   , 3);

--------------------------------------------------
--------------    1:1 ����     ------------------	
--------------------------------------------------
CREATE TABLE QNA( -- QNA ���̺� ����
    QNA_NO NUMBER PRIMARY KEY,
    Q_CATEGORY VARCHAR2(40) NOT NULL,
    Q_TITLE VARCHAR2(100) NOT NULL,
    Q_CONTENT VARCHAR2(1000) NOT NULL,
    Q_DATE DATE DEFAULT SYSDATE NOT NULL,
    Q_WRITER NUMBER NOT NULL,
    A_CONTENT VARCHAR2(1000),
    A_DATE DATE,
    DELETE_STATUS CHAR(1) DEFAULT 'N' CHECK(DELETE_STATUS IN('Y', 'N')),
    ANSWER_STATUS CHAR(1) DEFAULT 'N' CHECK(ANSWER_STATUS IN('Y', 'N')),
    FOREIGN KEY (Q_WRITER) REFERENCES USER_INFO(USER_NO)
);
INSERT INTO QNA (QNA_NO, Q_CATEGORY, Q_TITLE, Q_CONTENT, Q_WRITER) VALUES ( SEQ_QNA.NEXTVAL, '��Ÿ', 'Q_TITLE1', 'Q_CONTENT1', 1);
INSERT INTO QNA (QNA_NO, Q_CATEGORY, Q_TITLE, Q_CONTENT, Q_WRITER) VALUES ( SEQ_QNA.NEXTVAL, '��Ÿ', 'Q_TITLE2', 'Q_CONTENT2', 1);
INSERT INTO QNA (QNA_NO, Q_CATEGORY, Q_TITLE, Q_CONTENT, Q_WRITER) VALUES ( SEQ_QNA.NEXTVAL, '��Ÿ', 'Q_TITLE3', 'Q_CONTENT3', 1);


--------------------------------------------------
----------------    ÷������   	---------------------
--------------------------------------------------

CREATE TABLE ATTACHMENT (
  FILE_NO NUMBER PRIMARY KEY,
  REF_QNO NUMBER,
  REF_PNO NUMBER,
  REF_NNO NUMBER,
  ORIGIN_NAME VARCHAR2(255) NOT NULL,
  CHANGE_NAME VARCHAR2(255) NOT NULL,
  FILE_PATH VARCHAR2(1000),
  UPLOAD_DATE DATE DEFAULT SYSDATE NOT NULL,
  FILE_LEVEL NUMBER,
  DELETE_STATUS VARCHAR2(1) DEFAULT 'N' CHECK(DELETE_STATUS IN('Y', 'N')),
  FOREIGN KEY (REF_QNO) REFERENCES QNA(QNA_NO),
  FOREIGN KEY (REF_PNO) REFERENCES PRODUCT(PRODUCT_NO),
  FOREIGN KEY (REF_NNO) REFERENCES NOTICE(NOTICE_NO)
);

--------------------------------------------------
----------------    ������ �̹���   ----------------
--------------------------------------------------

CREATE TABLE PROFILE_IMG (
	FILE_NO NUMBER PRIMARY KEY,
    ORIGIN_NAME VARCHAR2(100) NOT NULL,
	CHANGE_NAME VARCHAR2(100) NOT NULL,
    FILE_PATH VARCHAR2(1000),
	UPLOAD_DATE DATE DEFAULT SYSDATE NOT NULL,
	DELETE_STATUS CHAR(1) DEFAULT 'N' CHECK(DELETE_STATUS IN('Y', 'N')),
    USER_NO NUMBER NOT NULL,
    FOREIGN KEY (USER_NO) REFERENCES USER_INFO (USER_NO)
);

--------------------------------------------------
----------------    ���   	---------------------
--------------------------------------------------
CREATE TABLE REPLY (
    REPLY_NO NUMBER PRIMARY KEY,
    FREE_BOARD_NO NUMBER DEFAULT NULL,
    SHARE_BOARD_NO NUMBER DEFAULT NULL,
    USER_NO NUMBER NOT NULL,
    REPLY_CONTENT VARCHAR2 (2000) NOT NULL, 
    CREATED_DATE DATE DEFAULT SYSDATE NOT NULL,
    DELETE_STATUS CHAR (1) DEFAULT 'Y' CHECK (DELETE_STATUS IN('Y', 'N')),
    FOREIGN KEY (FREE_BOARD_NO) REFERENCES FREE_BOARD (FREE_BOARD_NO),
    FOREIGN KEY (SHARE_BOARD_NO) REFERENCES SHARE_BOARD (SHARE_BOARD_NO),
    FOREIGN KEY (USER_NO) REFERENCES USER_INFO (USER_NO)
);

-- �����Խ��� ����� ���
INSERT INTO REPLY VALUES (SEQ_REPLY.NEXTVAL, 1, NULL, 1, '�Խ��Ǵ�۳���1', '2023-03-01', DEFAULT);
INSERT INTO REPLY VALUES (SEQ_REPLY.NEXTVAL, NULL, 2, 2, '�Խ��Ǵ�۳���2', '2023-03-02', DEFAULT);
INSERT INTO REPLY VALUES (SEQ_REPLY.NEXTVAL, 3, NULL, 3, '�Խ��Ǵ�۳���3', '2023-03-03', DEFAULT);


--------------------------------------------------
----------------     ����   	---------------------
--------------------------------------------------

CREATE TABLE NOTE (
    NOTE_NO NUMBER PRIMARY KEY,
    RECEIVER_ID NUMBER NOT NULL,
    SENDER_ID NUMBER NOT NULL,
    SEND_TIME DATE DEFAULT SYSDATE NOT NULL,
    MESSAGE_TITLE VARCHAR2 (100) NOT NULL,
    MESSAGE_CONTENT VARCHAR2 (2000) NOT NULL,
    DELETE_STATUS char(1) default 'N' check (DELETE_STATUS in ('Y','N')) NOT NULL,
    FOREIGN KEY (RECEIVER_ID) REFERENCES USER_INFO(USER_NO),
    FOREIGN KEY (SENDER_ID) REFERENCES USER_INFO(USER_NO)
);

INSERT INTO NOTE 
VALUES (SEQ_NOTE.NEXTVAL
              , 1
              , 1
              , '2023-03-01'
              , '��������1'
              , '��������1'
              , 'N');

INSERT INTO NOTE 
VALUES (SEQ_NOTE.NEXTVAL
              , 2
              , 2
              , '2023-03-02'
              , '��������2'
              , '��������2'
              , 'N');

INSERT INTO NOTE 
VALUES (SEQ_NOTE.NEXTVAL
              , 3
              , 3
              , '2023-03-03'
              , '��������3'
              , '��������3'
              ,'N');


--------------------------------------------------
----------------     �Ű�   	---------------------
--------------------------------------------------
CREATE TABLE DECLARATION (
	DECLARE_NO NUMBER PRIMARY KEY,
	DECLARE_TITLE VARCHAR2(100) NOT NULL,
	DECLARE_CONTENT VARCHAR2(2000) NOT NULL,
	DECLARE_TYPE VARCHAR2(20) NOT NULL,
	DECLARE_CHECK NUMBER DEFAULT 1,
	DECLARE_DATE DATE DEFAULT SYSDATE NOT NULL,
	DECLARE_REASON VARCHAR2(2000),
	DECLARE_CHECK_DATE DATE DEFAULT SYSDATE,
    FREE_BOARD_NO NUMBER,
    SHARE_BOARD_NO NUMBER,
    USER_NO NUMBER,
    FOREIGN KEY (FREE_BOARD_NO) REFERENCES FREE_BOARD(FREE_BOARD_NO),
	FOREIGN KEY (SHARE_BOARD_NO) REFERENCES SHARE_BOARD(SHARE_BOARD_NO),
    FOREIGN KEY (USER_NO) REFERENCES USER_INFO(USER_NO)
);
 
    

COMMENT ON COLUMN DECLARATION.DECLARE_CHECK IS '�Ű����';
COMMENT ON COLUMN DECLARATION.DECLARE_REASON IS '����';


INSERT INTO DECLARATION VALUES(SEQ_DECLARATION.NEXTVAL, 'title1', 'content1', 'Ŀ�´�Ƽ', DEFAULT, DEFAULT, 'reason1', DEFAULT, 1, 1, 1);
INSERT INTO DECLARATION VALUES(SEQ_DECLARATION.NEXTVAL, 'title2', 'content2', '�ŷ�', DEFAULT, DEFAULT, 'reason1', DEFAULT, 1 , 1, 1);
INSERT INTO DECLARATION VALUES(SEQ_DECLARATION.NEXTVAL, 'title3', 'content3', 'Ŀ�´�Ƽ', 2, DEFAULT, 'reason1', DEFAULT, 1 , 1, 1);

--------------------------------------------------
--------------    �ŷ�     ------------------	
--------------------------------------------------
CREATE TABLE TRADE(
    TRADE_NO NUMBER PRIMARY KEY,
    TRADE_DATE DATE,
    TRADE_SCORE NUMBER,
    REVIEW_CONTENT VARCHAR2(2000),
    REVIEW_DATE DATE DEFAULT SYSDATE NOT NULL,
    USER_NO NUMBER NOT NULL,
    FOREIGN KEY (USER_NO) REFERENCES USER_INFO(USER_NO),
    PRODUCT_NO NUMBER NOT NULL,
    FOREIGN KEY (PRODUCT_NO) REFERENCES PRODUCT(PRODUCT_NO)
    );
COMMENT ON COLUMN TRADE.TRADE_NO IS '�ŷ���ȣ';
COMMENT ON COLUMN TRADE.TRADE_DATE IS '�ŷ���';
COMMENT ON COLUMN TRADE.TRADE_SCORE IS '����';
COMMENT ON COLUMN TRADE.REVIEW_CONTENT IS '�ı⳻��';
COMMENT ON COLUMN TRADE.REVIEW_DATE IS '�ı�����';

INSERT INTO TRADE VALUES(SEQ_TRADE.NEXTVAL, '2023-04-01', 3, '�ųʰ� ���ƿ�', '2023-04-02', 1, 1);
INSERT INTO TRADE VALUES(SEQ_TRADE.NEXTVAL, '2023-03-01', 1, '���ο���', DEFAULT, 2, 2);
INSERT INTO TRADE VALUES(SEQ_TRADE.NEXTVAL, '2023-02-15', 3, 'ǰ���� ������', '2023-03-03', 3, 3);

COMMIT;
