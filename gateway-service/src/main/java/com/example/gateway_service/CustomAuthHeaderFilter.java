// c'est un filtre personnalisé pour Spring Cloud Gateway.
// Il intercepte toutes les requêtes passant par le gateway et vérifie si elles contiennent un header Authorization.
// - Si le header est présent, il le réinjecte dans la requête avant qu’elle complète son chemin vers le service cible.
// - Si le header n’est pas présent, la requête continue normalement.


package com.example.gateway_service;

import org.springframework.cloud.gateway.filter.GatewayFilter;
import org.springframework.cloud.gateway.filter.factory.AbstractGatewayFilterFactory;
import org.springframework.stereotype.Component;

@Component
public class CustomAuthHeaderFilter extends AbstractGatewayFilterFactory<Object> {

    @Override
    public GatewayFilter apply(Object config) {
        return (exchange, chain) -> {
            String authorization = exchange.getRequest().getHeaders().getFirst("Authorization");
            if (authorization != null) {
                return chain.filter(exchange.mutate()
                        .request(exchange.getRequest().mutate()
                                .header("Authorization", authorization)
                                .build())
                        .build());
            }
            return chain.filter(exchange);
        };
    }
}
