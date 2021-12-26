#simple_user

CREATE USER 'simpleuser'@'localhost' IDENTIFIED BY 'simplepassword';
CREATE USER 'simpleuser'@'%' IDENTIFIED BY 'simplepassword';
GRANT INSERT,SELECT ON user_reviews_beer.*
TO 'simpleuser'@'localhost';
GRANT INSERT, SELECT ON user_reviews_beer.*
TO 'simpleuser'@'%';
GRANT SELECT ON beer.* TO 'simpleuser'@'localhost';
GRANT SELECT ON beer.* TO 'simpleuser'@'%';

#distributor_admin

CREATE USER 'distributoruser'@'localhost'
IDENTIFIED BY 'distributorpassword';
CREATE USER 'distributoruser'@'%'
IDENTIFIED BY 'distributorpassword';
GRANT INSERT, UPDATE, DELETE ON distributor.* TO 'distributoruser'@'localhost';
GRANT INSERT, UPDATE, DELETE ON distributor.* TO 'distributoruser'@'%';
GRANT SELECT ON shop.* TO 'distributoruser'@'localhost';
GRANT SELECT ON shop.* TO 'distributoruser'@'%';
GRANT SELECT ON brewery.* TO 'distributoruser'@'localhost';
GRANT SELECT ON brewery.* TO 'distributoruser'@'%';
GRANT INSERT, UPDATE, DELETE ON distributor_supplies_shop.*
TO 'distributoruser'@'localhost';
GRANT INSERT, UPDATE, DELETE ON distributor_supplies_shop.*
TO 'distributoruser'@'%';
GRANT INSERT, UPDATE, DELETE ON brewery_supplies_distributor.*
TO 'distributoruser'@'localhost';
GRANT INSERT, UPDATE, DELETE ON brewery_supplies_distributor.*
TO 'distributoruser'@'%';

#shop_admin

CREATE USER 'shopuser'@'localhost'
IDENTIFIED BY 'shopuserpassword';
CREATE USER 'shopuser'@'%'
IDENTIFIED BY 'shopuserpassword';
GRANT SELECT ON beer.* TO 'shopuser'@'localhost';
GRANT SELECT ON beer.* TO 'shopuser'@'%';
GRANT INSERT, UPDATE, DELETE ON shop.* TO 'shopuser'@'localhost';
GRANT INSERT, UPDATE, DELETE ON shop.* TO 'shopuser'@'%';
GRANT INSERT, UPDATE, DELETE ON shop_sells_beer.*
TO 'shopuser'@'localhost';
GRANT INSERT, UPDATE, DELETE ON shop_sells_beer.*
TO 'shopuser'@'%';

#company_user
CREATE USER 'companyuser'@'localhost'
IDENTIFIED BY 'companyuserpassword';
CREATE USER 'companyuser'@'%'
IDENTIFIED BY 'companyuserpassword';
GRANT INSERT, UPDATE, DELETE ON company.* TO 'shopuser'@'localhost';
GRANT INSERT, UPDATE, DELETE ON company.* TO 'shopuser'@'%';
GRANT INSERT, UPDATE, DELETE ON brewery.*
TO 'companyuser'@'localhost';
GRANT INSERT, UPDATE, DELETE ON brewery.*
TO 'companyuser'@'%';
GRANT INSERT, UPDATE, DELETE ON beer.*
TO 'companyuser'@'localhost';
GRANT INSERT, UPDATE, DELETE ON beer.*
TO 'companyuser'@'%';
GRANT INSERT, UPDATE, DELETE ON brewery_brews_beer.*
TO 'companyuser'@'localhost';
GRANT INSERT, UPDATE, DELETE ON brewery_brews_beer.*
TO 'companyuser'@'%';

#super_admin
CREATE USER 'administrator'@'localhost' IDENTIFIED BY 'difficultpass';
GRANT ALL PRIVILEGES ON beerdb.* TO 'administrator'@'localhost';



