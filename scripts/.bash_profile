# .bash_profile
# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin:/app/itxa/IBM/StandardsProcessingEngine9.0.0/bin:/app/itxa/wsdtx/bin:/app/opt/mqm/bin:/app/ITX_Launcher/scripts

export PATH
source /app/IBM/StandardsProcessingEngine10.0.1/bin/spesetup.sh
export CLASSPATH=$CLASSPATH:/app/IBM/StandardsProcessingEngine10.0.1/jars/sqljdbc4.jar:/home/itxaadmin/jars/MQA.SPE.Engine.jar:/home/itxaadmin/jars/commons-lang3-3.7.jar
export CLASSPATH=$CLASSPATH:/opt/mqm/java/lib:/opt/mqm/java/lib/com.ibm.mq.jar
export DTX_HOME_DIR=/app/itxa/wsdtx
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/app/opt/mqm/lib64
export FTE_JVM_PROPERTIES=-Xmx5048M
export BFG_JVM_PROPERTIES=-Xmx5048M
export TELEGRAF_CONFIG_PATH=/home/itxaadmin/telegraf/etc/telegraf/telegraf.conf
export WTX_ADAPTER_MQS_CONN_OPTION=0x'04000940'
