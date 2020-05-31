-- begin PETCLINIC_PET_TYPE
create table PETCLINIC_PET_TYPE (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255) not null,
    --
    primary key (ID)
)^
-- end PETCLINIC_PET_TYPE
-- begin PETCLINIC_PET
create table PETCLINIC_PET (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255) not null,
    TYPE_ID uuid not null,
    OWNER_ID uuid,
    --
    primary key (ID)
)^
-- end PETCLINIC_PET
-- begin PETCLINIC_CONSUMABLE
create table PETCLINIC_CONSUMABLE (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    TITLE varchar(255) not null,
    DESCRIPTION text,
    PRICE decimal(19, 2) not null,
    --
    primary key (ID)
)^
-- end PETCLINIC_CONSUMABLE
-- begin PETCLINIC_OWNER
create table PETCLINIC_OWNER (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255) not null,
    PHONE_NUMBER varchar(255) not null,
    EMAIL varchar(255) not null,
    --
    primary key (ID)
)^
-- end PETCLINIC_OWNER
-- begin PETCLINIC_VETERINARIAN
create table PETCLINIC_VETERINARIAN (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    USER_ID uuid not null,
    HOURLY_RATE decimal(19, 2) not null,
    --
    primary key (ID)
)^
-- end PETCLINIC_VETERINARIAN
-- begin PETCLINIC_VISIT
create table PETCLINIC_VISIT (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    PET_ID uuid not null,
    VETERINARIAN_ID uuid not null,
    DATE_ date not null,
    DESCRIPTION text not null,
    HOURS_SPENT integer,
    AMOUNT decimal(19, 2) not null,
    --
    primary key (ID)
)^
-- end PETCLINIC_VISIT
-- begin PETCLINIC_VISIT_CONSUMABLE_LINK
create table PETCLINIC_VISIT_CONSUMABLE_LINK (
    VISIT_ID uuid,
    CONSUMABLE_ID uuid,
    primary key (VISIT_ID, CONSUMABLE_ID)
)^
-- end PETCLINIC_VISIT_CONSUMABLE_LINK
