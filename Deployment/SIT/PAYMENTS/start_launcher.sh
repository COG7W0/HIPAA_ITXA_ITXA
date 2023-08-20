#!/bin/ksh
#. /opt/ibm/wsdtx/setup
timedatectl set-timezone America/New_York
#su 121760663
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
# chmod 777 -R /opt
umask 000
/opt/mqm/bin/mqlicense -accept
export WTX_ADAPTER_MQS_CONN_OPTION=0x'04000940'
launcheradmin.sh -adduser 'user:admin;login:admin;pwd:admin;access:gss,gpr,gm'
launcheradmin.sh -auto -separate -addir /opt/ibm/wsdtx/systems
launcheradmin.sh -lport 5015 -prange 8000:9000 -mrc /opt/ibm/wsdtx/config/CNO_Registry.mrc -ini /opt/ibm/wsdtx/config/dtx.ini
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf CNO_X12835_MongoDB.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/HIX_Registry.mrc" -pf "name:CNO_X12835_MongoDB.msl;desc:CNO_X12835_MongoDB;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf CNO_X12835_Instamed_Send.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc" -pf "name:CNO_X12835_Instamed_Send.msl;desc:CNO_X12835_Instamed_Send;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf CNO_Instamed_IDF_Sort.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc" -pf "name:CNO_Instamed_IDF_Sort.msl;desc:CNO_Instamed_IDF_Sort;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf CNO_IDF_VCARD_Report.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc" -pf "name:CNO_IDF_VCARD_Report.msl;desc:CNO_IDF_VCARD_Report;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf CNO_IDF_Response_Report.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc" -pf "name:CNO_IDF_Response_Report.msl;desc:CNO_IDF_Response_Report;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf CNO_IDF_InsertGridFS.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc" -pf "name:CNO_IDF_InsertGridFS.msl;desc:CNO_IDF_InsertGridFS;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf CNO_IDF_FileBalanceReport.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc" -pf "name:CNO_IDF_FileBalanceReport.msl;desc:CNO_IDF_FileBalanceReport;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf CNO_BICPS_FileBalance_Report.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc" -pf "name:CNO_BICPS_FileBalance_Report.msl;desc:CNO_BICPS_FileBalance_Report;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf CNO_835EFT_Envelope.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc" -pf "name:CNO_835EFT_Envelope.msl;desc:CNO_835EFT_Envelope;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf CNO_835EFT_Data_Transform.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc" -pf "name:CNO_835EFT_Data_Transform.msl;desc:CNO_835EFT_Data_Transform;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf CNO_835EFT_Data_Split.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc" -pf "name:CNO_835EFT_Data_Split.msl;desc:CNO_835EFT_Data_Split;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf CNO_835EFT_Data_Sort.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc" -pf "name:CNO_835EFT_Data_Sort.msl;desc:CNO_835EFT_Data_Sort;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf CNO_835EFT_Balance_Process.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc" -pf "name:CNO_835EFT_Balance_Process.msl;desc:CNO_835EFT_Balance_Process;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf CNO_Instamed_IDF_Process.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc" -pf "name:CNO_Instamed_IDF_Process.msl;desc:CNO_Instamed_IDF_Process;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf CNO_IDF_BICPS_Response.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc" -pf "name:CNO_IDF_BICPS_Response.msl;desc:CNO_IDF_BICPS_Response;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf CNO_BICPS_InsertMongoDB.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc" -pf "name:CNO_BICPS_InsertMongoDB.msl;desc:CNO_BICPS_InsertMongoDB;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf CNO_X12999_WriteToMongo.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc" -pf "name:CNO_X12999_WriteToMongo.msl;desc:CNO_X12999_WriteToMongo;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf CNO_Instamed_999_DeEnvelope.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc" -pf "name:CNO_Instamed_999_DeEnvelope.msl;desc:CNO_Instamed_999_DeEnvelope;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf CNO_Instamed_999_Report.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc" -pf "name:CNO_Instamed_999_Report.msl;desc:CNO_Instamed_999_Report;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc;as:yes"
launcheradmin.sh -eddir /opt/ibm/wsdtx/systems -asf CNO_835IB_FileBalanceReport.msl -pd "ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc" -pf "name:CNO_835IB_FileBalanceReport.msl;desc:CNO_835IB_FileBalanceReport;ini:/opt/ibm/wsdtx/config/dtx.ini;rm:local;mrc:/opt/ibm/wsdtx/config/CNO_Registry.mrc;as:yes"

echo "*********************** Display working directory in effect *************************"
env
#runuser -p -u itxaadmin -- launcher.sh -start
launcher.sh -start
