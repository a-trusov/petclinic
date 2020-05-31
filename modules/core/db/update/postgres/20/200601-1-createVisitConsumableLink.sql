create table PETCLINIC_VISIT_CONSUMABLE_LINK (
    VISIT_ID uuid,
    CONSUMABLE_ID uuid,
    primary key (VISIT_ID, CONSUMABLE_ID)
);
