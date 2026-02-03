package com.example.config_client;

import java.time.LocalDateTime;

public class SimCardSubscriptionEntity {
    private Long id;
    private String simNumber; // Numéro de la carte SIM
    private String subscriptionType; // Type d'abonnement (prépayé, postpayé, etc.)
    private String planName; // Nom du forfait (par exemple, "Forfait 10 Go", "Forfait Illimité")
    private Integer dataLimit; // Limite de données en Mo ou Go
    private Integer callLimit; // Limite d'appels en minutes
    private Integer smsLimit; // Limite de SMS
    private LocalDateTime activationDate; // Date d'activation de l'abonnement
    private LocalDateTime expirationDate; // Date d'expiration de l'abonnement
    private Boolean isActive; // Statut de l'abonnement (actif ou inactif)
    public SimCardSubscriptionEntity() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getSimNumber() {
        return simNumber;
    }

    public void setSimNumber(String simNumber) {
        this.simNumber = simNumber;
    }

    public String getSubscriptionType() {
        return subscriptionType;
    }

    public void setSubscriptionType(String subscriptionType) {
        this.subscriptionType = subscriptionType;
    }

    public String getPlanName() {
        return planName;
    }

    public void setPlanName(String planName) {
        this.planName = planName;
    }

    public Integer getDataLimit() {
        return dataLimit;
    }

    public void setDataLimit(Integer dataLimit) {
        this.dataLimit = dataLimit;
    }

    public Integer getCallLimit() {
        return callLimit;
    }

    public void setCallLimit(Integer callLimit) {
        this.callLimit = callLimit;
    }

    public Integer getSmsLimit() {
        return smsLimit;
    }

    public void setSmsLimit(Integer smsLimit) {
        this.smsLimit = smsLimit;
    }

    public LocalDateTime getActivationDate() {
        return activationDate;
    }

    public void setActivationDate(LocalDateTime activationDate) {
        this.activationDate = activationDate;
    }

    public LocalDateTime getExpirationDate() {
        return expirationDate;
    }

    public void setExpirationDate(LocalDateTime expirationDate) {
        this.expirationDate = expirationDate;
    }

    public Boolean getIsActive() {
        return isActive;
    }

    public void setIsActive(Boolean active) {
        isActive = active;
    }
}
