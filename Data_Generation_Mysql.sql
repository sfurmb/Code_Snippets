delete from tableX;
insert into tableX select * from Opt_Trade_Actv limit 1;

select @j:= 0;
DELIMITER //
DROP PROCEDURE IF EXISTS GenerateFakeData;
CREATE PROCEDURE GenerateFakeData()
BEGIN
DECLARE i INT DEFAULT 1;
WHILE i <= 200000 DO
INSERT INTO tableX (AUDIT_CODE,CLASS_SYMBOL,DATABASEIDENTIFIER,EXERCISE_PRICE)
SELECT
ELT(0.5+ RAND() * 6,'A','B','C','D','E','F') as AUDIT_CODE,IF(RAND() > 0.6, 'SPY', 'AAPL') AS CLASS_SYMBOL,tableX.databaseidentifier + @j AS databaseidentifier,EXEC_FIRM_CODE,@j := @j+1 as EXERCISE_PRICE
FROM tableX limit 1;
SET i = i + 1;
END WHILE;
END //
DELIMITER ;

USE schema1;
CALL GenerateFakeData();
select count(*) from tableX;