-- This CLP file was created using DB2LOOK Version 9.1
-- Timestamp: Sat 07 Apr 2012 07:51:49 PM IST
-- Database Name: TEST           
-- Database Manager Version: DB2/LINUX Version 9.1.0       
-- Database Codepage: 1208
-- Database Collating Sequence is: IDENTITY


CONNECT TO TEST;

------------------------------------
-- DDL Statements for TABLESPACES --
------------------------------------


CREATE LARGE TABLESPACE SYSTOOLSPACE IN DATABASE PARTITION GROUP IBMCATGROUP 
	 PAGESIZE 4096 MANAGED BY AUTOMATIC STORAGE 
	 AUTORESIZE YES 
	 INITIALSIZE 32 M 
	 MAXSIZE NONE 
	 EXTENTSIZE 4
	 PREFETCHSIZE AUTOMATIC
	 BUFFERPOOL IBMDEFAULTBP
	 OVERHEAD 7.500000
	 TRANSFERRATE 0.060000 
	 FILE SYSTEM CACHING  
	 DROPPED TABLE RECOVERY ON;


CREATE USER TEMPORARY TABLESPACE SYSTOOLSTMPSPACE IN DATABASE PARTITION GROUP IBMCATGROUP 
	 PAGESIZE 4096 MANAGED BY AUTOMATIC STORAGE 
	 AUTORESIZE NO 
	 EXTENTSIZE 4
	 PREFETCHSIZE AUTOMATIC
	 BUFFERPOOL IBMDEFAULTBP
	 OVERHEAD 7.500000
	 TRANSFERRATE 0.060000 
	 FILE SYSTEM CACHING ;


-- Mimic tablespace

ALTER TABLESPACE SYSCATSPACE
      PREFETCHSIZE AUTOMATIC
      OVERHEAD 7.500000
      TRANSFERRATE 0.060000;


ALTER TABLESPACE TEMPSPACE1
      PREFETCHSIZE AUTOMATIC
      OVERHEAD 7.500000
      TRANSFERRATE 0.060000;


ALTER TABLESPACE USERSPACE1
      PREFETCHSIZE AUTOMATIC
      OVERHEAD 7.500000
      TRANSFERRATE 0.060000;




------------------------------------------------
-- DDL Statements for table "YASHINST"."TEST_TABLE"
------------------------------------------------
 

CREATE TABLE "YASHINST"."TEST_TABLE"  (
		  "NAME" VARCHAR(10) NOT NULL )   
		 IN "USERSPACE1" ; 






------------------------------------------------
-- DDL Statements for table "YASHINST"."BUSROUTE"
------------------------------------------------
 

CREATE TABLE "YASHINST"."BUSROUTE"  (
		  "BUS_NO" VARCHAR(5) NOT NULL , 
		  "TRANSPORT_COMPANY" VARCHAR(50) NOT NULL , 
		  "STOPS" VARCHAR(20) NOT NULL , 
		  "ARRIVAL_TIME" TIME NOT NULL , 
		  "DEPT_TIME" TIME NOT NULL , 
		  "DISTANCE_FROM_SOURCE" DECIMAL(5,0) NOT NULL )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."BUSROUTE"

ALTER TABLE "YASHINST"."BUSROUTE" 
	ADD CONSTRAINT "BUSROUTE" PRIMARY KEY
		("BUS_NO",
		 "TRANSPORT_COMPANY",
		 "STOPS");



------------------------------------------------
-- DDL Statements for table "YASHINST"."T20120318_022942"
------------------------------------------------
 

CREATE TABLE "YASHINST"."T20120318_022942"  (
		  "UID" DOUBLE NOT NULL , 
		  "FNAME" VARCHAR(20) , 
		  "MNAME" VARCHAR(20) , 
		  "LNAME" VARCHAR(20) , 
		  "PASSWORD" VARCHAR(15) , 
		  "DOB" DATE , 
		  "GENDER" CHAR(1) , 
		  "FATHER_NAME" VARCHAR(20) , 
		  "FATHERUID" INTEGER , 
		  "MOTHER_NAME" VARCHAR(20) , 
		  "MOTHERUID" INTEGER , 
		  "EDUCATIONAL_QUALI" VARCHAR(30) , 
		  "BLOODGROUP" VARCHAR(3) , 
		  "PAN" VARCHAR(10) , 
		  "PASSPORT" VARCHAR(10) , 
		  "DRIVING_LICENSE" VARCHAR(15) , 
		  "BIRTH_CERTI" VARCHAR(10) , 
		  "MARRIAGE_CERTI" VARCHAR(10) , 
		  "MARITAL_STATUS" VARCHAR(10) , 
		  "OCCUPA_PROF" VARCHAR(30) , 
		  "HEIGHT" INTEGER , 
		  "CASTE" VARCHAR(15) , 
		  "RELIGION" VARCHAR(15) , 
		  "GOVT_JOB" CHAR(1) , 
		  "EMAIL_ID" VARCHAR(30) , 
		  "ANNUAL_INCOME" INTEGER , 
		  "VISIBLE_DISTINGUISHABLE_MARK" VARCHAR(50) , 
		  "PHOTO_MODIFIED" DATE , 
		  "ACC_BAL" INTEGER , 
		  "BLOCK_NO" VARCHAR(5) , 
		  "BUILDING" VARCHAR(30) , 
		  "STREET" VARCHAR(30) , 
		  "LOCALITY_AREA" VARCHAR(30) , 
		  "CITY" VARCHAR(20) , 
		  "STATE" VARCHAR(30) , 
		  "PIN" INTEGER , 
		  "OFF_BLOCK_NO" VARCHAR(5) , 
		  "OFF_BUILDING" VARCHAR(30) , 
		  "OFF_STREET" VARCHAR(30) , 
		  "OFF_LOCALITY_AREA" VARCHAR(30) , 
		  "OFF_CITY" VARCHAR(20) , 
		  "OFF_STATE" VARCHAR(30) , 
		  "OFF_PIN" INTEGER , 
		  "COUNTRY_RESI" VARCHAR(15) , 
		  "RESIDING_SINCE" DATE , 
		  "RESI_PHONE" INTEGER , 
		  "MOBILE_PHONE" INTEGER )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."T20120318_022942"

ALTER TABLE "YASHINST"."T20120318_022942" 
	ADD PRIMARY KEY
		("UID");



------------------------------------------------
-- DDL Statements for table "YASHINST"."CITIZEN"
------------------------------------------------
 

CREATE TABLE "YASHINST"."CITIZEN"  (
		  "UID" VARCHAR(10) NOT NULL , 
		  "FNAME" VARCHAR(20) , 
		  "MNAME" VARCHAR(20) , 
		  "LNAME" VARCHAR(20) , 
		  "PASSWORD" VARCHAR(100) , 
		  "DOB" DATE , 
		  "GENDER" CHAR(1) , 
		  "FATHER_NAME" VARCHAR(20) , 
		  "FATHERUID" DOUBLE , 
		  "MOTHER_NAME" VARCHAR(20) , 
		  "MOTHERUID" INTEGER , 
		  "EDUCATIONAL_QUALI" VARCHAR(30) , 
		  "BLOODGROUP" VARCHAR(3) , 
		  "PAN" VARCHAR(10) , 
		  "PASSPORT" VARCHAR(10) , 
		  "DRIVING_LICENSE" VARCHAR(15) , 
		  "BIRTH_CERTI" VARCHAR(10) , 
		  "MARRIAGE_CERTI" VARCHAR(10) , 
		  "MARITAL_STATUS" VARCHAR(10) , 
		  "OCCUPA_PROF" VARCHAR(30) , 
		  "HEIGHT" INTEGER , 
		  "CASTE" VARCHAR(15) , 
		  "RELIGION" VARCHAR(15) , 
		  "GOVT_JOB" CHAR(1) , 
		  "EMAIL_ID" VARCHAR(30) , 
		  "ANNUAL_INCOME" INTEGER , 
		  "VISIBLE_DISTINGUISHABLE_MARK" VARCHAR(50) , 
		  "PHOTO_MODIFIED" DATE , 
		  "ACC_BAL" DOUBLE , 
		  "BLOCK_NO" VARCHAR(5) , 
		  "BUILDING" VARCHAR(30) , 
		  "STREET" VARCHAR(30) , 
		  "LOCALITY_AREA" VARCHAR(30) , 
		  "CITY" VARCHAR(20) , 
		  "STATE" VARCHAR(30) , 
		  "PIN" INTEGER , 
		  "OFF_BLOCK_NO" VARCHAR(5) , 
		  "OFF_BUILDING" VARCHAR(30) , 
		  "OFF_STREET" VARCHAR(30) , 
		  "OFF_LOCALITY_AREA" VARCHAR(30) , 
		  "OFF_CITY" VARCHAR(20) , 
		  "OFF_STATE" VARCHAR(30) , 
		  "OFF_PIN" INTEGER , 
		  "COUNTRY_RESI" VARCHAR(15) , 
		  "RESIDING_SINCE" DATE , 
		  "RESI_PHONE" VARCHAR(10) , 
		  "MOBILE_PHONE" VARCHAR(10) )   
		 IN "USERSPACE1" ; 

ALTER TABLE "YASHINST"."CITIZEN" PCTFREE 0;


-- DDL Statements for primary key on Table "YASHINST"."CITIZEN"

ALTER TABLE "YASHINST"."CITIZEN" 
	ADD PRIMARY KEY
		("UID");



------------------------------------------------
-- DDL Statements for table "YASHINST"."T20120318_022942_EXCEPTION"
------------------------------------------------
 

CREATE TABLE "YASHINST"."T20120318_022942_EXCEPTION"  (
		  "UID" VARCHAR(10) NOT NULL , 
		  "FNAME" VARCHAR(20) , 
		  "MNAME" VARCHAR(20) , 
		  "LNAME" VARCHAR(20) , 
		  "PASSWORD" VARCHAR(15) , 
		  "DOB" DATE , 
		  "GENDER" CHAR(1) , 
		  "FATHER_NAME" VARCHAR(20) , 
		  "FATHERUID" INTEGER , 
		  "MOTHER_NAME" VARCHAR(20) , 
		  "MOTHERUID" INTEGER , 
		  "EDUCATIONAL_QUALI" VARCHAR(30) , 
		  "BLOODGROUP" VARCHAR(3) , 
		  "PAN" VARCHAR(10) , 
		  "PASSPORT" VARCHAR(10) , 
		  "DRIVING_LICENSE" VARCHAR(15) , 
		  "BIRTH_CERTI" VARCHAR(10) , 
		  "MARRIAGE_CERTI" VARCHAR(10) , 
		  "MARITAL_STATUS" VARCHAR(10) , 
		  "OCCUPA_PROF" VARCHAR(30) , 
		  "HEIGHT" INTEGER , 
		  "CASTE" VARCHAR(15) , 
		  "RELIGION" VARCHAR(15) , 
		  "GOVT_JOB" CHAR(1) , 
		  "EMAIL_ID" VARCHAR(30) , 
		  "ANNUAL_INCOME" INTEGER , 
		  "VISIBLE_DISTINGUISHABLE_MARK" VARCHAR(50) , 
		  "PHOTO_MODIFIED" DATE , 
		  "ACC_BAL" INTEGER , 
		  "BLOCK_NO" VARCHAR(5) , 
		  "BUILDING" VARCHAR(30) , 
		  "STREET" VARCHAR(30) , 
		  "LOCALITY_AREA" VARCHAR(30) , 
		  "CITY" VARCHAR(20) , 
		  "STATE" VARCHAR(30) , 
		  "PIN" INTEGER , 
		  "OFF_BLOCK_NO" VARCHAR(5) , 
		  "OFF_BUILDING" VARCHAR(30) , 
		  "OFF_STREET" VARCHAR(30) , 
		  "OFF_LOCALITY_AREA" VARCHAR(30) , 
		  "OFF_CITY" VARCHAR(20) , 
		  "OFF_STATE" VARCHAR(30) , 
		  "OFF_PIN" INTEGER , 
		  "COUNTRY_RESI" VARCHAR(15) , 
		  "RESIDING_SINCE" DATE , 
		  "RESI_PHONE" INTEGER , 
		  "MOBILE_PHONE" INTEGER )   
		 IN "USERSPACE1" ; 






------------------------------------------------
-- DDL Statements for table "YASHINST"."BUS_DESCRIPTION"
------------------------------------------------
 

CREATE TABLE "YASHINST"."BUS_DESCRIPTION"  (
		  "BUS_COMPANY" VARCHAR(50) NOT NULL , 
		  "BUS_MODEL" VARCHAR(30) NOT NULL , 
		  "NO_OF_SEATS" INTEGER NOT NULL , 
		  "SEAT_TYPE" VARCHAR(30) NOT NULL , 
		  "FARE_FACTOR" DECIMAL(3,2) NOT NULL )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."BUS_DESCRIPTION"

ALTER TABLE "YASHINST"."BUS_DESCRIPTION" 
	ADD CONSTRAINT "BUS_DESCRIPTION" PRIMARY KEY
		("BUS_COMPANY",
		 "BUS_MODEL");



------------------------------------------------
-- DDL Statements for table "YASHINST"."T20120319_024032"
------------------------------------------------
 

CREATE TABLE "YASHINST"."T20120319_024032"  (
		  "BUS_NO" VARCHAR(5) NOT NULL , 
		  "TRANSPORT_COMPANY" VARCHAR(50) NOT NULL , 
		  "DATE" DATE NOT NULL , 
		  "STOPS" VARCHAR(20) NOT NULL , 
		  "AVAILABILITY" INTEGER NOT NULL )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."T20120319_024032"

ALTER TABLE "YASHINST"."T20120319_024032" 
	ADD CONSTRAINT "BUSAVAILABILITY" PRIMARY KEY
		("BUS_NO",
		 "TRANSPORT_COMPANY",
		 "DATE",
		 "STOPS");



------------------------------------------------
-- DDL Statements for table "YASHINST"."TRANSACTIONS"
------------------------------------------------
 

CREATE TABLE "YASHINST"."TRANSACTIONS"  (
		  "TRANSACTION_NO" INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (  
		    START WITH +1000  
		    INCREMENT BY +1  
		    MINVALUE +1000  
		    MAXVALUE +2147483647  
		    NO CYCLE  
		    NO CACHE  
		    NO ORDER ) , 
		  "UID" VARCHAR(10) NOT NULL , 
		  "TIME" TIME NOT NULL , 
		  "DATE" DATE NOT NULL , 
		  "USAGE_TYPE" VARCHAR(30) NOT NULL , 
		  "AMOUNT" DECIMAL(7,2) NOT NULL , 
		  "TRANSACTION_TYPE" VARCHAR(6) )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."TRANSACTIONS"

ALTER TABLE "YASHINST"."TRANSACTIONS" 
	ADD CONSTRAINT "TRANSACTIONS" PRIMARY KEY
		("TRANSACTION_NO");



ALTER TABLE "YASHINST"."TRANSACTIONS" ALTER COLUMN "TRANSACTION_NO" RESTART WITH 1185;

------------------------------------------------
-- DDL Statements for table "YASHINST"."BUSTICKET"
------------------------------------------------
 

CREATE TABLE "YASHINST"."BUSTICKET"  (
		  "TICKET_NUMBER" INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (  
		    START WITH +1000  
		    INCREMENT BY +1  
		    MINVALUE +1000  
		    MAXVALUE +2147483647  
		    NO CYCLE  
		    NO CACHE  
		    NO ORDER ) , 
		  "TRANSACTION_NO" INTEGER NOT NULL , 
		  "BUS_NO" VARCHAR(5) NOT NULL , 
		  "TRANSPORT_COMPANY" VARCHAR(50) NOT NULL , 
		  "DATE" DATE NOT NULL , 
		  "DEPT_TIME" TIME NOT NULL , 
		  "BOOKING_FROM" VARCHAR(20) NOT NULL , 
		  "BOOKING_TILL" VARCHAR(20) NOT NULL )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."BUSTICKET"

ALTER TABLE "YASHINST"."BUSTICKET" 
	ADD CONSTRAINT "BUSTICKET" PRIMARY KEY
		("TICKET_NUMBER");



ALTER TABLE "YASHINST"."BUSTICKET" ALTER COLUMN "TICKET_NUMBER" RESTART WITH 1014;

------------------------------------------------
-- DDL Statements for table "YASHINST"."BUSTICKETDET"
------------------------------------------------
 

CREATE TABLE "YASHINST"."BUSTICKETDET"  (
		  "PASSENGER_UID" VARCHAR(10) NOT NULL , 
		  "TICKET_NUMBER" INTEGER NOT NULL , 
		  "SEAT_NO" INTEGER NOT NULL )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."BUSTICKETDET"

ALTER TABLE "YASHINST"."BUSTICKETDET" 
	ADD CONSTRAINT "BUSTICKETDET" PRIMARY KEY
		("PASSENGER_UID",
		 "TICKET_NUMBER");



------------------------------------------------
-- DDL Statements for table "YASHINST"."BUSAVAILABLIITY"
------------------------------------------------
 

CREATE TABLE "YASHINST"."BUSAVAILABLIITY"  (
		  "BUS_NO" VARCHAR(5) NOT NULL , 
		  "TRANSPORT_COMPANY" VARCHAR(50) NOT NULL , 
		  "DATE" DATE NOT NULL , 
		  "AVAILABILITY" INTEGER NOT NULL )   
		 IN "USERSPACE1" ; 






------------------------------------------------
-- DDL Statements for table "YASHINST"."T20120319_024032_EXCEPTION"
------------------------------------------------
 

CREATE TABLE "YASHINST"."T20120319_024032_EXCEPTION"  (
		  "BUS_NO" VARCHAR(5) NOT NULL , 
		  "TRANSPORT_COMPANY" VARCHAR(50) NOT NULL , 
		  "DATE" DATE NOT NULL , 
		  "AVAILABILITY" INTEGER NOT NULL )   
		 IN "USERSPACE1" ; 






------------------------------------------------
-- DDL Statements for table "YASHINST"."DELAY"
------------------------------------------------
 

CREATE TABLE "YASHINST"."DELAY"  (
		  "BILL_TYPE" VARCHAR(11) NOT NULL , 
		  "SURCHARGE" INTEGER NOT NULL , 
		  "DELAY_DURATION" INTEGER NOT NULL )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."DELAY"

ALTER TABLE "YASHINST"."DELAY" 
	ADD CONSTRAINT "DELAY" PRIMARY KEY
		("BILL_TYPE");



------------------------------------------------
-- DDL Statements for table "YASHINST"."BILL_DETAILS"
------------------------------------------------
 

CREATE TABLE "YASHINST"."BILL_DETAILS"  (
		  "BILL_TYPE" VARCHAR(11) NOT NULL , 
		  "BILL_NO" VARCHAR(10) NOT NULL , 
		  "ACC_NO" VARCHAR(10) NOT NULL , 
		  "START_DATE" DATE NOT NULL , 
		  "AMT_TO_PAY" DECIMAL(7,2) NOT NULL , 
		  "AMT_PENDING" DECIMAL(7,2) NOT NULL , 
		  "AMT_PAID" DECIMAL(7,2) NOT NULL WITH DEFAULT 0 , 
		  "TRANSACTION_NO" INTEGER )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."BILL_DETAILS"

ALTER TABLE "YASHINST"."BILL_DETAILS" 
	ADD CONSTRAINT "BILL_DETAILS" PRIMARY KEY
		("BILL_TYPE",
		 "BILL_NO");



------------------------------------------------
-- DDL Statements for table "YASHINST"."CREATEACCOUNT"
------------------------------------------------
 

CREATE TABLE "YASHINST"."CREATEACCOUNT"  (
		  "BIRTH_CERTI" VARCHAR(10) NOT NULL , 
		  "UID" VARCHAR(10) NOT NULL )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."CREATEACCOUNT"

ALTER TABLE "YASHINST"."CREATEACCOUNT" 
	ADD CONSTRAINT "CREATEACCOUNT" PRIMARY KEY
		("BIRTH_CERTI");



------------------------------------------------
-- DDL Statements for table "YASHINST"."PAN"
------------------------------------------------
 

CREATE TABLE "YASHINST"."PAN"  (
		  "ACKNOWLEDGE_NO" INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (  
		    START WITH +1000  
		    INCREMENT BY +1  
		    MINVALUE +1000  
		    MAXVALUE +2147483647  
		    NO CYCLE  
		    NO CACHE  
		    NO ORDER ) , 
		  "TRANSACTION_NO" INTEGER NOT NULL , 
		  "REQD_NAME" VARCHAR(50) NOT NULL , 
		  "APPLICANT_UID" VARCHAR(10) NOT NULL , 
		  "COMMUNICATION_ADDRESS" VARCHAR(11) NOT NULL , 
		  "STATUS_OF_APPLICANT" VARCHAR(11) NOT NULL , 
		  "SOURCE_OF_INCOME" VARCHAR(30) , 
		  "ASSESSEE_ID" VARCHAR(10) NOT NULL , 
		  "CHECK_STATUS" VARCHAR(20) )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."PAN"

ALTER TABLE "YASHINST"."PAN" 
	ADD CONSTRAINT "PAN" PRIMARY KEY
		("ACKNOWLEDGE_NO");



ALTER TABLE "YASHINST"."PAN" ALTER COLUMN "ACKNOWLEDGE_NO" RESTART WITH 1024;

------------------------------------------------
-- DDL Statements for table "YASHINST"."COMPANY"
------------------------------------------------
 

CREATE TABLE "YASHINST"."COMPANY"  (
		  "ACKNOWLEDGEMENT_NO" INTEGER NOT NULL , 
		  "REG_NO" VARCHAR(10) NOT NULL , 
		  "ORGANIZN_NAME" VARCHAR(30) NOT NULL , 
		  "ORGANIZATION_NATURE" VARCHAR(10) NOT NULL , 
		  "AGREEMENT_DATE" DATE NOT NULL )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."COMPANY"

ALTER TABLE "YASHINST"."COMPANY" 
	ADD CONSTRAINT "COMPANY" PRIMARY KEY
		("ACKNOWLEDGEMENT_NO");



------------------------------------------------
-- DDL Statements for table "YASHINST"."BUS"
------------------------------------------------
 

CREATE TABLE "YASHINST"."BUS"  (
		  "BUS_NO" VARCHAR(5) NOT NULL , 
		  "TRANSPORT_COMPANY" VARCHAR(50) NOT NULL , 
		  "BUS_COMPANY" VARCHAR(50) NOT NULL , 
		  "BUS_MODEL" VARCHAR(30) NOT NULL , 
		  "BFROM" VARCHAR(20) NOT NULL , 
		  "BTO" VARCHAR(20) NOT NULL )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."BUS"

ALTER TABLE "YASHINST"."BUS" 
	ADD CONSTRAINT "BUS" PRIMARY KEY
		("BUS_NO",
		 "TRANSPORT_COMPANY");



------------------------------------------------
-- DDL Statements for table "YASHINST"."PARTY_DETAILS"
------------------------------------------------
 

CREATE TABLE "YASHINST"."PARTY_DETAILS"  (
		  "PARTY_NAME" VARCHAR(50) NOT NULL )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."PARTY_DETAILS"

ALTER TABLE "YASHINST"."PARTY_DETAILS" 
	ADD CONSTRAINT "PARTY_DETAILS" PRIMARY KEY
		("PARTY_NAME");



------------------------------------------------
-- DDL Statements for table "YASHINST"."CANDIDATE_DETAILS"
------------------------------------------------
 

CREATE TABLE "YASHINST"."CANDIDATE_DETAILS"  (
		  "CANDIDATE_UID" VARCHAR(10) NOT NULL , 
		  "PARTY_NAME" VARCHAR(50) NOT NULL , 
		  "LOCALITY" VARCHAR(30) NOT NULL , 
		  "NO_OF_VOTES" INTEGER NOT NULL WITH DEFAULT 0 )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."CANDIDATE_DETAILS"

ALTER TABLE "YASHINST"."CANDIDATE_DETAILS" 
	ADD CONSTRAINT "CANDIDATE_DETAILS" PRIMARY KEY
		("CANDIDATE_UID");



------------------------------------------------
-- DDL Statements for table "YASHINST"."VOTERLIST"
------------------------------------------------
 

CREATE TABLE "YASHINST"."VOTERLIST"  (
		  "VOTERUID" VARCHAR(10) NOT NULL )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."VOTERLIST"

ALTER TABLE "YASHINST"."VOTERLIST" 
	ADD CONSTRAINT "VOTERLIST" PRIMARY KEY
		("VOTERUID");



------------------------------------------------
-- DDL Statements for table "YASHINST"."MODERATOR"
------------------------------------------------
 

CREATE TABLE "YASHINST"."MODERATOR"  (
		  "UID" VARCHAR(10) NOT NULL , 
		  "LOGIN_ID" VARCHAR(15) NOT NULL , 
		  "PASSWORD" VARCHAR(15) NOT NULL )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."MODERATOR"

ALTER TABLE "YASHINST"."MODERATOR" 
	ADD CONSTRAINT "MODERATOR" PRIMARY KEY
		("UID");



------------------------------------------------
-- DDL Statements for table "YASHINST"."HISTORY"
------------------------------------------------
 

CREATE TABLE "YASHINST"."HISTORY"  (
		  "UID" VARCHAR(10) NOT NULL , 
		  "COLUMN_NAME" VARCHAR(20) NOT NULL , 
		  "DATE" DATE NOT NULL , 
		  "TIME" TIME NOT NULL , 
		  "OLD_VALUE" VARCHAR(100) NOT NULL , 
		  "MOD_UID" VARCHAR(10) NOT NULL )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."HISTORY"

ALTER TABLE "YASHINST"."HISTORY" 
	ADD CONSTRAINT "HISTORY" PRIMARY KEY
		("UID",
		 "COLUMN_NAME",
		 "DATE",
		 "TIME");



------------------------------------------------
-- DDL Statements for table "YASHINST"."PASSPORT"
------------------------------------------------
 

CREATE TABLE "YASHINST"."PASSPORT"  (
		  "PASSPORT_NO" VARCHAR(10) NOT NULL , 
		  "PASSPORT_FILE_NO" VARCHAR(15) NOT NULL , 
		  "EXPIRY_DATE" DATE NOT NULL , 
		  "ISSUE_DATE" DATE NOT NULL , 
		  "PLACE_ISSUE" VARCHAR(30) NOT NULL , 
		  "ECNR_STAMP" VARCHAR(3) NOT NULL , 
		  "STATUS" VARCHAR(10) NOT NULL )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."PASSPORT"

ALTER TABLE "YASHINST"."PASSPORT" 
	ADD CONSTRAINT "PASSPORT" PRIMARY KEY
		("PASSPORT_NO");



------------------------------------------------
-- DDL Statements for table "YASHINST"."LICENSE"
------------------------------------------------
 

CREATE TABLE "YASHINST"."LICENSE"  (
		  "LICENSE_NO" VARCHAR(10) NOT NULL , 
		  "LICENSE_TYPE" VARCHAR(10) NOT NULL , 
		  "COV" VARCHAR(10) NOT NULL , 
		  "ISSUE_DATE" DATE NOT NULL , 
		  "EXPIRY_DATE" DATE NOT NULL , 
		  "STATUS" VARCHAR(10) NOT NULL )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."LICENSE"

ALTER TABLE "YASHINST"."LICENSE" 
	ADD CONSTRAINT "LICENSE" PRIMARY KEY
		("LICENSE_NO");



------------------------------------------------
-- DDL Statements for table "YASHINST"."ADMIN"
------------------------------------------------
 

CREATE TABLE "YASHINST"."ADMIN"  (
		  "UID" VARCHAR(10) NOT NULL , 
		  "LOGIN_ID" VARCHAR(15) NOT NULL , 
		  "PASSWORD" VARCHAR(15) NOT NULL )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."ADMIN"

ALTER TABLE "YASHINST"."ADMIN" 
	ADD CONSTRAINT "ADMIN" PRIMARY KEY
		("UID");



------------------------------------------------
-- DDL Statements for table "YASHINST"."FAQ"
------------------------------------------------
 

CREATE TABLE "YASHINST"."FAQ"  (
		  "QUESTION" VARCHAR(50) NOT NULL , 
		  "ANSWER" VARCHAR(100) NOT NULL )   
		 IN "USERSPACE1" ; 






------------------------------------------------
-- DDL Statements for table "YASHINST"."REFILL"
------------------------------------------------
 

CREATE TABLE "YASHINST"."REFILL"  (
		  "UID" VARCHAR(10) NOT NULL , 
		  "LOGIN_ID" VARCHAR(15) NOT NULL , 
		  "PASSWORD" VARCHAR(15) NOT NULL )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."REFILL"

ALTER TABLE "YASHINST"."REFILL" 
	ADD CONSTRAINT "REFILL" PRIMARY KEY
		("UID");



------------------------------------------------
-- DDL Statements for table "YASHINST"."GOVTPAY"
------------------------------------------------
 

CREATE TABLE "YASHINST"."GOVTPAY"  (
		  "GOVT_UID" VARCHAR(10) NOT NULL , 
		  "TRANSACTION_NO" INTEGER NOT NULL )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."GOVTPAY"

ALTER TABLE "YASHINST"."GOVTPAY" 
	ADD CONSTRAINT "GOVTPAY" PRIMARY KEY
		("GOVT_UID",
		 "TRANSACTION_NO");



------------------------------------------------
-- DDL Statements for table "YASHINST"."TEST_DATE"
------------------------------------------------
 

CREATE TABLE "YASHINST"."TEST_DATE"  (
		  "D" DATE )   
		 IN "USERSPACE1" ; 






------------------------------------------------
-- DDL Statements for table "YASHINST"."IT_OFFICIAL"
------------------------------------------------
 

CREATE TABLE "YASHINST"."IT_OFFICIAL"  (
		  "UID" VARCHAR(10) NOT NULL , 
		  "LOGIN_ID" VARCHAR(15) NOT NULL , 
		  "PASSWORD" VARCHAR(15) NOT NULL )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."IT_OFFICIAL"

ALTER TABLE "YASHINST"."IT_OFFICIAL" 
	ADD CONSTRAINT "IT_OFFICIAL" PRIMARY KEY
		("UID");



------------------------------------------------
-- DDL Statements for table "YASHINST"."TAX"
------------------------------------------------
 

CREATE TABLE "YASHINST"."TAX"  (
		  "TRANSACTION_NO" INTEGER NOT NULL , 
		  "UID" VARCHAR(10) NOT NULL , 
		  "ASSESSMENT_YEAR" VARCHAR(4) NOT NULL , 
		  "PAYMENT_TYPE" INTEGER NOT NULL , 
		  "PAYMENT_MODE" VARCHAR(20) NOT NULL )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."TAX"

ALTER TABLE "YASHINST"."TAX" 
	ADD CONSTRAINT "TAX" PRIMARY KEY
		("TRANSACTION_NO");



------------------------------------------------
-- DDL Statements for table "YASHINST"."CREDITCARDDETAILS"
------------------------------------------------
 

CREATE TABLE "YASHINST"."CREDITCARDDETAILS"  (
		  "CREDIT_CARD_NO" VARCHAR(16) NOT NULL , 
		  "CVV" INTEGER , 
		  "BANK_NAME" VARCHAR(30) , 
		  "NAME_ON_CARD" VARCHAR(30) , 
		  "EXPIRY_DATE" VARCHAR(5) , 
		  "CARD_TYPE" VARCHAR(15) , 
		  "BALANCE" INTEGER , 
		  "PASSWORD" VARCHAR(15) NOT NULL )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."CREDITCARDDETAILS"

ALTER TABLE "YASHINST"."CREDITCARDDETAILS" 
	ADD CONSTRAINT "CREDITCARDDETAILS" PRIMARY KEY
		("CREDIT_CARD_NO");



------------------------------------------------
-- DDL Statements for table "YASHINST"."CCTRANSACTIONS"
------------------------------------------------
 

CREATE TABLE "YASHINST"."CCTRANSACTIONS"  (
		  "CREDIT_CARD_NO" VARCHAR(10) NOT NULL , 
		  "TRANSACTION_NO" INTEGER NOT NULL )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."CCTRANSACTIONS"

ALTER TABLE "YASHINST"."CCTRANSACTIONS" 
	ADD CONSTRAINT "CCTRANSACTIONS" PRIMARY KEY
		("CREDIT_CARD_NO",
		 "TRANSACTION_NO");



------------------------------------------------
-- DDL Statements for table "YASHINST"."LICENSE_SCHEDULE"
------------------------------------------------
 

CREATE TABLE "YASHINST"."LICENSE_SCHEDULE"  (
		  "OFFICE_LOCATION" VARCHAR(50) NOT NULL , 
		  "DATE" DATE NOT NULL , 
		  "TIME" TIME NOT NULL , 
		  "AVAILABILITY" INTEGER )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."LICENSE_SCHEDULE"

ALTER TABLE "YASHINST"."LICENSE_SCHEDULE" 
	ADD PRIMARY KEY
		("OFFICE_LOCATION",
		 "DATE",
		 "TIME");



------------------------------------------------
-- DDL Statements for table "YASHINST"."LICENSE_APPLICATION"
------------------------------------------------
 

CREATE TABLE "YASHINST"."LICENSE_APPLICATION"  (
		  "APPLICATION_NO" INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (  
		    START WITH +1000  
		    INCREMENT BY +1  
		    MINVALUE +1000  
		    MAXVALUE +2147483647  
		    NO CYCLE  
		    NO CACHE  
		    NO ORDER ) , 
		  "TRANSACTION_NO" INTEGER NOT NULL , 
		  "UID" VARCHAR(10) NOT NULL , 
		  "LICENSE_TYPE" VARCHAR(10) NOT NULL , 
		  "COV" VARCHAR(10) NOT NULL , 
		  "PLACE" VARCHAR(30) NOT NULL , 
		  "DATE" DATE NOT NULL , 
		  "TIME" TIME NOT NULL )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."LICENSE_APPLICATION"

ALTER TABLE "YASHINST"."LICENSE_APPLICATION" 
	ADD CONSTRAINT "LICENSE_APPLIC" PRIMARY KEY
		("APPLICATION_NO");



ALTER TABLE "YASHINST"."LICENSE_APPLICATION" ALTER COLUMN "APPLICATION_NO" RESTART WITH 1039;

------------------------------------------------
-- DDL Statements for table "YASHINST"."STOLEN_VEHICLE"
------------------------------------------------
 

CREATE TABLE "YASHINST"."STOLEN_VEHICLE"  (
		  "COMPLAINT_NO" INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (  
		    START WITH +1000  
		    INCREMENT BY +1  
		    MINVALUE +1000  
		    MAXVALUE +2147483647  
		    NO CYCLE  
		    NO CACHE  
		    NO ORDER ) , 
		  "UID" VARCHAR(10) NOT NULL , 
		  "VEHICLE_PLATE_NO" VARCHAR(15) NOT NULL , 
		  "COMPANY_NAME" VARCHAR(20) NOT NULL , 
		  "MODEL_NAME" VARCHAR(20) NOT NULL , 
		  "COLOUR" VARCHAR(20) NOT NULL , 
		  "DATE_OF_PURCHASE" DATE , 
		  "DATE_OF_REGISTER" DATE , 
		  "DATE_OF_MISSING" DATE NOT NULL , 
		  "TIME_OF_MISSING" TIME NOT NULL , 
		  "ADDRESS_OF_MISSING" VARCHAR(100) NOT NULL , 
		  "DAMAGE_AREAS" VARCHAR(30) , 
		  "ADDITIONAL_CAR_DETAILS" VARCHAR(50) , 
		  "TRANSACTION_NO" INTEGER )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."STOLEN_VEHICLE"

ALTER TABLE "YASHINST"."STOLEN_VEHICLE" 
	ADD CONSTRAINT "STOLEN_VEHICLE" PRIMARY KEY
		("COMPLAINT_NO");



ALTER TABLE "YASHINST"."STOLEN_VEHICLE" ALTER COLUMN "COMPLAINT_NO" RESTART WITH 1028;

------------------------------------------------
-- DDL Statements for table "YASHINST"."COMPLAINT_VEHICLE_STATUS"
------------------------------------------------
 

CREATE TABLE "YASHINST"."COMPLAINT_VEHICLE_STATUS"  (
		  "COMPLAINT_NO" INTEGER NOT NULL , 
		  "STATUS" VARCHAR(15) NOT NULL , 
		  "OFFICER_IN_CHARGE" VARCHAR(10) , 
		  "THIEF_UID" VARCHAR(10) , 
		  "THIEF_NAME" VARCHAR(10) , 
		  "DATE_WHEN_FOUND" DATE , 
		  "ADDITIONAL_DETAILS" VARCHAR(50) )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."COMPLAINT_VEHICLE_STATUS"

ALTER TABLE "YASHINST"."COMPLAINT_VEHICLE_STATUS" 
	ADD CONSTRAINT "COMPLAINT_STATUS" PRIMARY KEY
		("COMPLAINT_NO");



------------------------------------------------
-- DDL Statements for table "YASHINST"."CERTIFICATES"
------------------------------------------------
 

CREATE TABLE "YASHINST"."CERTIFICATES"  (
		  "UID" VARCHAR(10) , 
		  "TRANSACTION_NO" INTEGER , 
		  "CERTI_TYPE" VARCHAR(20) , 
		  "DATE_OF_APP" DATE )   
		 IN "USERSPACE1" ; 






------------------------------------------------
-- DDL Statements for table "YASHINST"."TRAIN"
------------------------------------------------
 

CREATE TABLE "YASHINST"."TRAIN"  (
		  "TRAIN_NO" INTEGER NOT NULL , 
		  "TRAIN_NAME" VARCHAR(20) NOT NULL , 
		  "SOURCE" VARCHAR(20) NOT NULL , 
		  "DESTINATION" VARCHAR(20) NOT NULL , 
		  "ARRIVAL_TIME" TIME NOT NULL , 
		  "DEPARTURE_TIME" TIME NOT NULL , 
		  "DAYS_OF_RUNNING" BIGINT NOT NULL )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."TRAIN"

ALTER TABLE "YASHINST"."TRAIN" 
	ADD CONSTRAINT "T" PRIMARY KEY
		("TRAIN_NO");



------------------------------------------------
-- DDL Statements for table "YASHINST"."QUOTA"
------------------------------------------------
 

CREATE TABLE "YASHINST"."QUOTA"  (
		  "TRAIN_NO" INTEGER , 
		  "QUOTA" VARCHAR(15) , 
		  "FARE_FACTOR" DOUBLE )   
		 IN "USERSPACE1" ; 






------------------------------------------------
-- DDL Statements for table "YASHINST"."TRAINCLASS"
------------------------------------------------
 

CREATE TABLE "YASHINST"."TRAINCLASS"  (
		  "TRAIN_NO" INTEGER NOT NULL , 
		  "CLASS" VARCHAR(3) NOT NULL , 
		  "FARE_FACTOR" DOUBLE NOT NULL , 
		  "NO_OF_COACHES" INTEGER , 
		  "SEATS_PER_COACH" INTEGER )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."TRAINCLASS"

ALTER TABLE "YASHINST"."TRAINCLASS" 
	ADD CONSTRAINT "CC1332060379807" PRIMARY KEY
		("TRAIN_NO",
		 "CLASS");



------------------------------------------------
-- DDL Statements for table "YASHINST"."TRAINROUTE"
------------------------------------------------
 

CREATE TABLE "YASHINST"."TRAINROUTE"  (
		  "TRAIN_NO" INTEGER NOT NULL , 
		  "STATION" VARCHAR(30) NOT NULL , 
		  "ARRIVAL_TIME" TIME NOT NULL , 
		  "DEPART_TIME" TIME NOT NULL , 
		  "DISTANCE_FROM_SOURCE" INTEGER NOT NULL )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."TRAINROUTE"

ALTER TABLE "YASHINST"."TRAINROUTE" 
	ADD CONSTRAINT "CC1332052036113" PRIMARY KEY
		("STATION",
		 "TRAIN_NO");



------------------------------------------------
-- DDL Statements for table "YASHINST"."TRAINTICKET"
------------------------------------------------
 

CREATE TABLE "YASHINST"."TRAINTICKET"  (
		  "PNR_NO" INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (  
		    START WITH +1000  
		    INCREMENT BY +1  
		    MINVALUE +1000  
		    MAXVALUE +2147483647  
		    NO CYCLE  
		    NO CACHE  
		    NO ORDER ) , 
		  "TRANSACTION_NO" INTEGER , 
		  "TRAIN_NO" INTEGER , 
		  "DATE" DATE , 
		  "SOURCE" VARCHAR(30) , 
		  "DESTINATION" VARCHAR(30) , 
		  "CLASS" VARCHAR(2) , 
		  "BOOKER_ID" VARCHAR(10) )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."TRAINTICKET"

ALTER TABLE "YASHINST"."TRAINTICKET" 
	ADD PRIMARY KEY
		("PNR_NO");



ALTER TABLE "YASHINST"."TRAINTICKET" ALTER COLUMN "PNR_NO" RESTART WITH 1094;

------------------------------------------------
-- DDL Statements for table "YASHINST"."TRAINTICKETDETAILS"
------------------------------------------------
 

CREATE TABLE "YASHINST"."TRAINTICKETDETAILS"  (
		  "PNR_NO" INTEGER NOT NULL , 
		  "PASSENGER_UID" VARCHAR(10) , 
		  "SEAT_NO" INTEGER , 
		  "COACH" VARCHAR(3) , 
		  "QUOTA" VARCHAR(15) )   
		 IN "USERSPACE1" ; 






------------------------------------------------
-- DDL Statements for table "YASHINST"."PASSPORT_FORM"
------------------------------------------------
 

CREATE TABLE "YASHINST"."PASSPORT_FORM"  (
		  "APPLICATION_NO" INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (  
		    START WITH +1000  
		    INCREMENT BY +1  
		    MINVALUE +1000  
		    MAXVALUE +2147483647  
		    NO CYCLE  
		    NO CACHE  
		    NO ORDER ) , 
		  "TRANSACTION_NO" INTEGER NOT NULL , 
		  "UID" VARCHAR(10) NOT NULL , 
		  "EC_NO" INTEGER , 
		  "ECNR_STATUS" VARCHAR(3) NOT NULL , 
		  "FORM_STATUS" VARCHAR(20) NOT NULL , 
		  "POLICE_VERIFIER" VARCHAR(10) , 
		  "APPT_DATE" DATE NOT NULL , 
		  "APPT_TIME" TIME NOT NULL )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."PASSPORT_FORM"

ALTER TABLE "YASHINST"."PASSPORT_FORM" 
	ADD CONSTRAINT "CC1333302208251" PRIMARY KEY
		("APPLICATION_NO");



ALTER TABLE "YASHINST"."PASSPORT_FORM" ALTER COLUMN "APPLICATION_NO" RESTART WITH 1027;

------------------------------------------------
-- DDL Statements for table "YASHINST"."STATIONS"
------------------------------------------------
 

CREATE TABLE "YASHINST"."STATIONS"  (
		  "STATION" VARCHAR(20) NOT NULL , 
		  "DATE" DATE NOT NULL , 
		  "TIME" TIME NOT NULL , 
		  "NO_OF_APPLICATIONS" INTEGER NOT NULL )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."STATIONS"

ALTER TABLE "YASHINST"."STATIONS" 
	ADD CONSTRAINT "CC1333302286778" PRIMARY KEY
		("STATION",
		 "DATE",
		 "TIME");



------------------------------------------------
-- DDL Statements for table "YASHINST"."FLIGHT"
------------------------------------------------
 

CREATE TABLE "YASHINST"."FLIGHT"  (
		  "FLIGHT_NO" VARCHAR(10) NOT NULL , 
		  "FLIGHT_NAME" VARCHAR(25) NOT NULL , 
		  "FLIGHT_MODEL" VARCHAR(20) NOT NULL , 
		  "SOURCE" VARCHAR(30) NOT NULL , 
		  "DESTINATION" VARCHAR(30) NOT NULL )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."FLIGHT"

ALTER TABLE "YASHINST"."FLIGHT" 
	ADD CONSTRAINT "FLIGHT_NO" PRIMARY KEY
		("FLIGHT_NO");



------------------------------------------------
-- DDL Statements for table "YASHINST"."FLIGHTCLASS"
------------------------------------------------
 

CREATE TABLE "YASHINST"."FLIGHTCLASS"  (
		  "FLIGHT_NO" VARCHAR(10) NOT NULL , 
		  "CLASS" VARCHAR(10) NOT NULL , 
		  "CAPACITY" INTEGER NOT NULL , 
		  "FARE_FACTOR" INTEGER NOT NULL )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."FLIGHTCLASS"

ALTER TABLE "YASHINST"."FLIGHTCLASS" 
	ADD CONSTRAINT "FLIGHT_CLASS" PRIMARY KEY
		("FLIGHT_NO",
		 "CLASS");



------------------------------------------------
-- DDL Statements for table "YASHINST"."FLIGHTROUTE"
------------------------------------------------
 

CREATE TABLE "YASHINST"."FLIGHTROUTE"  (
		  "FLIGHT_NO" VARCHAR(10) NOT NULL , 
		  "HALT" VARCHAR(30) NOT NULL , 
		  "ARRIVAL_TIME" TIME NOT NULL , 
		  "DEPARTURE_TIME" TIME NOT NULL , 
		  "DISTANCE_FROM_SOURCE" INTEGER NOT NULL )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."FLIGHTROUTE"

ALTER TABLE "YASHINST"."FLIGHTROUTE" 
	ADD CONSTRAINT "FLIGHT_ROUTE" PRIMARY KEY
		("FLIGHT_NO",
		 "HALT");



------------------------------------------------
-- DDL Statements for table "YASHINST"."FLIGHTAVAILABILITY"
------------------------------------------------
 

CREATE TABLE "YASHINST"."FLIGHTAVAILABILITY"  (
		  "FLIGHT_NO" VARCHAR(10) NOT NULL , 
		  "JOURNEY_DATE" DATE NOT NULL , 
		  "CLASS" VARCHAR(10) NOT NULL , 
		  "HALT" VARCHAR(30) NOT NULL , 
		  "AVAILABILITY" INTEGER NOT NULL )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."FLIGHTAVAILABILITY"

ALTER TABLE "YASHINST"."FLIGHTAVAILABILITY" 
	ADD CONSTRAINT "FLIGHT_AVAIL" PRIMARY KEY
		("FLIGHT_NO",
		 "JOURNEY_DATE",
		 "CLASS",
		 "HALT");



------------------------------------------------
-- DDL Statements for table "YASHINST"."FLIGHTTICKET"
------------------------------------------------
 

CREATE TABLE "YASHINST"."FLIGHTTICKET"  (
		  "FLIGHT_NO" VARCHAR(10) NOT NULL , 
		  "TICKET_NUMBER" INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (  
		    START WITH +0  
		    INCREMENT BY +1  
		    MINVALUE +0  
		    MAXVALUE +2147483647  
		    NO CYCLE  
		    NO CACHE  
		    NO ORDER ) , 
		  "TRANSACTION_NO" INTEGER NOT NULL , 
		  "SOURCE" VARCHAR(30) NOT NULL , 
		  "DESTINATION" VARCHAR(30) NOT NULL , 
		  "JOURNEY_DATE" DATE NOT NULL , 
		  "JOURNEY_TIME" TIME NOT NULL , 
		  "CLASS" VARCHAR(10) NOT NULL )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."FLIGHTTICKET"

ALTER TABLE "YASHINST"."FLIGHTTICKET" 
	ADD CONSTRAINT "FLIGHTTICKET" PRIMARY KEY
		("TICKET_NUMBER");



ALTER TABLE "YASHINST"."FLIGHTTICKET" ALTER COLUMN "TICKET_NUMBER" RESTART WITH 96;

------------------------------------------------
-- DDL Statements for table "YASHINST"."FLIGHTTICKETDETAILS"
------------------------------------------------
 

CREATE TABLE "YASHINST"."FLIGHTTICKETDETAILS"  (
		  "TICKET_NUMBER" INTEGER NOT NULL , 
		  "PASSENGER_UID" VARCHAR(10) NOT NULL , 
		  "MEAL_PREFERENCES" VARCHAR(10) NOT NULL , 
		  "WHEELCHAIR" VARCHAR(3) NOT NULL , 
		  "STAFF_ATTENDANT" VARCHAR(3) NOT NULL )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."FLIGHTTICKETDETAILS"

ALTER TABLE "YASHINST"."FLIGHTTICKETDETAILS" 
	ADD CONSTRAINT "CC1333560374735" PRIMARY KEY
		("TICKET_NUMBER",
		 "PASSENGER_UID");



------------------------------------------------
-- DDL Statements for table "YASHINST"."POLICE"
------------------------------------------------
 

CREATE TABLE "YASHINST"."POLICE"  (
		  "UID" VARCHAR(10) NOT NULL , 
		  "LOGIN_ID" VARCHAR(15) NOT NULL , 
		  "PASSWORD" VARCHAR(15) NOT NULL , 
		  "STATION" VARCHAR(30) NOT NULL , 
		  "POST" VARCHAR(30) NOT NULL )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."POLICE"

ALTER TABLE "YASHINST"."POLICE" 
	ADD CONSTRAINT "POLICE" PRIMARY KEY
		("UID");



------------------------------------------------
-- DDL Statements for table "YASHINST"."VISASCHEDULE"
------------------------------------------------
 

CREATE TABLE "YASHINST"."VISASCHEDULE"  (
		  "COUNTRY" VARCHAR(20) NOT NULL , 
		  "PLACE" VARCHAR(20) NOT NULL , 
		  "DATE" DATE NOT NULL , 
		  "TIME" TIME NOT NULL , 
		  "NO_OF_APPLICATIONS" INTEGER NOT NULL )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."VISASCHEDULE"

ALTER TABLE "YASHINST"."VISASCHEDULE" 
	ADD CONSTRAINT "VISASCHEDULEF" PRIMARY KEY
		("COUNTRY",
		 "PLACE",
		 "DATE",
		 "TIME");



------------------------------------------------
-- DDL Statements for table "YASHINST"."VISAAPPLICATION"
------------------------------------------------
 

CREATE TABLE "YASHINST"."VISAAPPLICATION"  (
		  "UID" VARCHAR(10) NOT NULL , 
		  "COUNTRY" VARCHAR(20) NOT NULL , 
		  "PLACE" VARCHAR(20) NOT NULL , 
		  "DATE" DATE NOT NULL , 
		  "TIME" TIME NOT NULL )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."VISAAPPLICATION"

ALTER TABLE "YASHINST"."VISAAPPLICATION" 
	ADD CONSTRAINT "CC1333274549414" PRIMARY KEY
		("UID",
		 "COUNTRY",
		 "DATE");



------------------------------------------------
-- DDL Statements for table "YASHINST"."CASES"
------------------------------------------------
 

CREATE TABLE "YASHINST"."CASES"  (
		  "FILE_NO" VARCHAR(15) NOT NULL , 
		  "STATUS" VARCHAR(40) NOT NULL , 
		  "DETAILS" VARCHAR(50) , 
		  "NO_HEARINGS" INTEGER NOT NULL , 
		  "START_DATE" DATE NOT NULL , 
		  "END_DATE" DATE )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."CASES"

ALTER TABLE "YASHINST"."CASES" 
	ADD CONSTRAINT "FILE_NO" PRIMARY KEY
		("FILE_NO");



------------------------------------------------
-- DDL Statements for table "YASHINST"."CRIMINAL_HISTORY"
------------------------------------------------
 

CREATE TABLE "YASHINST"."CRIMINAL_HISTORY"  (
		  "UID" VARCHAR(10) NOT NULL , 
		  "FILE_NO" VARCHAR(15) NOT NULL , 
		  "STATUS" VARCHAR(50) NOT NULL )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."CRIMINAL_HISTORY"

ALTER TABLE "YASHINST"."CRIMINAL_HISTORY" 
	ADD CONSTRAINT "CC1332570855990" PRIMARY KEY
		("UID",
		 "FILE_NO");



------------------------------------------------
-- DDL Statements for table "YASHINST"."T20120406_214027"
------------------------------------------------
 

CREATE TABLE "YASHINST"."T20120406_214027"  (
		  "TRAIN_NO" INTEGER , 
		  "DATE" VARCHAR(10) NOT NULL , 
		  "STATION" VARCHAR(30) NOT NULL , 
		  "CLASS" VARCHAR(2) NOT NULL , 
		  "AVAILABILITY" INTEGER )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."T20120406_214027"

ALTER TABLE "YASHINST"."T20120406_214027" 
	ADD PRIMARY KEY
		("DATE",
		 "STATION",
		 "CLASS");



------------------------------------------------
-- DDL Statements for table "YASHINST"."T20120406_214027_EXCEPTION"
------------------------------------------------
 

CREATE TABLE "YASHINST"."T20120406_214027_EXCEPTION"  (
		  "TRAIN_NO" INTEGER , 
		  "DATE" DATE NOT NULL , 
		  "STATION" VARCHAR(30) NOT NULL , 
		  "CLASS" VARCHAR(2) NOT NULL , 
		  "AVAILABILITY" INTEGER )   
		 IN "USERSPACE1" ; 






------------------------------------------------
-- DDL Statements for table "YASHINST"."TRAINAVAILABILITY"
------------------------------------------------
 

CREATE TABLE "YASHINST"."TRAINAVAILABILITY"  (
		  "TRAIN_NO" INTEGER NOT NULL , 
		  "DATE" DATE NOT NULL , 
		  "STATION" VARCHAR(30) NOT NULL , 
		  "CLASS" VARCHAR(2) NOT NULL , 
		  "AVAILABILITY" INTEGER NOT NULL )   
		 IN "USERSPACE1" ; 


-- DDL Statements for primary key on Table "YASHINST"."TRAINAVAILABILITY"

ALTER TABLE "YASHINST"."TRAINAVAILABILITY" 
	ADD CONSTRAINT "TRAINAVAIL" PRIMARY KEY
		("TRAIN_NO",
		 "DATE",
		 "STATION",
		 "CLASS");



------------------------------------------------
-- DDL Statements for table "YASHINST"."LOG"
------------------------------------------------
 

CREATE TABLE "YASHINST"."LOG"  (
		  "UID" VARCHAR(10) NOT NULL , 
		  "START_TIMESTAMP" TIMESTAMP NOT NULL , 
		  "END_TIMESTAMP" TIMESTAMP )   
		 IN "USERSPACE1" ; 












-- DDL Statements for foreign keys on Table "YASHINST"."BUSROUTE"

ALTER TABLE "YASHINST"."BUSROUTE" 
	ADD CONSTRAINT "BUSROUTEF" FOREIGN KEY
		("BUS_NO",
		 "TRANSPORT_COMPANY")
	REFERENCES "YASHINST"."BUS"
		("BUS_NO",
		 "TRANSPORT_COMPANY")
	ON DELETE CASCADE
	ON UPDATE RESTRICT
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for foreign keys on Table "YASHINST"."TRANSACTIONS"

ALTER TABLE "YASHINST"."TRANSACTIONS" 
	ADD CONSTRAINT "TRANSACTIONSF" FOREIGN KEY
		("UID")
	REFERENCES "YASHINST"."CITIZEN"
		("UID")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for foreign keys on Table "YASHINST"."BUSTICKET"

ALTER TABLE "YASHINST"."BUSTICKET" 
	ADD CONSTRAINT "BUSTICKETF1" FOREIGN KEY
		("TRANSACTION_NO")
	REFERENCES "YASHINST"."TRANSACTIONS"
		("TRANSACTION_NO")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "YASHINST"."BUSTICKET" 
	ADD CONSTRAINT "BUSTICKETF2" FOREIGN KEY
		("BUS_NO",
		 "TRANSPORT_COMPANY")
	REFERENCES "YASHINST"."BUS"
		("BUS_NO",
		 "TRANSPORT_COMPANY")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for foreign keys on Table "YASHINST"."BUSTICKETDET"

ALTER TABLE "YASHINST"."BUSTICKETDET" 
	ADD CONSTRAINT "BUSTICKETDETF1" FOREIGN KEY
		("PASSENGER_UID")
	REFERENCES "YASHINST"."CITIZEN"
		("UID")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "YASHINST"."BUSTICKETDET" 
	ADD CONSTRAINT "BUSTICKETF2" FOREIGN KEY
		("TICKET_NUMBER")
	REFERENCES "YASHINST"."BUSTICKET"
		("TICKET_NUMBER")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for foreign keys on Table "YASHINST"."BUSAVAILABLIITY"

ALTER TABLE "YASHINST"."BUSAVAILABLIITY" 
	ADD CONSTRAINT "BUSAVAILABILITYF" FOREIGN KEY
		("BUS_NO",
		 "TRANSPORT_COMPANY")
	REFERENCES "YASHINST"."BUS"
		("BUS_NO",
		 "TRANSPORT_COMPANY")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for foreign keys on Table "YASHINST"."BILL_DETAILS"

ALTER TABLE "YASHINST"."BILL_DETAILS" 
	ADD CONSTRAINT "BILL_DETAILSF1" FOREIGN KEY
		("BILL_TYPE")
	REFERENCES "YASHINST"."DELAY"
		("BILL_TYPE")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "YASHINST"."BILL_DETAILS" 
	ADD CONSTRAINT "BILL_DETAILSF2" FOREIGN KEY
		("TRANSACTION_NO")
	REFERENCES "YASHINST"."TRANSACTIONS"
		("TRANSACTION_NO")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for foreign keys on Table "YASHINST"."PAN"

ALTER TABLE "YASHINST"."PAN" 
	ADD CONSTRAINT "PANF1" FOREIGN KEY
		("TRANSACTION_NO")
	REFERENCES "YASHINST"."TRANSACTIONS"
		("TRANSACTION_NO")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "YASHINST"."PAN" 
	ADD CONSTRAINT "PANF2" FOREIGN KEY
		("APPLICANT_UID")
	REFERENCES "YASHINST"."CITIZEN"
		("UID")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "YASHINST"."PAN" 
	ADD CONSTRAINT "PANF3" FOREIGN KEY
		("ASSESSEE_ID")
	REFERENCES "YASHINST"."CITIZEN"
		("UID")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for foreign keys on Table "YASHINST"."COMPANY"

ALTER TABLE "YASHINST"."COMPANY" 
	ADD CONSTRAINT "COMPANYF" FOREIGN KEY
		("ACKNOWLEDGEMENT_NO")
	REFERENCES "YASHINST"."PAN"
		("ACKNOWLEDGE_NO")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for foreign keys on Table "YASHINST"."BUS"

ALTER TABLE "YASHINST"."BUS" 
	ADD CONSTRAINT "BUSF" FOREIGN KEY
		("BUS_COMPANY",
		 "BUS_MODEL")
	REFERENCES "YASHINST"."BUS_DESCRIPTION"
		("BUS_COMPANY",
		 "BUS_MODEL")
	ON DELETE CASCADE
	ON UPDATE RESTRICT
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for foreign keys on Table "YASHINST"."CANDIDATE_DETAILS"

ALTER TABLE "YASHINST"."CANDIDATE_DETAILS" 
	ADD CONSTRAINT "CANDIDETAILSF1" FOREIGN KEY
		("CANDIDATE_UID")
	REFERENCES "YASHINST"."CITIZEN"
		("UID")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "YASHINST"."CANDIDATE_DETAILS" 
	ADD CONSTRAINT "CANDIDETAILSF2" FOREIGN KEY
		("PARTY_NAME")
	REFERENCES "YASHINST"."PARTY_DETAILS"
		("PARTY_NAME")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for foreign keys on Table "YASHINST"."VOTERLIST"

ALTER TABLE "YASHINST"."VOTERLIST" 
	ADD CONSTRAINT "VOTERLISTF" FOREIGN KEY
		("VOTERUID")
	REFERENCES "YASHINST"."CITIZEN"
		("UID")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for foreign keys on Table "YASHINST"."MODERATOR"

ALTER TABLE "YASHINST"."MODERATOR" 
	ADD CONSTRAINT "MODERATORF" FOREIGN KEY
		("UID")
	REFERENCES "YASHINST"."CITIZEN"
		("UID")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for foreign keys on Table "YASHINST"."HISTORY"

ALTER TABLE "YASHINST"."HISTORY" 
	ADD CONSTRAINT "HISTORYF2" FOREIGN KEY
		("MOD_UID")
	REFERENCES "YASHINST"."MODERATOR"
		("UID")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "YASHINST"."HISTORY" 
	ADD CONSTRAINT "HISTROYF1" FOREIGN KEY
		("UID")
	REFERENCES "YASHINST"."CITIZEN"
		("UID")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for foreign keys on Table "YASHINST"."ADMIN"

ALTER TABLE "YASHINST"."ADMIN" 
	ADD CONSTRAINT "ADMINF" FOREIGN KEY
		("UID")
	REFERENCES "YASHINST"."CITIZEN"
		("UID")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for foreign keys on Table "YASHINST"."REFILL"

ALTER TABLE "YASHINST"."REFILL" 
	ADD CONSTRAINT "REFILLF" FOREIGN KEY
		("UID")
	REFERENCES "YASHINST"."CITIZEN"
		("UID")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for foreign keys on Table "YASHINST"."GOVTPAY"

ALTER TABLE "YASHINST"."GOVTPAY" 
	ADD CONSTRAINT "GOVTPAYF1" FOREIGN KEY
		("GOVT_UID")
	REFERENCES "YASHINST"."REFILL"
		("UID")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "YASHINST"."GOVTPAY" 
	ADD CONSTRAINT "GOVTPAYF2" FOREIGN KEY
		("TRANSACTION_NO")
	REFERENCES "YASHINST"."TRANSACTIONS"
		("TRANSACTION_NO")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for foreign keys on Table "YASHINST"."IT_OFFICIAL"

ALTER TABLE "YASHINST"."IT_OFFICIAL" 
	ADD CONSTRAINT "IT_OFFICIALF" FOREIGN KEY
		("UID")
	REFERENCES "YASHINST"."CITIZEN"
		("UID")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for foreign keys on Table "YASHINST"."TAX"

ALTER TABLE "YASHINST"."TAX" 
	ADD CONSTRAINT "TAXF1" FOREIGN KEY
		("UID")
	REFERENCES "YASHINST"."CITIZEN"
		("UID")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "YASHINST"."TAX" 
	ADD CONSTRAINT "TAXF2" FOREIGN KEY
		("TRANSACTION_NO")
	REFERENCES "YASHINST"."TRANSACTIONS"
		("TRANSACTION_NO")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for foreign keys on Table "YASHINST"."CCTRANSACTIONS"

ALTER TABLE "YASHINST"."CCTRANSACTIONS" 
	ADD CONSTRAINT "CCTRANSACTIONSF" FOREIGN KEY
		("TRANSACTION_NO")
	REFERENCES "YASHINST"."TRANSACTIONS"
		("TRANSACTION_NO")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for foreign keys on Table "YASHINST"."LICENSE_APPLICATION"

ALTER TABLE "YASHINST"."LICENSE_APPLICATION" 
	ADD CONSTRAINT "LICENSE_APPLICF1" FOREIGN KEY
		("TRANSACTION_NO")
	REFERENCES "YASHINST"."TRANSACTIONS"
		("TRANSACTION_NO")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "YASHINST"."LICENSE_APPLICATION" 
	ADD CONSTRAINT "LICENSE_APPLICF2" FOREIGN KEY
		("UID")
	REFERENCES "YASHINST"."CITIZEN"
		("UID")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "YASHINST"."LICENSE_APPLICATION" 
	ADD CONSTRAINT "LICENSE_APPLICF3" FOREIGN KEY
		("PLACE",
		 "DATE",
		 "TIME")
	REFERENCES "YASHINST"."LICENSE_SCHEDULE"
		("OFFICE_LOCATION",
		 "DATE",
		 "TIME")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for foreign keys on Table "YASHINST"."STOLEN_VEHICLE"

ALTER TABLE "YASHINST"."STOLEN_VEHICLE" 
	ADD CONSTRAINT "STOLEN_VEHICLEF" FOREIGN KEY
		("UID")
	REFERENCES "YASHINST"."CITIZEN"
		("UID")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "YASHINST"."STOLEN_VEHICLE" 
	ADD CONSTRAINT "TRANSACTION_NO" FOREIGN KEY
		("TRANSACTION_NO")
	REFERENCES "YASHINST"."TRANSACTIONS"
		("TRANSACTION_NO")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for foreign keys on Table "YASHINST"."CERTIFICATES"

ALTER TABLE "YASHINST"."CERTIFICATES" 
	ADD CONSTRAINT "SQL120401132629120" FOREIGN KEY
		("UID")
	REFERENCES "YASHINST"."CITIZEN"
		("UID")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "YASHINST"."CERTIFICATES" 
	ADD CONSTRAINT "SQL120401132629210" FOREIGN KEY
		("TRANSACTION_NO")
	REFERENCES "YASHINST"."TRANSACTIONS"
		("TRANSACTION_NO")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for foreign keys on Table "YASHINST"."TRAINCLASS"

ALTER TABLE "YASHINST"."TRAINCLASS" 
	ADD CONSTRAINT "CC1332060361169" FOREIGN KEY
		("TRAIN_NO")
	REFERENCES "YASHINST"."TRAIN"
		("TRAIN_NO")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for foreign keys on Table "YASHINST"."TRAINROUTE"

ALTER TABLE "YASHINST"."TRAINROUTE" 
	ADD CONSTRAINT "CC1332051913509" FOREIGN KEY
		("TRAIN_NO")
	REFERENCES "YASHINST"."TRAIN"
		("TRAIN_NO")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for foreign keys on Table "YASHINST"."TRAINTICKET"

ALTER TABLE "YASHINST"."TRAINTICKET" 
	ADD CONSTRAINT "SQL120326042737160" FOREIGN KEY
		("TRANSACTION_NO")
	REFERENCES "YASHINST"."TRANSACTIONS"
		("TRANSACTION_NO")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "YASHINST"."TRAINTICKET" 
	ADD CONSTRAINT "SQL120326042737200" FOREIGN KEY
		("TRAIN_NO")
	REFERENCES "YASHINST"."TRAIN"
		("TRAIN_NO")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for foreign keys on Table "YASHINST"."TRAINTICKETDETAILS"

ALTER TABLE "YASHINST"."TRAINTICKETDETAILS" 
	ADD CONSTRAINT "SQL120326043021700" FOREIGN KEY
		("PNR_NO")
	REFERENCES "YASHINST"."TRAINTICKET"
		("PNR_NO")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for foreign keys on Table "YASHINST"."PASSPORT_FORM"

ALTER TABLE "YASHINST"."PASSPORT_FORM" 
	ADD CONSTRAINT "CC1333302165673" FOREIGN KEY
		("TRANSACTION_NO")
	REFERENCES "YASHINST"."TRANSACTIONS"
		("TRANSACTION_NO")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "YASHINST"."PASSPORT_FORM" 
	ADD CONSTRAINT "CC1333302178335" FOREIGN KEY
		("UID")
	REFERENCES "YASHINST"."CITIZEN"
		("UID")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for foreign keys on Table "YASHINST"."FLIGHTCLASS"

ALTER TABLE "YASHINST"."FLIGHTCLASS" 
	ADD CONSTRAINT "FLIGHT_NO" FOREIGN KEY
		("FLIGHT_NO")
	REFERENCES "YASHINST"."FLIGHT"
		("FLIGHT_NO")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for foreign keys on Table "YASHINST"."FLIGHTROUTE"

ALTER TABLE "YASHINST"."FLIGHTROUTE" 
	ADD CONSTRAINT "FLIGHT_ROUTE_F" FOREIGN KEY
		("FLIGHT_NO")
	REFERENCES "YASHINST"."FLIGHT"
		("FLIGHT_NO")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for foreign keys on Table "YASHINST"."FLIGHTAVAILABILITY"

ALTER TABLE "YASHINST"."FLIGHTAVAILABILITY" 
	ADD CONSTRAINT "FLIGHT_NO" FOREIGN KEY
		("FLIGHT_NO")
	REFERENCES "YASHINST"."FLIGHT"
		("FLIGHT_NO")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for foreign keys on Table "YASHINST"."FLIGHTTICKET"

ALTER TABLE "YASHINST"."FLIGHTTICKET" 
	ADD CONSTRAINT "CC1332862551182" FOREIGN KEY
		("FLIGHT_NO")
	REFERENCES "YASHINST"."FLIGHT"
		("FLIGHT_NO")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "YASHINST"."FLIGHTTICKET" 
	ADD CONSTRAINT "CC1332862559147" FOREIGN KEY
		("TRANSACTION_NO")
	REFERENCES "YASHINST"."TRANSACTIONS"
		("TRANSACTION_NO")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for foreign keys on Table "YASHINST"."FLIGHTTICKETDETAILS"

ALTER TABLE "YASHINST"."FLIGHTTICKETDETAILS" 
	ADD CONSTRAINT "CC1333560342045" FOREIGN KEY
		("TICKET_NUMBER")
	REFERENCES "YASHINST"."FLIGHTTICKET"
		("TICKET_NUMBER")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "YASHINST"."FLIGHTTICKETDETAILS" 
	ADD CONSTRAINT "CC1333560361927" FOREIGN KEY
		("PASSENGER_UID")
	REFERENCES "YASHINST"."CITIZEN"
		("UID")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for foreign keys on Table "YASHINST"."POLICE"

ALTER TABLE "YASHINST"."POLICE" 
	ADD CONSTRAINT "POLICEF" FOREIGN KEY
		("UID")
	REFERENCES "YASHINST"."CITIZEN"
		("UID")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for foreign keys on Table "YASHINST"."VISAAPPLICATION"

ALTER TABLE "YASHINST"."VISAAPPLICATION" 
	ADD CONSTRAINT "CC1333274481969" FOREIGN KEY
		("UID")
	REFERENCES "YASHINST"."CITIZEN"
		("UID")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "YASHINST"."VISAAPPLICATION" 
	ADD CONSTRAINT "CC1333274524882" FOREIGN KEY
		("COUNTRY",
		 "PLACE",
		 "DATE",
		 "TIME")
	REFERENCES "YASHINST"."VISASCHEDULE"
		("COUNTRY",
		 "PLACE",
		 "DATE",
		 "TIME")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for foreign keys on Table "YASHINST"."CRIMINAL_HISTORY"

ALTER TABLE "YASHINST"."CRIMINAL_HISTORY" 
	ADD CONSTRAINT "CC1332570849752" FOREIGN KEY
		("UID")
	REFERENCES "YASHINST"."CITIZEN"
		("UID")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "YASHINST"."CRIMINAL_HISTORY" 
	ADD CONSTRAINT "CC1332576660316" FOREIGN KEY
		("FILE_NO")
	REFERENCES "YASHINST"."CASES"
		("FILE_NO")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for foreign keys on Table "YASHINST"."TRAINAVAILABILITY"

ALTER TABLE "YASHINST"."TRAINAVAILABILITY" 
	ADD CONSTRAINT "TRAIUNAVAILF" FOREIGN KEY
		("TRAIN_NO")
	REFERENCES "YASHINST"."TRAIN"
		("TRAIN_NO")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for foreign keys on Table "YASHINST"."LOG"

ALTER TABLE "YASHINST"."LOG" 
	ADD CONSTRAINT "LOG" FOREIGN KEY
		("UID")
	REFERENCES "YASHINST"."CITIZEN"
		("UID")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	ENFORCED
	ENABLE QUERY OPTIMIZATION;

--------------------------------------------
-- Authorization Statements on Tables/Views 
--------------------------------------------

 
GRANT CONTROL ON TABLE "YASHINST"."ADMIN" TO USER "YASH    " ;

---------------------------------------
-- Authorization statement on table space 
---------------------------------------

 
GRANT USE OF TABLESPACE "SYSTOOLSTMPSPACE" TO  PUBLIC   ;

COMMIT WORK;

CONNECT RESET;

TERMINATE;

