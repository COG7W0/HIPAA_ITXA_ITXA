MERCSRC.MAP   	     . -   	   *         j                  �   4  �  �  d(      �  	                              F_WriteToMQ      F_Create_usr     F_Create_RFH2    CNO_ITXA_MQ_PUT1      CNO_ITXA_MQ_SPLIT    F_Create_MQMessage       F_Create_Last_MQMessage      F_Create_First_MQMessage     F_Create_MQGroupMessages     
    " * 2      usr     Data        Data        Data        Data        size    
    Index       Index       Index       Index   !    Record    	  Headers   	  Headers   	  Headers   	  Headers   	  Headers   
  Variable    	  
  Variable      
  Variable      
  Variable      
  Variable      
  RFH2_Out      
  Variable    (  
 	 MQOutput         DataInput       MQHeaders       WriteToMQ   "    MQMessage   &   	 MQMessage       MQMessages      MQMessages      AdapterType #    AdapterType )   	 AdapterType     NameValueData   $    AdapterCommand  %    AdapterCommand  -   	 AdapterCommand      RFH2NameValueData       MQLogicalMessages       MQLogicalMessages       MQLogicalMessages             # ' + / 3 7 ; ? D I N S X ] b g l q v { � � � � � � � � � � � � �   Data Group Root   Headers MQSeries    	  blob Fields Root      Index Fields Root     MQMessage MQSeries    Data Field MQSeries   MQMessages MQSeries   RunMap Records Data   Records Records Data      Variable Record Root      RFH2_Out Header MQSeries      MQMessages_Group MQSeries     NameValueData Fields Root     MQLogicalMessages MQSeries    NameValueLength Fields Root   usr1 NameValuePair MQSeries   MQLogicalMessages_Last MQSeries        # ) / 6 = E M U ] e m   ../logs/      MQOutput      %debugpath%/      ..\Trees\RunMap.mtt   ..\data\AdapterType.txt   ..\Trees\CNO_MQWrite.mtt      ..\data\AdapterCommand.txt    ..\Trees\CNO_ITXA_MQ_SPLIT.mtt   1 ..\Data\TKS\CIG_90008_TKS_B_20171031_07000392.txt    H ..\data\Run_CNO_ITXA_MQ_PUT1_112402_13321589582395_34_LXITXAPPM01.I1.bak     L ..\..\..\..\Run_CNO_ITXA_MQ_SPLIT_79655_10ad1540585352_12_LXITXAPPD01.I2.bak     L ..\..\..\..\Run_CNO_ITXA_MQ_SPLIT_79655_10ad1540585352_12_LXITXAPPD01.I3.bak           " * 3 A U j  "  NameValueLength Field:usr =size   $  MQMessage:MQLogicalMessages =NONE     - & Flags Field:RFH2_Out Header:MQHeaders  =0     .  Flags Field:RFH2_Out =Flags Field:.:Headers   / ( Version Field:RFH2_Out Header:MQHeaders  =2   0  Format Field:RFH2_Out =Format Field:.:Headers     2  StrucId Field:RFH2_Out =StrucId Field:.:Headers   2  Version Field:RFH2_Out =Version Field:.:Headers   2 ) Encoding Field:RFH2_Out Header:MQHeaders  =546    3 ( StrucId Field:RFH2_Out Header:MQHeaders  ="RFH"   3 * Data Field:MQMessage [1]:MQLogicalMessages =Data  4  Count Fields:Variable  =COUNT(Message:DataInput)      4  Encoding Field:RFH2_Out =Encoding Field:.:Headers     4 , StrucLength Field:RFH2_Out Header:MQHeaders  =36      6 , jms NameValuePair:RFH2_Out Header:MQHeaders  =NONE    6 , mcd NameValuePair:RFH2_Out Header:MQHeaders  =NONE    7 ' Format Field:RFH2_Out Header:MQHeaders  ="MQSTR   "   7 - usr1 NameValuePair:RFH2_Out Header:MQHeaders  =NONE   9 / CodedCharSetID Field:RFH2_Out Header:MQHeaders  =1208     9 / NameValueCCSID Field:RFH2_Out Header:MQHeaders  =1208     :  StrucLength Field:RFH2_Out =StrucLength Fields:Variable   :  jms NameValuePair:RFH2_Out =jms NameValuePair:.:Headers   :  mcd NameValuePair:RFH2_Out =mcd NameValuePair:.:Headers   ?  NameValueData Fields:Variable  =TRIMLEFT(RFH2NameValueData)   ? 8 Offset MQLONG Field:MessageDescriptor2 Header:MQHeaders  =0   ? 8 Report MQLONG Field:MessageDescriptor2 Header:MQHeaders  =0   @  NameValueData Field:usr% =FILLRIGHT(NameValueData, " ",  size)     @  CodedCharSetID Field:RFH2_Out =CodedCharSetID Field:.:Headers     @  NameValueCCSID Field:RFH2_Out =NameValueCCSID Field:.:Headers     @ 8 Expiry MQLONG Field:MessageDescriptor2 Header:MQHeaders  =-1      @ 9 MsgType MQLONG Field:MessageDescriptor2 Header:MQHeaders  =8      @ 9 Version MQLONG Field:MessageDescriptor2 Header:MQHeaders  =2      A 7 MsgId MQBYTE Field:MessageDescriptor2 Header:MQHeaders  =NONE     A : Feedback MQLONG Field:MessageDescriptor2 Header:MQHeaders  =0     A : MsgFlags MQLONG Field:MessageDescriptor2 Header:MQHeaders  =8     A : Priority MQLONG Field:MessageDescriptor2 Header:MQHeaders  =0     C 9 PutDate MQCHAR Field:MessageDescriptor2 Header:MQHeaders  =NONE   C 9 PutTime MQCHAR Field:MessageDescriptor2 Header:MQHeaders  =NONE   C : Encoding MQLONG Field:MessageDescriptor2 Header:MQHeaders  =546   D : CorrelId MQBYTE Field:MessageDescriptor2 Header:MQHeaders  =NONE      D : ReplyToQ MQCHAR Field:MessageDescriptor2 Header:MQHeaders  =NONE      D = Persistence MQLONG Field:MessageDescriptor2 Header:MQHeaders  =1      E 9 StrucId MQCHAR Field:MessageDescriptor2 Header:MQHeaders  ="MD  "     E > BackoutCount MQLONG Field:MessageDescriptor2 Header:MQHeaders  =0     E > MsgSeqNumber MQLONG Field:MessageDescriptor2 Header:MQHeaders  =1     G = PutApplName MQCHAR Field:MessageDescriptor2 Header:MQHeaders  =NONE   G = PutApplType MQLONG Field:MessageDescriptor2 Header:MQHeaders  =NONE   G = ReplyToQMgr MQCHAR Field:MessageDescriptor2 Header:MQHeaders  =NONE   H 8 Format MQCHAR Field:MessageDescriptor2 Header:MQHeaders  ="MQHRF2  "      H @ OriginalLength MQLONG Field:MessageDescriptor2 Header:MQHeaders  =-1      I " RFH2NameValueSize Fields:Variable # =SIZE(TRIMLEFT(RFH2NameValueData))     J @ ApplOriginData MQCHAR Field:MessageDescriptor2 Header:MQHeaders  =NONE    J @ CodedCharSetId MQLONG Field:MessageDescriptor2 Header:MQHeaders  =1208    J @ UserIdentifier MQCHAR Field:MessageDescriptor2 Header:MQHeaders  =NONE    K A AccountingToken MQBYTE Field:MessageDescriptor2 Header:MQHeaders  =NONE   L B ApplIdentityData MQCHAR Field:MessageDescriptor2 Header:MQHeaders  =NONE      S / RFH2_Out Header:MQMessage [1]:MQLogicalMessages  =F_Create_RFH2(Headers,Variable)  T  RunMap:WriteToMQ@ =F_WriteToMQ(MQMessage IN MQMessages,AdapterType,AdapterCommand)     U O MsgFlags MQLONG Field:MessageDescriptor2 Header:MQMessage [1]:MQLogicalMessages =8    V O MsgFlags MQLONG Field:MessageDescriptor2 Header:MQMessage [1]:MQLogicalMessages =16   X 9 GroupId MQBYTE Field:MessageDescriptor2 Header:MQHeaders  =resourcelib->GETITXUID ()      [  MapStatus Field:Record @ =WORD( WORD( RunMap Field:Record, "MapStatus=""", 2 ), """",1 )   [ 0 RFH2_Out Header:MQMessage [1]:MQLogicalMessages ' =NONE//F_Create_RFH2(Headers,Variable)   ] S MsgSeqNumber MQLONG Field:MessageDescriptor2 Header:MQMessage [1]:MQLogicalMessages =Index    ^  Message Field:Record E =WORD( WORD( RunMap Field:Record, "<Message>", 2 ), "</Message>",1 )    j  ReturnCode Field:Record N =EITHER (WORD( WORD( RunMap Field:Record, "mapreturn=""", 2 ), """",1 ), "0")    k  usr1 NameValuePair:RFH2_OutL =F_Create_usr(NameValueLength Fields:Variable,NameValueData Fields:Variable)  m L MsgId MQBYTE Field:MessageDescriptor2 Header:MQMessage [1]:MQLogicalMessages =MsgId MQBYTE Field:.:Headers    o M Expiry MQLONG Field:MessageDescriptor2 Header:MQMessage [1]:MQLogicalMessages =Expiry MQLONG Field:.:Headers  o M Format MQCHAR Field:MessageDescriptor2 Header:MQMessage [1]:MQLogicalMessages =Format MQCHAR Field:.:Headers  o M Offset MQLONG Field:MessageDescriptor2 Header:MQMessage [1]:MQLogicalMessages =Offset MQLONG Field:.:Headers  o M Report MQLONG Field:MessageDescriptor2 Header:MQMessage [1]:MQLogicalMessages =Report MQLONG Field:.:Headers  q 0 RFH2_Out Header:MQMessage [1]:MQLogicalMessages = =IF(Count Fields:Variable=1,F_Create_RFH2(Headers,Variable))     q N GroupId MQBYTE Field:MessageDescriptor2 Header:MQMessage [1]:MQLogicalMessages =GroupId MQBYTE Field:.:Headers    q N MsgType MQLONG Field:MessageDescriptor2 Header:MQMessage [1]:MQLogicalMessages =MsgType MQLONG Field:.:Headers    q N PutDate MQCHAR Field:MessageDescriptor2 Header:MQMessage [1]:MQLogicalMessages =PutDate MQCHAR Field:.:Headers    q N PutTime MQCHAR Field:MessageDescriptor2 Header:MQMessage [1]:MQLogicalMessages =PutTime MQCHAR Field:.:Headers    q N StrucId MQCHAR Field:MessageDescriptor2 Header:MQMessage [1]:MQLogicalMessages =StrucId MQCHAR Field:.:Headers    q N Version MQLONG Field:MessageDescriptor2 Header:MQMessage [1]:MQLogicalMessages =Version MQLONG Field:.:Headers    s  MQMessages:MQMessages Y =F_Create_MQGroupMessages(CTEXT(Message:DataInput,"Native"),MQHeaders,Variable,INDEX($))   s O CorrelId MQBYTE Field:MessageDescriptor2 Header:MQMessage [1]:MQLogicalMessages  =CorrelId MQBYTE Field:.:Headers  s O Encoding MQLONG Field:MessageDescriptor2 Header:MQMessage [1]:MQLogicalMessages  =Encoding MQLONG Field:.:Headers  s O Feedback MQLONG Field:MessageDescriptor2 Header:MQMessage [1]:MQLogicalMessages  =Feedback MQLONG Field:.:Headers  s O Priority MQLONG Field:MessageDescriptor2 Header:MQMessage [1]:MQLogicalMessages  =Priority MQLONG Field:.:Headers  s O ReplyToQ MQCHAR Field:MessageDescriptor2 Header:MQMessage [1]:MQLogicalMessages  =ReplyToQ MQCHAR Field:.:Headers  y R Persistence MQLONG Field:MessageDescriptor2 Header:MQMessage [1]:MQLogicalMessages# =Persistence MQLONG Field:.:Headers    y R PutApplName MQCHAR Field:MessageDescriptor2 Header:MQMessage [1]:MQLogicalMessages# =PutApplName MQCHAR Field:.:Headers    y R PutApplType MQLONG Field:MessageDescriptor2 Header:MQMessage [1]:MQLogicalMessages# =PutApplType MQLONG Field:.:Headers    y R ReplyToQMgr MQCHAR Field:MessageDescriptor2 Header:MQMessage [1]:MQLogicalMessages# =ReplyToQMgr MQCHAR Field:.:Headers    { S BackoutCount MQLONG Field:MessageDescriptor2 Header:MQMessage [1]:MQLogicalMessages$ =BackoutCount MQLONG Field:.:Headers  } N Format MQCHAR Field:MessageDescriptor2 Header:MQMessage [1]:MQLogicalMessages + ="MQSTR   "//Format MQCHAR Field:.:Headers     ~   MQLogicalMessages [1]:MQMessagesZ =IF(Count Fields:Variable>1&Index=1,F_Create_First_MQMessage(Data,Headers,Variable,Index))   ~   NameValueLength Fields:Variable Z =RFH2NameValueSize Fields:Variable+  ( 4 - MOD( RFH2NameValueSize Fields:Variable , 4)  )     U ApplOriginData MQCHAR Field:MessageDescriptor2 Header:MQMessage [1]:MQLogicalMessages& =ApplOriginData MQCHAR Field:.:Headers   U CodedCharSetId MQLONG Field:MessageDescriptor2 Header:MQMessage [1]:MQLogicalMessages& =CodedCharSetId MQLONG Field:.:Headers   U OriginalLength MQLONG Field:MessageDescriptor2 Header:MQMessage [1]:MQLogicalMessages& =OriginalLength MQLONG Field:.:Headers   U UserIdentifier MQCHAR Field:MessageDescriptor2 Header:MQMessage [1]:MQLogicalMessages& =UserIdentifier MQCHAR Field:.:Headers  � V AccountingToken MQBYTE Field:MessageDescriptor2 Header:MQMessage [1]:MQLogicalMessages' =AccountingToken MQBYTE Field:.:Headers    � W ApplIdentityData MQCHAR Field:MessageDescriptor2 Header:MQMessage [1]:MQLogicalMessages( =ApplIdentityData MQCHAR Field:.:Headers  �  MQLogicalMessages:MQMessagesq =IF(Count Fields:Variable>1&Index>1&Index!=Count Fields:Variable,F_Create_MQMessage(Data,Headers,Variable,Index))    � N Format MQCHAR Field:MessageDescriptor2 Header:MQMessage [1]:MQLogicalMessages F =IF(Count Fields:Variable=1,Format MQCHAR Field:.:Headers,"MQSTR   ")      �  StrucLength Fields:Variable � =IF(RFH2NameValueSize Fields:Variable>0,40 + RFH2NameValueSize Fields:Variable+ ( 4 -  MOD(RFH2NameValueSize Fields:Variable , 4 ) ),36)     � 	 MQOutput � =VALID(PUT(AdapterType,AdapterCommand,MQMessage),FAIL ("E01. Writing Data to Queue failed. Adapter command is "+AdapterCommand+". "+ LASTERRORCODE()+LASTERRORMSG()))   � ! MQLogicalMessages_Last:MQMessages� =IF((Count Fields:Variable>1&Index=Count Fields:Variable)|(Count Fields:Variable=1&Index=Count Fields:Variable),F_Create_Last_MQMessage(Data,Headers,Variable,Index))   �  Fail Field:Record � =IF(ReturnCode Field:Record!="0",FAIL("E30. Map CNO_ITXA_MQ_PUT1 not completed successfully . Return Code:- "+ReturnCode Field:Record+" Map Audit - "+RunMap Field:Record+ LASTERRORCODE()+ LASTERRORMSG()))   � RunMap Field:Record h//=VALID(PUT(AdapterType,AdapterCommand,PACKAGE(MQMessage)),FAIL ("E01. Writing Data to Queue failed. Adapter command is "+AdapterCommand+". "+ LASTERRORCODE()+LASTERRORMSG()))
= RUN ( "CNO_ITXA_MQ_PUT1" , 
          HANDLEIN ( 1 , PACKAGE(MQMessage) ) +
          ECHOIN ( 2 , AdapterType) +
          ECHOIN ( 3 , AdapterCommand )+
          " -AEDM" )       
  " / < J X f t � � � � � � � � � 	)9IZk|�������0BTfy�������%9Mau������%=Un�����3Pn����"@^|����6Vv����<]���	I	}	�	    $     � :��J��l���Ub���gz�v����1CN�[&u 0 � g � �  
� � � #�    	 
        � �4��}_�����AW�7=^�����oV� �           � �4��}_�����AW�7=^�����oV� Q           �J	�             � �4��}_�w���AW�7=^�����oV� >             K Y � = �# �:*�                 }    " # %   !       �	�&o~	      & ) -   (       	            /      ��^       +             �K�[       #             ��[       3   #  $  %     �K�[          &  '   (     ��[          0  1  2     �K�[          5  6  7     �K�[          8  9  :     ��^          <  =  >     n�^	       h    +   	             4                                 �    +   	             V                                 �    +   	             k                                 @ 7   +   	                   q                           m       	                   q                           � F      	                   q                           r 0      	                   q                                        	                                          ,             	                                          E 7   +         	                                              +         	                                          � V            	                                                       	                                          0             	                                          J 7   +         	                                              +         	                                          � n            	                                                       	                                          4             	                                          O 7   +         	                                               +         	                                          � $            	                                                       	                                          8             	                                          T 7   +         	                                          $    +         	                                          � V            	                                          <             	                                          ^ 7   +         	                                          Y >            	                                           ^   +         	                                          � N   +         	                                           f            	                                          ( *            	                                          w             	                                          �    +   	             k                                 �    +   	             k                                 �    +         	                                          |    +   	             B                                              �        )                                 c    +   	                                              �    +   	                                              ( 0           �              q                           +    
        �              q                           , F   
        �              q                           �    +   	             #                                                      @   �           ��         �@�(                        @   �        @  ��           �@�(                         @   �        @  ��           �@�(                         @   �        @  ��           �@�(                         @   �        @  ��           �@�(                         @   �        @  ��           �@�(                         @   �        @  ��           �@�(                         @   �        @  ��           �@�(                         @   �           ��         �A�(   �A�(            ��         �A�(                  @   �           ��         �A�(                                           � n   
         	                                           $   
         	                                          4    
         	                                          O 0            	                                                        	                                          � *   
         	                                           $   
         	                                          8    
         	                                          T 0            	                                          $             	                                          � V   
         	                                          <    
         	                                          ^ 0            	                                          Y >   
         	                                           ^            	                                          � N            	                                           f   
         	                                          (             	                                          w    
         	                                          �                    >                                 �                    >                                 �             	                                          |                                                     �                    )                                 �                    >                                 �                    >                                 c 0                         q                           �    
                      q                           � F   
                      q                           � 7                         q                                                @   �           ��         �@�(                        @   �        @  ��           �@�(                         @   �        @  ��           �@�(                         @   �        @  ��           �@�(                         @   �        @  ��           �@�(                         @   �        @  ��           �@�(                         @   �        @  ��           �@�(                         @   �        @  ��           �@�(                         @   �           ��         �@�(   