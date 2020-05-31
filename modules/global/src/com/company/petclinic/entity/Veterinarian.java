package com.company.petclinic.entity;

import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.cuba.security.entity.User;

import javax.persistence.*;
import javax.validation.constraints.DecimalMax;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;

@Table(name = "PETCLINIC_VETERINARIAN")
@Entity(name = "petclinic_Veterinarian")
public class Veterinarian extends StandardEntity {
    private static final long serialVersionUID = -5066330755703087209L;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "USER_ID")
    protected User user;

    @DecimalMax("20")
    @DecimalMin("1")
    @NotNull
    @Column(name = "HOURLY_RATE", nullable = false)
    protected BigDecimal hourlyRate;

    public BigDecimal getHourlyRate() {
        return hourlyRate;
    }

    public void setHourlyRate(BigDecimal hourlyRate) {
        this.hourlyRate = hourlyRate;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}