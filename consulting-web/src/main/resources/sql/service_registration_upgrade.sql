ALTER TABLE `consulting`.`registration_service_type` 
ADD COLUMN `service_price` DECIMAL(10,2) NOT NULL AFTER `service_type`;
UPDATE `consulting`.`registration_service_type` SET `service_price`='4099' WHERE `service_id`='1';
UPDATE `consulting`.`registration_service_type` SET `service_price`='3499' WHERE `service_id`='2';
UPDATE `consulting`.`registration_service_type` SET `service_price`='4999' WHERE `service_id`='3';
UPDATE `consulting`.`registration_service_type` SET `service_price`='8299' WHERE `service_id`='4';
UPDATE `consulting`.`registration_service_type` SET `service_price`='999' WHERE `service_id`='5';
UPDATE `consulting`.`registration_service_type` SET `service_price`='4499' WHERE `service_id`='6';
UPDATE `consulting`.`registration_service_type` SET `service_price`='3499' WHERE `service_id`='7';
UPDATE `consulting`.`registration_service_type` SET `service_price`='3999' WHERE `service_id`='8';
UPDATE `consulting`.`registration_service_type` SET `service_price`='9999' WHERE `service_id`='9';
UPDATE `consulting`.`registration_service_type` SET `service_price`='3999' WHERE `service_id`='10';
UPDATE `consulting`.`registration_service_type` SET `service_price`='12999' WHERE `service_id`='11';