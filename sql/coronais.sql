SELECT id, max_capacity, facility_name, max_capacity - COUNT(PA.state_issued_id) as 'available_space'
FROM Hospital HO
LEFT JOIN Patient PA ON PA.hospital_id = HO.id
GROUP BY id, max_capacity, facility_name
ORDER BY available_space desc
LIMIT 1;

SELECT * FROM Patient;
DELETE FROM Patient;

SELECT
PA.state_issued_id,
PA.start_of_isolation,
PA.full_name,
PA.departure_region_code,
CHR.region_name,
PA.has_symptoms,
PA.phone_number,
PA.hospital_id,
HO.max_capacity,
HO.facility_name,
PA.citizenship
FROM Patient PA
LEFT JOIN Hospital HO ON HO.id = PA.hospital_id
LEFT JOIN CoronaHotspotRegion CHR on CHR.region_code = PA.departure_region_code
WHERE PA.state_issued_id = 5002300672519;

SELECT
PA.state_issued_id,
PA.start_of_isolation,
PA.full_name,
PA.departure_region_code,
CHR.region_name,
PA.has_symptoms,
PA.phone_number,
PA.hospital_id,
HO.max_capacity,
HO.facility_name,
PA.citizenship,
CHR.region_code
FROM Patient PA
LEFT JOIN Hospital HO ON HO.id = PA.hospital_id
LEFT JOIN CoronaHotspotRegion CHR on CHR.region_code = PA.departure_region_code
WHERE 1=1 AND CHR.region_code IS NOT NULL;


SELECT *
FROM Patient PA
WHERE DATE_ADD(PA.start_of_isolation, INTERVAL PA.isolation_days DAY) <= current_date();

INSERT INTO Patient(start_of_isolation, isolation_days, state_issued_id, full_name, departure_region_code, phone_number, hospital_id)
VALUES (DATE_SUB(now(), INTERVAL 14 DAY), 14, 1,'AC', 'ALB','013',null);

DELETE FROM PatientHistory;

SELECT * FROM PatientHistory;
SELECT * FROM Patient;


SELECT COUNT(state_issued_id)
FROM PatientHistory
WHERE state_issued_id NOT IN (SELECT PA.state_issued_id FROM Patient PA);

SELECT COUNT(state_issued_id)
FROM Patient
WHERE state_issued_id NOT IN (SELECT PH.state_issued_id FROM PatientHistory PH);


SELECT COUNT(DISTINCT state_issued_id)
FROM PatientHistory
WHERE
state_issued_id NOT IN (SELECT PA.state_issued_id FROM Patient PA)
AND
has_symptoms = 1;

SELECT COUNT(state_issued_id)
FROM Patient
WHERE state_issued_id NOT IN (SELECT PH.state_issued_id FROM PatientHistory PH)
AND
has_symptoms = 1;

SELECT COUNT(id)
FROM Hospital;

SELECT COUNT(DISTINCT state_issued_id) as has_or_had_symptoms
FROM (
SELECT *
FROM Patient PA
UNION
SELECT *
FROM PatientHistory PH) as UN
WHERE has_symptoms = 1;

UPDATE Patient SET start_of_isolation = '2022-10-16' WHERE full_name = 'Mirko Marko';