DROP TABLE IF EXISTS COURSE_SESSION;

DROP TABLE IF EXISTS CLIENT;

DROP TABLE IF EXISTS COURSE;

DROP TABLE IF EXISTS LOCATION;

DROP TABLE IF EXISTS PARTICIPE;

# -----------------------------------------------------------------------------
#       TABLE : COURSE_SESSION
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS COURSE_SESSION
 (
   SESSION_ID BIGINT(4) NOT NULL  ,
   LOC_ID BIGINT(4) NOT NULL  ,
   CRS_CODE VARCHAR(25) NOT NULL  ,
   SESSION_START DATETIME NOT NULL  ,
   SESSION_END DATE NOT NULL  ,
   SESSION_MAX BIGINT(4) NULL  
   , PRIMARY KEY (SESSION_ID) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE COURSE_SESSION
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_COURSE_SESSION_LOCATION
     ON COURSE_SESSION (LOC_ID ASC);

CREATE  INDEX I_FK_COURSE_SESSION_COURSE
     ON COURSE_SESSION (CRS_CODE ASC);

# -----------------------------------------------------------------------------
#       TABLE : CLIENT
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS CLIENT
 (
   CLI_ID BIGINT(4) NOT NULL  ,
   CLI_LASTNAME VARCHAR(25) NOT NULL  ,
   CLI_FIRSTNAME VARCHAR(25) NOT NULL  ,
   CLI_ADDRESS VARCHAR(128) NOT NULL  ,
   CLI_PHONE VARCHAR(25) NOT NULL  ,
   CLI_EMAIL VARCHAR(50) NULL  
   , PRIMARY KEY (CLI_ID) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : COURSE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS COURSE
 (
   CRS_CODE VARCHAR(25) NOT NULL  ,
   CRS_TITLE VARCHAR(25) NOT NULL  
   , PRIMARY KEY (CRS_CODE) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : LOCATION
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS LOCATION
 (
   LOC_ID BIGINT(4) NOT NULL  ,
   LOC_CITY VARCHAR(20) NOT NULL  
   , PRIMARY KEY (LOC_ID) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : PARTICIPE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS PARTICIPE
 (
   CLI_ID BIGINT(4) NOT NULL  ,
   SESSION_ID BIGINT(4) NOT NULL  
   , PRIMARY KEY (CLI_ID,SESSION_ID) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE PARTICIPE
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_PARTICIPE_CLIENT
     ON PARTICIPE (CLI_ID ASC);

CREATE  INDEX I_FK_PARTICIPE_COURSE_SESSION
     ON PARTICIPE (SESSION_ID ASC);


# -----------------------------------------------------------------------------
#       CREATION DES REFERENCES DE TABLE
# -----------------------------------------------------------------------------


ALTER TABLE COURSE_SESSION 
  ADD FOREIGN KEY FK_COURSE_SESSION_LOCATION (LOC_ID)
      REFERENCES LOCATION (LOC_ID) ;


ALTER TABLE COURSE_SESSION 
  ADD FOREIGN KEY FK_COURSE_SESSION_COURSE (CRS_CODE)
      REFERENCES COURSE (CRS_CODE) ;


ALTER TABLE PARTICIPE 
  ADD FOREIGN KEY FK_PARTICIPE_CLIENT (CLI_ID)
      REFERENCES CLIENT (CLI_ID) ;


ALTER TABLE PARTICIPE 
  ADD FOREIGN KEY FK_PARTICIPE_COURSE_SESSION (SESSION_ID)
      REFERENCES COURSE_SESSION (SESSION_ID) ;

