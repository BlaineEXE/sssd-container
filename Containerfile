FROM quay.io/centos/centos:stream9

RUN dnf install -y sssd sssd-tools sssd-ldap sssd-nfs-idmap sssd-krb5 sssd-ad sssd-ipa \
    && dnf clean all \
    && rm -rf /var/cache/dnf/
