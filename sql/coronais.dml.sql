INSERT INTO Hospital VALUES (default, 6, 'Urgentni Centar Novi Sad');
INSERT INTO Hospital VALUES (default, 3, 'Urgentni Centar Beograd');

INSERT INTO CoronaHotspotRegion VALUES ('AUS','Australija');
INSERT INTO CoronaHotspotRegion VALUES ('RUS','Rusija');

INSERT INTO Patient
VALUES(0, DATE_SUB(CURRENT_DATE, INTERVAL 10 DAY), 28,'Ivan Kovak','AUS',1,'+381625544562', 2, 'SRB');

INSERT INTO Patient
VALUES(1, DATE_SUB(CURRENT_DATE, INTERVAL 10 DAY), 14,'Jovana Ilić','AUS',0,'+381636655852', null, 'SRB');

INSERT INTO Patient
VALUES(2, CURRENT_DATE, 14,'Teodora Ilić','DEU',0,'+381602211548', null, 'SRB');

INSERT INTO Patient
VALUES(3, CURRENT_DATE, 14,'Vanja Coko','DEU',1,'+381665588589', 2, 'SRB');

INSERT INTO PatientHistory
VALUES(4, DATE_SUB(CURRENT_DATE, INTERVAL 28 DAY), 28,'Janko Petrov','RUS',1,'+381665588478', 1, 'SRB');

INSERT INTO PatientHistory
VALUES(5, DATE_SUB(CURRENT_DATE, INTERVAL 14 DAY), 14,'Ilija Dragov','MNE',0,'+381636333336', null, 'SRB');