DROP TABLE IF EXISTS Patient;
CREATE TABLE Patient (
    issued_state_id varchar(20),
    start_of_isolation date default(CURRENT_DATE),
    full_name nvarchar(200),
    departure_region_code varchar(3),
    has_symptoms bool default false,
    hospital_id integer,
    citizenship varchar(3) default 'SRB',

    CONSTRAINT PK_Patient PRIMARY KEY (issued_state_id)
);
DROP TABLE IF EXISTS PatientHistory;
CREATE TABLE PatientHistory (
    issued_state_id varchar(20),
    start_of_isolation date default(CURRENT_DATE),
    full_name nvarchar(200),
    departure_region_code varchar(3),
    has_symptoms bool default false,
    citizenship varchar(3) default 'SRB',

    CONSTRAINT PK_PatientHistory PRIMARY KEY (issued_state_id, start_of_isolation)
);
DROP TABLE IF EXISTS CoronaHotspotRegion;
CREATE TABLE CoronaHotspotRegion (
    region_code varchar(3),
    region_name nvarchar(100) unique,

    CONSTRAINT PK_CoronaHotspotRegion PRIMARY KEY (region_code)
);
DROP TABLE IF EXISTS Hospital;
CREATE TABLE Hospital (
    id integer auto_increment,
    max_capacity integer,
    facility_name nvarchar(100) unique,

    CONSTRAINT PK_Hospital PRIMARY KEY (id)
);