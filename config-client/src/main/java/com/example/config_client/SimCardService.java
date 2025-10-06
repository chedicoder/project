package com.example.config_client;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class SimCardService {

    private final SimCardSubscriptionClient simCardClient;

    public SimCardService(SimCardSubscriptionClient simCardClient) {
        this.simCardClient = simCardClient;
    }

    public void printAllSubscriptions() {
        List<SimCardSubscriptionEntity> subscriptions = simCardClient.getAllSubscriptions();
        if (subscriptions.isEmpty()) {
            System.out.println("No subscriptions found.");
        } else {
            System.out.println("List of Sim Card Subscriptions:");
            for (SimCardSubscriptionEntity subscription : subscriptions) {
                System.out.println(subscription);
            }
        }
    }
}

