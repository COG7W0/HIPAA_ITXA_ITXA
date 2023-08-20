/home/itxaadmin/startAgents.sh
spederbystart.sh
spetpuistart.sh
/home/itxaadmin/influxdb-1.4.3-1/usr/bin/influxd -config /home/itxaadmin/influxdb-1.4.3-1/etc/influxdb/influxdb.conf nohub &
/home/itxaadmin/chronograf-1.4.1.3-1/usr/bin/chronograf nohub &
/home/itxaadmin/telegraf.sh nohub &
/var/mqm/mqft/mqa/mqamftsvc.sh start nohub &



