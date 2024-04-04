SELECT "--------------BEFORE--------------";
 SELECT * FROM toys WHERE toys.cat_id = (SELECT id FROM cats WHERE cats.name = "Garfield");



INSERT INTO toys (id,name,cat_id) VALUES ("Pepperoni" ,(SELECT id FROM cats WHERE cats.name = "Garfield"));

SELECT "--------------AFTER--------------" ;


 SELECT * FROM toys WHERE toys.cat_id = (SELECT id FROM cats WHERE cats.name = "Garfield");

DELETE FROM toys WHERE toys.name = "Pepperoni";
