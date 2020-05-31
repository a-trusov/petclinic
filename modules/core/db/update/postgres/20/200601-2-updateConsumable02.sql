-- update PETCLINIC_CONSUMABLE set TITLE = <default_value> where TITLE is null ;
alter table PETCLINIC_CONSUMABLE alter column TITLE set not null ;
