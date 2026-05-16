\c cs415

-- User
INSERT INTO
    WebUser(web_user_id,first_name,last_name,email,password,created_date,is_active,last_login)
VALUES
    (1,'Main','User','muser@email.com','12345',CURRENT_TIMESTAMP,'1',CURRENT_TIMESTAMP),
    (2,'Willie','Nelson','willie.nelson@email.com','12345',CURRENT_TIMESTAMP,'1',CURRENT_TIMESTAMP);
ALTER SEQUENCE WebUser_web_user_id_seq RESTART WITH 100;

-- AddressType
INSERT INTO AddressType(address_type_id,address_type)
VALUES
    (1,'Home'),
    (2,'Work'),
    (3,'Billing'),
    (4,'Shipping');
ALTER SEQUENCE AddressType_address_type_id_seq RESTART WITH 6;

-- UserAddress
INSERT INTO UserAddress(user_address_id,web_user_id,street_1,street_2,city,st,zip,country,address_type_id,created_date)
VALUES
    (1,1,'100 Fake St','','Fake City','UT','84032','United States',1,CURRENT_TIMESTAMP),
    (2,1,'200 Fake Ave','','Faker City','UT','84033','United States',3,CURRENT_TIMESTAMP),
    (3,2,'200 Fake Ave','','Fakie City','UT','84033','United States',1,CURRENT_TIMESTAMP);
ALTER SEQUENCE UserAddress_user_address_id_seq RESTART WITH 4;