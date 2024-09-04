/*first solution option*/
SELECT id, version, content
FROM version_content
WHERE (id, version) IN (
    SELECT id, MAX(version)
    FROM version_content
    GROUP BY id
);

/*second solution option*/
SELECT t1.id, t1.version, t1.content
FROM version_content t1
         JOIN (
    SELECT id, MAX(version) AS max_version
    FROM version_content
    GROUP BY id
) t2 ON t1.id = t2.id AND t1.version = t2.max_version;

/*third solution option*/
SELECT id, version, content
FROM (
         SELECT id, version, content,
                ROW_NUMBER() OVER (PARTITION BY id ORDER BY version DESC) AS rn
         FROM version_content
     ) sub
WHERE rn = 1;
