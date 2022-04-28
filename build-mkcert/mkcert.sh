#!/bin/bash

mkcert -install
mkcert -cert-file ./$CERT_HOSTNAME.crt -key-file ./$CERT_HOSTNAME.key $CERT_HOSTNAME.$CERT_DOMAIN
