cat ~/snap/multipass/current/data/multipass-client-certificate/multipass_cert.pem | sudo tee -a /var/snap/multipass/common/data/multipassd/authenticated-certs/multipass_client_certs.pem > /dev/null
snap restart multipass
