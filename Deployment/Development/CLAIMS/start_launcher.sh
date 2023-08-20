#!/bin/ksh
#. /opt/ibm/wsdtx/setup
timedatectl set-timezone America/New_York
su 1217606634
source /opt/IBM/SPE10.0.1/bin/spesetup.sh
echo $SPE_INSTALL_DIR
echo "****************** Custom Environment Variables Update - Start **********************"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/mqm/lib64:/opt/mqm/java/lib64:/opt/mqm/java/lib/
export CLASSPATH=$CLASSPATH:/opt/mqm/java/lib/com.ibm.mq.allclient.jar
export PATH=$PATH:/opt/mssql-tools/bin:/opt/mqm/lib64:/opt/mqm/java/lib64:/opt/mqm/java/lib/
export ODBCSYSINI=/opt/ibm/wsdtx/unixODBC/etc
export ODBCINI=/opt/ibm/wsdtx/unixODBC/etc/odbc.ini
export PATH=/opt/mqm/bin:/opt/mqm/java/jre64/jre/bin:$PATH
echo $CLASSPATH
echo $ODBCSYSINI
echo $ODBCINI
echo $LD_LIBRARY_PATH
echo $PATH
echo "****************** Custom Environment Variables Update - End **********************"
echo "****************** LauncherAdmin Start **********************"
umask 000
launcheradmin.sh -auto -separate -addir /opt/ibm/wsdtx/systems
launcheradmin.sh -lport 5015 -prange 7000:8000 -mrc /opt/ibm/wsdtx/config/HIX_Registry.mrc -ini /opt/ibm/wsdtx/config/dtx.ini
launcheradmin.sh -adduser 'user:admin;login:admin;pwd:admin;access:gss,gpr,gm'
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf CNO_837AB_BalanceReport.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc" -pf "name:CNO_837AB_BalanceReport.msl;desc:CNO_837AB_BalanceReport;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf CNO_837AB_DeEnvelope.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc" -pf "name:CNO_837AB_DeEnvelope.msl;desc:CNO_837AB_DeEnvelope;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf CNO_837AB_DupChk.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc" -pf "name:CNO_837AB_DupChk.msl;desc:CNO_837AB_DupChk;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf CNO_837AB_MongoDB.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc" -pf "name:CNO_837AB_MongoDB.msl;desc:CNO_837AB_MongoDB;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf CNO_837A_PreEdits.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc" -pf "name:CNO_837A_PreEdits.msl;desc:CNO_837A_PreEdits;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf CNO_837A_Transform.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc" -pf "name:CNO_837A_Transform.msl;desc:CNO_837A_Transform;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf CNO_837B_PreEdits.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc" -pf "name:CNO_837B_PreEdits.msl;desc:CNO_837B_PreEdits;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf CNO_837B_Transform.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc" -pf "name:CNO_837B_Transform.msl;desc:CNO_837B_Transform;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc;as:yes"
#launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf CNO_837AB_AutoCorrect.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc" -pf "name:CNO_837AB_AutoCorrect.msl;desc:CNO_837AB_AutoCorrect;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc;as:yes"
echo "*********************** Display environment variables in effect *************************"
env
launcher.sh -start
