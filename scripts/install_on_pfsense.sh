#!/bin/sh

cd ./zabbix_ipsec_pfsense/scripts/
DST_DIR='/usr/local/bin/';

install -g wheel -o root -m 755 check_ipsec.sh ${DST_DIR}/
install -g wheel -o root -m 755 check_ipsec_traffic.sh ${DST_DIR}/
install -g wheel -o root -m 755 zabbix-ipsec.py ${DST_DIR}/

SUDO_DIR='/usr/local/etc/sudoers.d/';
install -g wheel -o root -m 644 ../zabbix_sudoers ${SUDO_DIR}/ 

# EOF
