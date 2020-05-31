-- alter table PETCLINIC_CONSUMABLE add column TITLE varchar(255) ^
-- update PETCLINIC_CONSUMABLE set TITLE = <default_value> ;
-- alter table PETCLINIC_CONSUMABLE alter column TITLE set not null ;
alter table PETCLINIC_CONSUMABLE add column TITLE varchar(255) ;
alter table PETCLINIC_CONSUMABLE add column PRICE decimal(19, 2) ^
update PETCLINIC_CONSUMABLE set PRICE = 0 where PRICE is null ;
alter table PETCLINIC_CONSUMABLE alter column PRICE set not null ;
alter table PETCLINIC_CONSUMABLE add column DESCRIPTION text ;
