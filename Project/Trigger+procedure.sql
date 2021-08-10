# Trigger

DELIMITER //

CREATE TRIGGER validate_insert BEFORE INSERT ON profiles
FOR EACH ROW BEGIN
  IF NEW.birthday IS NULL AND NEW.drivers_license_dt IS NULL THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'birthday and drivers_license_dt are NULL';
  END IF;
END//


# Procedure

DELIMITER //

create procedure max_driving_experience (out param1 int)
begin
	SELECT max(TIMESTAMPDIFF(YEAR, drivers_license_dt , CURDATE())) AS difference FROM profiles p;
end;
//

DELIMITER;


call max_driving_experience(@a);


