-- Schools inside Delhi district

SELECT *
FROM schools
WHERE ST_Within(
geom,
(SELECT geom
 FROM districts
 WHERE district_name='Delhi')
);

-- Hospitals within 5 km

SELECT *
FROM hospitals
WHERE ST_DWithin(
geom,
ST_GeomFromText(
'POINT(77.2090 28.6139)',
4326
),
5000
);
