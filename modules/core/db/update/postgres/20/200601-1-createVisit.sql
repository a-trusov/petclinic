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
);