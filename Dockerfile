FROM alpine:latest
ENV CREDENTIALS_PATH /var/run/secrets/boostport.com
COPY kubernetes-vault-to-consul-template.sh /usr/local/bin/
ENTRYPOINT ["/usr/local/bin/kubernetes-vault-to-consul-template.sh"]
