package com.company.petclinic.web.screens.visit;

import com.haulmont.cuba.gui.screen.*;
import com.company.petclinic.entity.Visit;

@UiController("petclinic_Visit.edit")
@UiDescriptor("visit-edit.xml")
@EditedEntityContainer("visitDc")
@LoadDataBeforeShow
public class VisitEdit extends StandardEditor<Visit> {
}