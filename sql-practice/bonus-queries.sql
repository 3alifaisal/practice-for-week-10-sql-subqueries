


SELECT "CHECKING VALUES BEFORE INERT";
SELECT CHAR(10);



SELECT * FROM cats JOIN toys ON cats.id = toys.cat_id WHERE birth_year < 2013 ORDER BY birth_year;

INSERT INTO toys (name, cat_id)
    SELECT "Cat Bed", id FROM cats WHERE birth_year < 2013;




SELECT "CHECKING VALUES AFTER INSERT ";
SELECT CHAR(10);
SELECT * FROM cats JOIN toys on cats.id = toys.cat_id WHERE birth_year < 2013 ORDER BY birth_year;

INSERT INTO cats_backup
    SELECT * from cats
;
SELECT cats.*, cats_backup.* 
    FROM cats LEFT JOIN cats_backup ON cats.id = cats_backup.id
;
INSERT INTO toys_backup
    SELECT * from toys
;
SELECT CHAR(10);

.print checking toys_backup;
SELECT * FROM toys WHERE id NOT IN (SELECT id FROM toys_backup);