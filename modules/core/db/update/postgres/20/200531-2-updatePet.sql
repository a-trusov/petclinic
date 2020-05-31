alter table PETCLINIC_PET add column OWNER_ID uuid ;
-- alter table PETCLINIC_PET add column TYPE_ID uuid ^
-- update PETCLINIC_PET set TYPE_ID = <default_value> ;
-- alter table PETCLINIC_PET alter column TYPE_ID set not null ;
alter table PETCLINIC_PET add column TYPE_ID uuid not null ;
alter table PETCLINIC_PET add column NAME varchar(255) ^
update PETCLINIC_PET set NAME = '' where NAME is null ;
alter table PETCLINIC_PET alter column NAME set not null ;
