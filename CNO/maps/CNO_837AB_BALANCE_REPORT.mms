MERCSRC.MAP   
   $                       
         š   ų  \  `  Ü8                                       F_Create_usrT 	   F_Create_Action_Fail     F_Create_RFH2_HeaderT    F_Create_RFH2_HeaderT1       F_Create_Action_Success       CNO_837AB_BALANCE_REPORT     F_Create_BalancingReport     F_Create_Transaction_Complete       # + 3 #    usr     RFH2         RFH2    !    size        Action  	   
 Action  
  	  Headers   	  Headers   	  Headers   	  Headers   	 	 Headers   
  Variable      
  Variable      
 	 Variable        MQMessage      	 MQMessage       Transaction     Transaction    	 Transaction    
 Transaction     NameValueData       NameValueData   "    NameValueData        BalancingReport     ITX_Transaction     Transaction_Complete              # ' + 0 5 : ? D I N S X ^ d j p v   MQMessage XSD     MQMessage Root    ITX_Transaction   Transaction XSD   Headers MQSeries      RFH2 Header Root      Size Field MQSeries   Variable Record XSD   Transaction Group Root    usr NameValuePair Root    NameValueData Field Root      NameValueData Field MQSeries     ) ElemDecl Action Comp SPEEvent Element XSD      
      & , 3 : B K   usr.bak   usr.xsd   ../logs/     
 Static.bak    Headers.bak /  %debugpath%/      MapAudit.bak    	  SPEEvent.bak      SPEEvent.xsd      ..\Trees\SPEEvent.mtt     Transaction_Start.xsd     ..\Trees\CNO_MQInput.mtt      ..\Trees\CNO_MQOutput.mtt      ..\Trees\ITX_837AB_Balancing.mtt     # ..\Trees\ITX_Transaction_Events.mtt  & ..\Trees\CNO_Claim_BalancingReport.mtt   ) ..\Trees\MQRFH2_Capture_InsertMongoDB.mtt    1 -QMN %QMGRGTMEVENTS% -QN ITXA.SPE.EVENTS -HDR -DH    f -QMN %QMGR837% %QMIP%  -QN CNO.ITXA.BALANCEREPORT.837AB -HDR -DH -EQN CNO.ITXA.BALANCEREPORT.837AB.BKT      
     ! & - 4 < D N X c o }    Cancel Comp:Action ="N"     Repair Comp:Action ="N"     ACKSent Comp:Action =NONE       Cancel Comp:Action  ="Y"        Repair Comp:Action  ="Y"        Resubmit Comp:Action ="N"       jms NameValuePair:RFH2 =NONE    mcd NameValuePair:RFH2 =NONE     RFH2 Header:MQMessage  =NONE      "  RFH2_Out Header:Headers  =NONE    *  Flags Field:RFH2 =Flags Field:.:Headers   ,  Format Field:RFH2 =Format Field:.:Headers     - " version:Decl Prolog:Doc:MQMessage  ="1.0"     .  StrucId Field:RFH2 =StrucId Field:.:Headers   .  Version Field:RFH2 =Version Field:.:Headers   0  Encoding Field:RFH2 =Encoding Field:.:Headers     0 # encoding:Decl Prolog:Doc:MQMessage 	 ="UTF-8"      0 % standalone:Decl Prolog:Doc:MQMessage  ="yes"      ;  PayloadID Comp:Action ! =itxTranId Element:.:Transaction   <  CodedCharSetID Field:RFH2 =CodedCharSetID Field:.:Headers     <  NameValueCCSID Field:RFH2 =NameValueCCSID Field:.:Headers     <  NameValueLength Field:usr =size+  ( 4 - MOD( size , 4)  )     = 4 Payload Comp:ElemDecl SPEEvent Element:Doc:MQMessage =NONE    = 6 Report MQLONG Field:MessageDescriptor2 Header:Headers  =0     > 6 Expiry MQLONG Field:MessageDescriptor2 Header:Headers  =-1    > 7 MsgType MQLONG Field:MessageDescriptor2 Header:Headers  =8    > 7 Version MQLONG Field:MessageDescriptor2 Header:Headers  =2    ?  RFH27 =F_Create_RFH2_HeaderT1(Headers,PACKAGE(NameValueData))  ? 5 MsgId MQBYTE Field:MessageDescriptor2 Header:Headers  =NONE   ? 8 Feedback MQLONG Field:MessageDescriptor2 Header:Headers  =0   ? 8 Priority MQLONG Field:MessageDescriptor2 Header:Headers  =0   @ 6 Offset MQLONG Field:MessageDescriptor2 Header:Headers  =NONE      A  MFTTransactionID Comp:Action! =mqaTransId Element:.:Transaction    A 7 GroupId MQBYTE Field:MessageDescriptor2 Header:Headers  =NONE     A 7 PutDate MQCHAR Field:MessageDescriptor2 Header:Headers  =NONE     A 7 PutTime MQCHAR Field:MessageDescriptor2 Header:Headers  =NONE     A 8 Encoding MQLONG Field:MessageDescriptor2 Header:Headers  =546     B 8 CorrelId MQBYTE Field:MessageDescriptor2 Header:Headers  =NONE    B 8 MsgFlags MQLONG Field:MessageDescriptor2 Header:Headers  =NONE    B 8 ReplyToQ MQCHAR Field:MessageDescriptor2 Header:Headers  =NONE    B ; Persistence MQLONG Field:MessageDescriptor2 Header:Headers  =1    C 4 Status Comp:ElemDecl SPEEvent Element:Doc:MQMessage  ="Success"   C 7 StrucId MQCHAR Field:MessageDescriptor2 Header:Headers  ="MD  "   C 9 PayloadType Comp:ElemDecl SPEEvent Element:Doc:MQMessage  =NONE   C < BackoutCount MQLONG Field:MessageDescriptor2 Header:Headers  =0   D 9 PayloadType Comp:ElemDecl SPEEvent Element:Doc:MQMessage  ="xml"      E  QueueName Comp:Action, =cno_GTM_ResubmitQueue Element:.:Transaction    E ; EventDateTime Comp:ElemDecl SPEEvent Element:Doc:MQMessage  =NONE     E ; ProcessStatus Comp:ElemDecl SPEEvent Element:Doc:MQMessage  =NONE     E ; PutApplName MQCHAR Field:MessageDescriptor2 Header:Headers  =NONE     E ; PutApplType MQLONG Field:MessageDescriptor2 Header:Headers  =NONE     E ; ReplyToQMgr MQCHAR Field:MessageDescriptor2 Header:Headers  =NONE     F 6 Format MQCHAR Field:MessageDescriptor2 Header:Headers  ="MQSTR   "    F < MsgSeqNumber MQLONG Field:MessageDescriptor2 Header:Headers  =NONE    G = ElemDecl Action Comp:ElemDecl SPEEvent Element:Doc:MQMessage  =NONE   H 8 Format MQCHAR Field:MessageDescriptor2 Header:MQMessage  ="MQSTR   "      H : TrackingType Comp:ElemDecl SPEEvent Element:Doc:MQMessage 
 ="Report"      H > ApplOriginData MQCHAR Field:MessageDescriptor2 Header:Headers  =NONE      H > CodedCharSetId MQLONG Field:MessageDescriptor2 Header:Headers  =1208      H > OriginalLength MQLONG Field:MessageDescriptor2 Header:Headers  =NONE      H > UserIdentifier MQCHAR Field:MessageDescriptor2 Header:Headers  =NONE      I ? AccountingToken MQBYTE Field:MessageDescriptor2 Header:Headers  =NONE     J ; ProcessStatus Comp:ElemDecl SPEEvent Element:Doc:MQMessage  ="SUCCESS"    J @ ApplIdentityData MQCHAR Field:MessageDescriptor2 Header:Headers  =NONE    K : TrackingType Comp:ElemDecl SPEEvent Element:Doc:MQMessage  ="Reporting"   L  usr NameValuePair:RFH22 =F_Create_usrT( SIZE(NameValueData),NameValueData)     L B DriverTrackingReason Comp:ElemDecl SPEEvent Element:Doc:MQMessage  =NONE      L B DriverTrackingStatus Comp:ElemDecl SPEEvent Element:Doc:MQMessage  =NONE      L B DriverTrackingStepID Comp:ElemDecl SPEEvent Element:Doc:MQMessage  =NONE      M 8 ServerName Comp:ElemDecl SPEEvent Element:Doc:MQMessage  ="ITXA_Launcher"     N @ DriverTrackingType Comp:ElemDecl SPEEvent Element:Doc:MQMessage 
 ="Report"    N D DriverTrackingSeverity Comp:ElemDecl SPEEvent Element:Doc:MQMessage  =NONE    P 7 EventType Comp:ElemDecl SPEEvent Element:Doc:MQMessage  ="ITXA_MAP_COMPLETE"      P F DriverTrackingReasonCode Comp:ElemDecl SPEEvent Element:Doc:MQMessage  =NONE      P F DriverTrackingStatusCode Comp:ElemDecl SPEEvent Element:Doc:MQMessage  =NONE      R C NotificationGroupCode Comp:ElemDecl SPEEvent Element:Doc:MQMessage  ="DEFAULT"    R H DriverTrackingSeverityCode Comp:ElemDecl SPEEvent Element:Doc:MQMessage  =NONE    T J DriverTrackingAdvancedStatus Comp:ElemDecl SPEEvent Element:Doc:MQMessage  =NONE      V 6 FlowNode Comp:ElemDecl SPEEvent Element:Doc:MQMessage  ="CNO_837AB_BALANCE_REPORT"    X  Payload Comp:ActionA =IF(Balanced Element:.:Transaction="Y","Balanced","Not Balanced")     X  NameValueData Field:usr= =FILLRIGHT(NameValueData, " ",  size+( 4 -  MOD(size , 4 ) ))     X @ DriverTrackingType Comp:ElemDecl SPEEvent Element:Doc:MQMessage  ="Balancing Report"      X C NotificationGroupType Comp:ElemDecl SPEEvent Element:Doc:MQMessage  ="ITXA_LAUNCHER"      Y 7 MsgId MQBYTE Field:MessageDescriptor2 Header:MQMessage  =MsgId MQBYTE Field:.:Headers     Z  Payload Comp:Action B =IF(Balanced Element:.:Transaction="Y","Balanced","Not Balanced")    [  StrucLength Field:RFH2A =40 + SIZE(NameValueData)+ ( 4 -  MOD(SIZE(NameValueData) , 4 ) )  [ 8 Expiry MQLONG Field:MessageDescriptor2 Header:MQMessage  =Expiry MQLONG Field:.:Headers   [ 8 Offset MQLONG Field:MessageDescriptor2 Header:MQMessage  =Offset MQLONG Field:.:Headers   [ 8 Report MQLONG Field:MessageDescriptor2 Header:MQMessage  =Report MQLONG Field:.:Headers   ] 9 GroupId MQBYTE Field:MessageDescriptor2 Header:MQMessage   =GroupId MQBYTE Field:.:Headers     ] 9 MsgType MQLONG Field:MessageDescriptor2 Header:MQMessage   =MsgType MQLONG Field:.:Headers     ] 9 PutDate MQCHAR Field:MessageDescriptor2 Header:MQMessage   =PutDate MQCHAR Field:.:Headers     ] 9 PutTime MQCHAR Field:MessageDescriptor2 Header:MQMessage   =PutTime MQCHAR Field:.:Headers     ] 9 StrucId MQCHAR Field:MessageDescriptor2 Header:MQMessage   =StrucId MQCHAR Field:.:Headers     ] 9 Version MQLONG Field:MessageDescriptor2 Header:MQMessage   =Version MQLONG Field:.:Headers     _ : CorrelId MQBYTE Field:MessageDescriptor2 Header:MQMessage ! =CorrelId MQBYTE Field:.:Headers   _ : Encoding MQLONG Field:MessageDescriptor2 Header:MQMessage ! =Encoding MQLONG Field:.:Headers   _ : Feedback MQLONG Field:MessageDescriptor2 Header:MQMessage ! =Feedback MQLONG Field:.:Headers   _ : MsgFlags MQLONG Field:MessageDescriptor2 Header:MQMessage ! =MsgFlags MQLONG Field:.:Headers   _ : Priority MQLONG Field:MessageDescriptor2 Header:MQMessage ! =Priority MQLONG Field:.:Headers   _ : ReplyToQ MQCHAR Field:MessageDescriptor2 Header:MQMessage ! =ReplyToQ MQCHAR Field:.:Headers   b > DriverTrackingID Comp:ElemDecl SPEEvent Element:Doc:MQMessage   =mqaJobId Element:.:Transaction    e = Persistence MQLONG Field:MessageDescriptor2 Header:MQMessage $ =Persistence MQLONG Field:.:Headers     e = PutApplName MQCHAR Field:MessageDescriptor2 Header:MQMessage $ =PutApplName MQCHAR Field:.:Headers     e = PutApplType MQLONG Field:MessageDescriptor2 Header:MQMessage $ =PutApplType MQLONG Field:.:Headers     e = ReplyToQMgr MQCHAR Field:MessageDescriptor2 Header:MQMessage $ =ReplyToQMgr MQCHAR Field:.:Headers     g > BackoutCount MQLONG Field:MessageDescriptor2 Header:MQMessage % =BackoutCount MQLONG Field:.:Headers   g > MsgSeqNumber MQLONG Field:MessageDescriptor2 Header:MQMessage % =MsgSeqNumber MQLONG Field:.:Headers   h = ParentProcessID Comp:ElemDecl SPEEvent Element:Doc:MQMessage ' =parentProcessId Element:.:Transaction      k @ ApplOriginData MQCHAR Field:MessageDescriptor2 Header:MQMessage ' =ApplOriginData MQCHAR Field:.:Headers   k @ CodedCharSetId MQLONG Field:MessageDescriptor2 Header:MQMessage ' =CodedCharSetId MQLONG Field:.:Headers   k @ OriginalLength MQLONG Field:MessageDescriptor2 Header:MQMessage ' =OriginalLength MQLONG Field:.:Headers   k @ UserIdentifier MQCHAR Field:MessageDescriptor2 Header:MQMessage ' =UserIdentifier MQCHAR Field:.:Headers   m A AccountingToken MQBYTE Field:MessageDescriptor2 Header:MQMessage ( =AccountingToken MQBYTE Field:.:Headers     o B ApplIdentityData MQCHAR Field:MessageDescriptor2 Header:MQMessage ) =ApplIdentityData MQCHAR Field:.:Headers   u  Supplemental_Short Comp:Action R =IF(Balanced Element:.:Transaction="Y","File is Balanced","File is NOT Balanced")     x  MQMessage:BalancingReport Z =F_Create_BalancingReport(Transaction Group:ITX_Transaction,Headers,EITHER(Variable," "))        EventDateTime Field:Variable ~ =RUN ( "CNO_GETDTM" ,ECHOIN ( 1 , FROMDATETIME(SystemDateTime Element:.:ITX_Transaction,"{CCYYMMDD}T{HH24MMSS3-3}")) +"-OE2")   »  MQMessage:Transaction_Complete  =IF(generateCompletedEvent Element:.:ITX_Transaction="Y",F_Create_Transaction_Complete(Transaction Group:ITX_Transaction,Headers,EITHER(Variable," ")))   »  NumberOfClaims Comp:ElemDecl Input Comp:ElemDecl Summary Comp:ElemDecl Report Comp:ElemDecl Payload Comp:ElemDecl SPEEvent Element:Doc:MQMessage & =ediTotalClaims Element:.:Transaction   æ A EventDateTimeString Comp:ElemDecl SPEEvent Element:Doc:MQMessage z =EventDateTime Field:Variable//FROMDATETIME(SystemDateTime Element:.:Transaction,"{CCYY-MM-DD}T{HH24:MM:SS.3-3+/-ZZ:ZZ}")   Ā  Supplemental_Short Comp:Action  =IF(Balanced Element:.:Transaction="Y","File is Balanced with some INVALID claims/Transactions ","File is NOT Balanced with some INVALID claims/Transactions")    Õ « NumberOfClaims Comp:ElemDecl Information Comp:ElemDecl Input Comp:ElemDecl Details Comp:ElemDecl Report Comp:ElemDecl Payload Comp:ElemDecl SPEEvent Element:Doc:MQMessage & =ediTotalClaims Element:.:Transaction     Ü ­ NumberOfClaims Comp:ElemDecl RACClaims Comp:ElemDecl Processed Comp:ElemDecl Details Comp:ElemDecl Report Comp:ElemDecl Payload Comp:ElemDecl SPEEvent Element:Doc:MQMessage + =EITHER(RACClaims Element:.:Transaction,0)      ą Æ NumberOfClaims Comp:ElemDecl PaperClaims Comp:ElemDecl Processed Comp:ElemDecl Details Comp:ElemDecl Report Comp:ElemDecl Payload Comp:ElemDecl SPEEvent Element:Doc:MQMessage - =EITHER(PaperClaims Element:.:Transaction,0)      ī ¶ NumberOfClaims Comp:ElemDecl CCNDuplicateClaims Comp:ElemDecl Processed Comp:ElemDecl Details Comp:ElemDecl Report Comp:ElemDecl Payload Comp:ElemDecl SPEEvent Element:Doc:MQMessage 4 =EITHER(CCNDuplicateClaims Element:.:Transaction,0)    ń ¶ NumberOfClaims Comp:ElemDecl ComplianceFailures Comp:ElemDecl Processed Comp:ElemDecl Details Comp:ElemDecl Report Comp:ElemDecl Payload Comp:ElemDecl SPEEvent Element:Doc:MQMessage 7 =EITHER(ediNonCompliantClaims Element:.:Transaction,0)     ņ µ NumberOfClaims Comp:ElemDecl TransformedClaims Comp:ElemDecl Processed Comp:ElemDecl Details Comp:ElemDecl Report Comp:ElemDecl Payload Comp:ElemDecl SPEEvent Element:Doc:MQMessage 9 =EITHER(NumberOfClaimsProcessed Element:.:Transaction,0)    ō ¹ NumberOfClaims Comp:ElemDecl PreEditRejectedClaims Comp:ElemDecl Processed Comp:ElemDecl Details Comp:ElemDecl Report Comp:ElemDecl Payload Comp:ElemDecl SPEEvent Element:Doc:MQMessage 7 =EITHER(PreEditRejectedClaims Element:.:Transaction,0)      	= ElemDecl Action Comp:ElemDecl SPEEvent Element:Doc:MQMessage Č =IF(intermediate Element:.:Transaction="N"&(ediTotalClaims Element:.:Transaction=NumberOfClaimsProcessed Element:.:Transaction),F_Create_Action_Success(Transaction),F_Create_Action_Fail(Transaction))      Supplemental Comp:Action ū =IF(Balanced Element:.:Transaction="Y","File Balanced with no invalid claims/transactions. All the claims present in the file are processed and sent to BICEPS","File is NOT Balanced with invalid claims/transactions. Valid claims were sent to BICEPS")      0u Status Comp:ElemDecl Summary Comp:ElemDecl Report Comp:ElemDecl Payload Comp:ElemDecl SPEEvent Element:Doc:MQMessage · =IF(NumberOfClaims Comp:ElemDecl Input Comp:ElemDecl Summary Comp:.:MQMessage=NumberOfClaims Comp:ElemDecl Processed Comp:ElemDecl Summary Comp:.:MQMessage,"Balanced","Not Balanced")       NumberOfClaims Comp:ElemDecl Processed Comp:ElemDecl Summary Comp:ElemDecl Report Comp:ElemDecl Payload Comp:ElemDecl SPEEvent Element:Doc:MQMessage ņ =ediNonCompliantClaims Element:.:Transaction+CCNDuplicateClaims Element:.:Transaction+PreEditRejectedClaims Element:.:Transaction+PaperClaims Element:.:Transaction+RACClaims Element:.:Transaction+NumberOfClaimsProcessed Element:.:Transaction   ļ Supplemental Comp:Action Ņ=IF(EITHER(NumberOfClaimsProcessed Element:.:Transaction,0)=0,
	IF(ediTotalClaims Element:.:Transaction=ediNonCompliantClaims Element:.:Transaction, "File has ALL Non Compliant Claims ",
		IF(ediTotalClaims Element:.:Transaction=CCNDuplicateClaims Element:.:Transaction,"File has ALL Duplicate Claims ",
			IF(ediTotalClaims Element:.:Transaction=PreEditRejectedClaims Element:.:Transaction,"File has ALL Pre-Eit Rejected Claims ",
				IF(ediTotalClaims Element:.:Transaction=PaperClaims Element:.:Transaction,"File has ALL Paper Claims ",
					IF(ediTotalClaims Element:.:Transaction=RACClaims Element:.:Transaction,"File has ALL RAC Claims "))))),
		IF((ediTotalClaims Element:.:Transaction-NumberOfClaimsProcessed Element:.:Transaction)>0,
		"File has some "+TRIMRIGHT(
														IF(EITHER(ediNonCompliantClaims Element:.:Transaction,0) > 0,"Non Compliant Claims, ")+
														IF(EITHER(CCNDuplicateClaims Element:.:Transaction,0) > 0,"CCN Duplicate Claims, ")+
														IF(EITHER(PreEditRejectedClaims Element:.:Transaction+PaperClaims Element:.:Transaction+RACClaims Element:.:Transaction,0) > 0,"Pre-Edit Error Claims, "),", "),
		"All the claims present in the file are processed and sent to BICEPS"))       " + 4 = F P Z f s    Ø ¶ Ä Ō å ö ):K\m~ ²ÄÖčś0BTfxÆĀÕčū!4GZnŖ¾Ņęś"7Lav µĖį÷#:Qi±Éįł)AZs„¾×š	";Tm¢½Ųó)Ea}µŅļ	.	W		·	č	
Q

Ä
?}¼ Hś        
    X		gL;*ū"Cn1æÓūüé×éÅ5”«Q /	                   ]                       Õ g [ ę ā#> 5   ! "     #       ÷ j                  	 ,  R°³šÅ                  t © · wĆn*¶UG ¦æ*[ś
ńb[<ō²ŲUŁ¶Ó¾£tFB#~bMā8Ģ”$;ēHø		
IÅ
~
R
@ų                t © · wĆn*o¶UG ¦æ*[ś
ńb[<ō²ŲUŁ¶Ó¾£tFB#~ybMā8Ģ”$;Öø	½ų             	       # ,  Ź°³é	ūÅ      $     !      §¬^              /      éGFZ                   &!FZ                   &!FZ                   &!FZ            '  (         ¶Z             
      S+óZ       ,      B      5­^       4   /  0 9 1     š.­^          @  A 
 B     G+óZ       k    Y                p     s                          O -   E         	                                           L   d                      q                           q    E               ~     s                           1 '   Y         	                                              =         	                                           -   Y         	                                            7   v                                                 w    '                p     s                           L   '         	                                              =                      q                            3   p         	                                           L   '         	                                          T -   E         	                                          E -   E         	                                              =         	                                          ;    Y         	                                           !   p         	                                              =         	                                              O         	                                           %   A                                                 6 '   Y         	                                           :   E         	                                               =         	                                              O         	                                          Y ;   d         	                                          , '   Y                      q                           $    =         	                                          J -   E         	                                          (    =         	                                          @    '         	                                          _ ;   d         	                                              O         	                                           !   =         	                                          e C   5         	                                           4   O         	                                                               @          @  ’’          T(                        @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @         @  ’’         D(                        @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(          3           ¢@(                         @           @  ’’           ¢@(          3          @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(          3          @  ’’           ¢@(                         @           @  ’’           ¢@(          3                   @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(          3  3  ģ4Ld|¬ÄÜō$<Tl“Ķę’1Jc|®Ēął	+	D	]	v		Ø	Į	Ś	ō	
(
B
\
v

Ŗ
Ä
Ž
ų
.IdµŠģ$@\x°Ģč =Zw±Šļ;kĖü.eŲSŠ\Ŗ         
     blšl9[JÜg°c½-QT@A.÷	ČåzĮ?šd Z Ų x]Ńy<            Ū		ĻŠT­Īµõ	Ā	]
C
w
} 	5}
¾ēł
Čß
A>Å
«
=UķõeK%)
ę [               }                     ” ® õ z n Å|G >   ! "     #       ķ                  	 ,  ÕõÓ²5                   ¼ Ź ś
ŃhåuP įśmdŻ^	E	Ķ 	/M,	©	!eJÆ±2¶%w	éā»¦dN9z§,Ģ«/]ŁfT             ¼ Ź ś
Ń“åu$P įśmdŻ^	E	Ķ 	/M,	©	!eJÆ±2¶%w	é«»¦dN9z§Ģ(Ń         	       # ,  õÓż5      $     (      C ·Z       4      /      éGFZ                   &!FZ               !     &!FZ          $  %  &     &!FZ            '  (         ¶Z          '  ( 
 )     mn_Z       ,   ,  - @ .     Q ·Z       =   >  ? 7 @     Z ·Z          N  O 
 P     ņ7jZ       }    Y                |     s                          a :   E         	                                           Y   d                      q                               E                                                > -   Y         	                                              =         	                                           -   Y         	                                            7   v                                                     '                |     s                           d   '         	                                              =                      q                           9 3   p         	                                           d   '         	                                          f :   E         	                                          W :   E         	                                              =         	                                          M    Y         	                                            !   p         	                                          $    =         	                                          H    O         	                                           %   A                                                 C -   Y         	                                           :   E         	                                          (    =         	                                              O         	                                          k H   p         	                                          4 -   Y                      q                           ,    =         	                                          \ :   E         	                                          0    =         	                                          R    '         	                                          q H   p         	                                              O         	                                           '   =         	                                          w P   5         	                                           A   O         	                                                               @           @  ’’          @(                        @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @         @  ’’         D(                        @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(          3                      @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(          3               @           @  ’’           ¢@(                         @           @  ’’           ¢@(          3            @  ’’           ¢@(                         @           @  ’’           ¢@(                         @         @  ’’         D(                        @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(               @           @  ’’           ¢@(    status>Create Balance Report</status>",
"<status>X12 837 Transform</status>","<status>Create Balance Report</status>")      \t Status Comp:ElemDecl Summary Comp:ElemDecl Report Comp:ElemDecl Payload Comp:ElemDecl SPEEvent Element:Doc:MQMessageä=IF(NumberOfClaims Comp:ElemDecl Input Comp:ElemDecl Summary Comp:.:MQMessage=SUM(NumberOfClaims Comp:ElemDecl Processed Comp:ElemDecl Summary Comp:.:MQMessage+PaperClaimsCount Comp:.:ElemDecl Summary Comp:.:MQMessage+RACClaimsCount Comp:.:ElemDecl Summary Comp:.:MQMessage+ComplianceFailures Comp:.:ElemDecl Summary Comp:.:MQMessage+CCNDuplicateClaims Comp:.:ElemDecl Summary Comp:.:MQMessage+PreEditRejectedClaims Comp:.:ElemDecl Summary Comp:.:MQMessage),"Balanced","Not Balanced")         # , 6 @ J T ^ h t    Ø µ Ć Ń ß ķ ü ,=N_p£“ÅÖēų	+<M^o„·ÉŪķ’#5GYk}”³Å×éū1DWj}£¶ÉÜļ(;Nat°ÄŲģ (<Pdx “ČŻņ1F[pÆÅŪń3I_u£ŗŃč 		0	H	`	x		Ø	Ą	Ų	š	
 
8
P
h


±
Ź
ć
ü
.G`y«ÄŻö(AZs„¾Ųņ&@ZtØĀÜö,Gb}³Īé <Xt¬Čä 8Tq«Čå$De©Ģš:_«Ņł!JsÅīBnĶ’3hÕC{³ Mź9Ū>         
   UuŲĘqµ,Ź±=
$H·Ł=y¤¦øOp6ÅK             æ÷2”	q²

Ł¦A'[i

y	ń		ż
ä
Y1	aŅĖ
¬ŻÉĆ©!
9
=Ł	-a	/uī ¬Ę               ł                     © ¶ u i -©	É$    ! "     #       >é                      ĪA 	  7  ­źč×¤N<_¢ Z~)QšŻī ķÜblU  _ "Oą Ŗ\°ż fńÜ÷Ķ;śXoCÓĘ¬`ļKtE     	          v÷)”	q²

Ł¦A'[“i

y	ń		ż
ä
Y1	aŅĖ
¬ŻÉĆ©!
9
=Ł	-a	/uĘ                Ä Ņ Gkó!µ2“	- ÅŽQ
HĮ	B)utHĻI	9rÉ~czåź	
[EóÜŽĘ4»eŹÖ4 D|“ė:N?                    Ä Ņ Gkó!2“- ÅŽQ
HĮ	B)utHĻI	9rÉ~czåź	
[üóÜŽĘ4»~`ņęi%¤J`6             IFZ       -      /      éGFZ                   &!FZ                   &!FZ          !  "  #     &!FZ          $  % F '     7FZ       %   9  : / ;     !FZ          G  H E I     sNEZ       ?   [  \ @ ]     ŹMEZ           [                     s                          q >   Q         	                                              I                      q                            
   Q               §                                  L   '                      q                          X    I                      q                           D 7   |                      q                             7   v                                                     -                      q                           /    I         	                                          ”    3                p     s                          ? 7   |         	                                          ] 
   [         	                                              -         	                                          3 +   |         	                                              I         	                                          b    e         	                                          # +   |         	                                          '    I         	                                          N 
   [         	                                          S %   A                                                     [                     s                          I 7   |         	                                          +    I         	                                              [         	                                          v T   |         	                                              e                p     s                          7    I         	                                          l >   Q         	                                          ;    I         	                                          g    3         	                                          | T   |         	                                              [         	                                           1   I         	                                           \   A         	                                           E   [         	                                                               @           @  ’’         @(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @         @  ’’         D(                        @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(                         @           @  ’’           ¢@(    