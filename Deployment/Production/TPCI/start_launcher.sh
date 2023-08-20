#!/bin/ksh
#. /opt/ibm/wsdtx/setup
timedatectl set-timezone America/New_York
#su 121760663
source /opt/IBM/SPE10.0.1/bin/spesetup.sh
echo $SPE_INSTALL_DIR
echo "****************** Custom Environment Variables Update - Start **********************"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/mqm/lib64:/opt/mqm/java/lib64:/opt/mqm/java/lib/:/opt/ibm/wsdtx/unixODBC/linux/lib/
export CLASSPATH=$CLASSPATH:/opt/mqm/java/lib/com.ibm.mq.allclient.jar
export PATH=$PATH:/opt/mssql-tools/bin:/opt/mqm/lib64:/opt/mqm/java/lib64:/opt/mqm/java/lib/
export ODBCSYSINI=/opt/ibm/wsdtx/unixODBC/etc/odbcinst.ini
export ODBCINI=/opt/ibm/wsdtx/unixODBC/etc/odbc.ini
export PATH=/opt/mqm/bin:/opt/mqm/java/jre64/jre/bin:$PATH
echo $CLASSPATH
echo $ODBCSYSINI
echo $ODBCINI
echo $LD_LIBRARY_PATH
echo $PATH
echo "****************** Custom Environment Variables Update - End **********************"
echo "****************** LauncherAdmin Start **********************"
#chmod 777 -R /opt
umask 000
/opt/mqm/bin/mqlicense -accept
export WTX_ADAPTER_MQS_CONN_OPTION=0x'04000940'
launcheradmin.sh -adduser 'user:admin;login:admin;pwd:admin;access:gss,gpr,gm'
launcheradmin.sh -auto -separate -addir /opt/ibm/wsdtx/systems
launcheradmin.sh -lport 5015 -prange 8000:9000 -mrc /opt/ibm/wsdtx/config/HIX_Registry.mrc -ini /opt/ibm/wsdtx/config/dtx.ini
launcheradmin.sh -adduser 'user:admin;login:admin;pwd:admin;access:gss,gpr,gm'

launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf 003_HIX_Send.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/HIX_Registry.mrc" -pf "name:003_HIX_Send.msl;desc:003_HIX_Send;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/HIX_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf 004_HIX_Archive.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/HIX_Registry.mrc" -pf "name:004_HIX_Archive.msl;desc:004_HIX_Archive;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/HIX_Registry.mrc;as:no"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf 009_HIX_GTM_Event.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/HIX_Registry.mrc" -pf "name:009_HIX_GTM_Event.msl;desc:009_HIX_GTM_Event;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/HIX_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf 010_HIX_GTM_Notify.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/HIX_Registry.mrc" -pf "name:010_HIX_GTM_Notify.msl;desc:010_HIX_GTM_Notify;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/HIX_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf 001_HIX_Receive.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/HIX_Registry.mrc" -pf "name:001_HIX_Receive.msl;desc:001_HIX_Receive;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/HIX_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf 002_HIX_Router.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/HIX_Registry.mrc" -pf "name:002_HIX_Router.msl;desc:002_HIX_Router;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/HIX_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf TPCI_Humana_Receive.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/HIX_Registry.mrc" -pf "name:TPCI_Humana_Receive.msl;desc:TPCI_Humana_Receive;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/HIX_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf TPCI_Aetna_Receive.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/HIX_Registry.mrc" -pf "name:TPCI_Aetna_Receive.msl;desc:TPCI_Aetna_Receive;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/HIX_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf TPCI_Cigna_Receive.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/HIX_Registry.mrc" -pf "name:TPCI_Cigna_Receive.msl;desc:TPCI_Cigna_Receive;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/HIX_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf TPCI_UHC_Receive.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/HIX_Registry.mrc" -pf "name:TPCI_UHC_Receive.msl;desc:TPCI_UHC_Receive;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/HIX_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf TPCI_Oxford_Receive.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/HIX_Registry.mrc" -pf "name:TPCI_Oxford_Receive.msl;desc:TPCI_Oxford_Receive;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/HIX_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf TPCI_Careplus_Receive.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/HIX_Registry.mrc" -pf "name:TPCI_Careplus_Receive.msl;desc:TPCI_Careplus_Receive;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/HIX_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf TPCI_Lifepro_Receive.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/HIX_Registry.mrc" -pf "name:TPCI_Lifepro_Receive.msl;desc:TPCI_Lifepro_Receive;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/HIX_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf TPCI_Anthem_Receive.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/HIX_Registry.mrc" -pf "name:TPCI_Anthem_Receive.msl;desc:TPCI_Anthem_Receive;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/HIX_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf TPCI_Wellcare_Receive.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/HIX_Registry.mrc" -pf "name:TPCI_Wellcare_Receive.msl;desc:TPCI_Wellcare_Receive;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/HIX_Registry.mrc;as:yes"
echo "*********************** Display working directory in effect *************************"
env
#runuser -p -u itxaadmin -- launcher.sh -start
launcher.sh -start
