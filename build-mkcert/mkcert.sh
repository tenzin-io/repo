#!/bin/bash

test -d $CAROOT || mkdir $CAROOT
test -e $CAROOT/$CERT_HOSTNAME.crt && exit 0

mkcert -install
mkcert -cert-file $CAROOT/$CERT_HOSTNAME.crt -key-file $CAROOT/$CERT_HOSTNAME.key $CERT_HOSTNAME.$CERT_DOMAIN
