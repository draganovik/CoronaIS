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

SELECT PA.*
FROM Patient PA
