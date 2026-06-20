-- Join schools and districts

SELECT
s.school_name,
d.district_name
FROM schools s
JOIN districts d
ON s.district_id = d.district_id;

-- Count schools per district

SELECT
d.district_name,
COUNT(s.school_id)
FROM districts d
LEFT JOIN schools s
ON d.district_id = s.district_id
GROUP BY d.district_name;
