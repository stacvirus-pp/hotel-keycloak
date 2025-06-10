FROM quay.io/keycloak/keycloak:26.2.5

COPY hotel.json /opt/keycloak/data/import/realm.json