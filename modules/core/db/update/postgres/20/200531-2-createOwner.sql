create unique index IDX_PETCLINIC_OWNER_UK_EMAIL on PETCLINIC_OWNER (EMAIL) where DELETE_TS is null ;
create unique index IDX_PETCLINIC_OWNER_UK_PHONE_NUMBER on PETCLINIC_OWNER (PHONE_NUMBER) where DELETE_TS is null ;
