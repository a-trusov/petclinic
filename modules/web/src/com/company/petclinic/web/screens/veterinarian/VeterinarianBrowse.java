package com.company.petclinic.web.screens.veterinarian;

import com.haulmont.cuba.gui.screen.*;
import com.company.petclinic.entity.Veterinarian;

@UiController("petclinic_Veterinarian.browse")
@UiDescriptor("veterinarian-browse.xml")
@LookupComponent("veterinariansTable")
@LoadDataBeforeShow
public class VeterinarianBrowse extends StandardLookup<Veterinarian> {
}