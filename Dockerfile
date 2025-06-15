FROM quay.io/keycloak/keycloak:26.2.5

COPY provider/keycloak-2fa-email-authenticator.jar /opt/keycloak/providers/

COPY hotel.json /opt/keycloak/data/import/realm.json

COPY themes/hotel-email /opt/keycloak/themes/hotel-email

USER root
RUN chown -R keycloak:keycloak /opt/keycloak/themes/hotel-email