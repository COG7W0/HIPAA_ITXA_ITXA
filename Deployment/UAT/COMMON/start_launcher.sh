#!/bin/ksh
#. /opt/ibm/wsdtx/setup
timedatectl set-timezone America/New_York
su 121760663
source /opt/IBM/SPE10.0.1/bin/spesetup.sh
echo $SPE_INSTALL_DIR
echo "****************** Custom Environment Variables Update - Start **********************"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/mqm/lib64:/opt/mqm/java/lib64:/opt/mqm/java/lib/
export CLASSPATH=$CLASSPATH:/opt/mqm/java/lib/com.ibm.mq.allclient.jar
export PATH=$PATH:/opt/mssql-tools/bin:/opt/mqm/lib64:/opt/mqm/java/lib64:/opt/mqm/java/lib/
export ODBCSYSINI=/opt/ibm/wsdtx/unixODBC/etc
export ODBCINI=/opt/ibm/wsdtx/unixODBC/etc/odbc.ini
export PATH=/opt/mqm/bin:$PATH
echo $CLASSPATH
echo $ODBCSYSINI
echo $ODBCINI
echo $LD_LIBRARY_PATH
echo $PATH
echo "****************** Custom Environment Variables Update - End **********************"
echo "****************** LauncherAdmin Start **********************"
launcheradmin.sh -auto -separate -addir /opt/ibm/wsdtx/systems
launcheradmin.sh -lport 5015 -prange 7000:8000 -mrc /opt/ibm/wsdtx/config/CNO_Registry.mrc -ini /opt/ibm/wsdtx/config/dtx.ini
launcheradmin.sh -adduser 'user:admin;login:admin;pwd:admin;access:gss,gpr,gm'
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf CNO_GTM_EVENT.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc" -pf "name:CNO_GTM_EVENT.msl;desc:CNO_GTM_EVENT;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf CNO_GTM_Notify.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc" -pf "name:CNO_GTM_Notify.msl;desc:CNO_GTM_Notify;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf CNO_Influx_Cache_Delete.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc" -pf "name:CNO_Influx_Cache_Delete.msl;desc:CNO_Influx_Cache_Delete;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf CNO_Influx_Cache_Flush.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc" -pf "name:CNO_Influx_Cache_Flush.msl;desc:CNO_Influx_Cache_Flush;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf CNO_Influx_Cache_Load.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc" -pf "name:CNO_Influx_Cache_Load.msl;desc:CNO_Influx_Cache_Load;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf CNO_Send_Excel_Report.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc" -pf "name:CNO_Send_Excel_Report.msl;desc:CNO_Send_Excel_Report;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf CNO_MongoCRUD_Wrapper.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc" -pf "name:CNO_MongoCRUD_Wrapper.msl;desc:CNO_MongoCRUD_Wrapper;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc;as:yes"
echo "*********************** Display working directory in effect *************************"
env
launcher.sh -start
#launcheradmin.sh status
