MERCSRC.MAP      $    	                              °  °  ź9      č                                F_Create_TP      F_Create_MessageOut      F_Create_SubCompany   	   F_Create_Action_Fail  
   F_Create_Transactions    F_Create_Action_Success      F_Create_BalancingReport      BICPS_ITXA_BALANCE_REPORT    F_Create_Transaction_Complete       ! ) 1 9      TP      HDR     Doc     HDR    	 Doc    	 HDR #    Data    "    Count       TP_In       Action  	   
 Action  !  	  Message   
  Variable      
  Variable      
 	 Variable        FileCount       SubCompany      Transaction     Transaction    	 Transaction    
 Transaction     Transactions        SubCompanyName      BalancingReport     ITX_Transaction 
    BalancingReportOut       TransactionComplete     Transaction_Complete        	       " & * / 4 9 > C H M R W ] c i o v }   Doc XSD   TP Record Root    Blob Field Data   ITX_Transaction   Transaction XSD   Index Field Data      Messages Group Root   Variable Record Root      FileCount Record Root     SubCompany Record Root    Transaction Group Root    Message Group XMLHubHDR Root      HDR Record routerDocument Data   ) ElemDecl Action Comp SPEEvent Element XSD    U ElemDecl Transactions Comp Details Comp Report Comp Payload Comp SPEEvent Element XSD    e ElemDecl Subcompany Comp SubCompanies Comp Details Comp Report Comp Payload Comp SPEEvent Element XSD    l ElemDecl TradingPartner Comp TradingPartners Comp Details Comp Report Comp Payload Comp SPEEvent Element XSD            # * 1 8 ? H Q ] t    usr.bak   usr.xsd   ../logs/     
 Static.bak    Headers.bak N  %debugpath%/      MapAudit.bak    	  SPEEvent.bak      SPEEvent.xsd      ..\trees\HubHdr.mtt   ..\Trees\SPEEvent.mtt     Transaction_Start.xsd     ..\trees\DataReturn.mtt  ! ..\Trees\ITX_BICEPS_Balancing.mtt    ! ..\trees\ITX_BICEPS_Balancing.mtt    - ..\Trees\CNO_BICEPS_835OB_BalancingReport.mtt    1 -QMN %QMGRGTMEVENTS% -QN ITXA.SPE.EVENTS -HDR -DH    H ..\data\Run_BICPS_ITXA_BALANCE_REPORT_756_3c961679180111_44_zelis.I1.bak     H ..\data\Run_BICPS_ITXA_BALANCE_REPORT_756_3c961679180111_44_zelis.I2.bak     K ..\data\Run_HIX_X12271_Envelope_831_3cdf1672239488_127_hix-framework.I2.bak     
     ! & , 3 : A K U b p      Cancel Comp:Action ="N"     Repair Comp:Action ="N"     ACKSent Comp:Action =NONE       Cancel Comp:Action  ="Y"        Repair Comp:Action  ="Y"        Resubmit Comp:Action ="N"       Trace Elements:Message =NONE  !  version:Decl Prolog:Doc ="1.0"    !  Archive Elements:Message =NONE    !  docType Elements:Message =NONE    "  DateTime Elements:Message =NONE   "  flowname Elements:Message =NONE   "  mqaDocId Elements:Message =NONE   "  mqaJobId Elements:Message =NONE   #  mqaModule Elements:Message =NONE  $  encoding:Decl Prolog:Doc ="UTF-8"     $  standalone:Decl Prolog:Doc ="yes"     $  AllowEmpty Elements:Message =NONE     $  DataFormat Elements:Message =NONE     $  mqaDocType Elements:Message =NONE     $  mqaJobName Elements:Message =NONE     %  mqaCompName Elements:Message =NONE    %  mqaDeptName Elements:Message =NONE    %  mqaModuleId Elements:Message =NONE    &  DecisionCode Elements:Message =NONE   &  mqaTransName Elements:Message =NONE   '  TransactionId Elements:Message =NONE  '  processStatus Elements:Message =NONE  * ! OriginalFileName Elements:Message =NONE   * ! TransactionValue Elements:Message =NONE   * ! currentDocStatus Elements:Message =NONE   + ! TransactionCount Elements:Message =Count  - $ Data Elements:DataSet Record:Message =Data    /  Name Comp:TP =TradingPartnerID Element:TP_In  0 ' ElemDecl Transactions Comp:Transactions =NONE     3 * Payload Comp:ElemDecl SPEEvent Element:Doc =NONE  6 - Variable1 Elements:Destination Record:Message =NONE   6 - Variable2 Elements:Destination Record:Message =NONE   6 - Variable3 Elements:Destination Record:Message =NONE   6 - Variable4 Elements:Destination Record:Message =NONE   6 - Variable5 Elements:Destination Record:Message =NONE   7 ( DataSize Elements:DataSet Record:Message =SIZE(Data)  7 ) Status Comp:ElemDecl SPEEvent Element:Doc
 ="Success"  7 . PayloadType Comp:ElemDecl SPEEvent Element:Doc =NONE  8 . PayloadType Comp:ElemDecl SPEEvent Element:Doc ="xml"     9 0 EventDateTime Comp:ElemDecl SPEEvent Element:Doc =NONE    9 0 ProcessStatus Comp:ElemDecl SPEEvent Element:Doc =NONE    ;  PayloadID Comp:Action ! =itxTranId Element:.:Transaction   ; 2 ElemDecl Action Comp:ElemDecl SPEEvent Element:Doc =NONE  ; 2 OutputFileName Elements:Destination Record:Message =NONE  < / TrackingType Comp:ElemDecl SPEEvent Element:Doc	 ="Report"     >  Name Comp:SubCompanyName ! =SubCompanyID Element:SubCompany    > 0 ProcessStatus Comp:ElemDecl SPEEvent Element:Doc
 ="SUCCESS"   > 5 AdditionalHeaders Elements:Destination Record:Message =NONE   ? / TrackingType Comp:ElemDecl SPEEvent Element:Doc ="Reporting"  @  NumberOfClaims Comp:TP& =NumberOfClaimsProcessed Element:TP_In     @ 7 ConnectionParameter Elements:Destination Record:Message =NONE     @ 7 DriverTrackingReason Comp:ElemDecl SPEEvent Element:Doc =NONE     @ 7 DriverTrackingStatus Comp:ElemDecl SPEEvent Element:Doc =NONE     @ 7 DriverTrackingStepID Comp:ElemDecl SPEEvent Element:Doc =NONE     A  MFTTransactionID Comp:Action! =mqaTransId Element:.:Transaction    A - ServerName Comp:ElemDecl SPEEvent Element:Doc ="ITXA_Launcher"    B  QueueName Comp:Action ( =GTMResubmitQueue Element:.:Transaction    B 5 DriverTrackingType Comp:ElemDecl SPEEvent Element:Doc	 ="Report"   B 8 Message:Messages Group XMLHubHDR:Doc:BalancingReportOut  =NONE    B 9 DriverTrackingSeverity Comp:ElemDecl SPEEvent Element:Doc =NONE   C 9 Message:Messages Group XMLHubHDR:Doc:TransactionComplete  =NONE   D , EventType Comp:ElemDecl SPEEvent Element:Doc ="ITXA_MAP_COMPLETE"     D 9 Category Comp:ElemDecl Transactions Comp [1]:Transactions ="Paid"     D ; DriverTrackingReasonCode Comp:ElemDecl SPEEvent Element:Doc =NONE     D ; DriverTrackingStatusCode Comp:ElemDecl SPEEvent Element:Doc =NONE     E 9 Category Comp:ElemDecl Transactions Comp [3]:Transactions ="Total"    F ! NumberOfFiles Comp:SubCompanyName! =NumberOfFiles Element:SubCompany   F - EventType Comp:ElemDecl SPEEvent Element:Doc  ="ITXA_MAP_COMPLETE"    F 8 NotificationGroupCode Comp:ElemDecl SPEEvent Element:Doc
 ="DEFAULT"   F = DriverTrackingSeverityCode Comp:ElemDecl SPEEvent Element:Doc =NONE   H 9 Category Comp:ElemDecl Transactions Comp [2]:Transactions ="Non Paid"     H ? DriverTrackingAdvancedStatus Comp:ElemDecl SPEEvent Element:Doc =NONE     K + FlowNode Comp:ElemDecl SPEEvent Element:Doc =systemName String Field:HDR  L 5 DriverTrackingType Comp:ElemDecl SPEEvent Element:Doc ="Balancing Report"     L 8 NotificationGroupType Comp:ElemDecl SPEEvent Element:Doc ="ITXA_LAUNCHER"     M , FlowNode Comp:ElemDecl SPEEvent Element:Doc  =systemName String Field:HDR     S # NumberOfClaims Comp:SubCompanyName , =NumberOfClaimsProcessed Element:SubCompany   V 3 DriverTrackingID Comp:ElemDecl SPEEvent Element:Doc =mqaJobId Element:.:Transaction   X  Payload Comp:ActionA =IF(Balanced Element:.:Transaction="Y","Balanced","Not Balanced")     Z  Payload Comp:Action B =IF(Balanced Element:.:Transaction="Y","Balanced","Not Balanced")    \  Doc:BalancingReport D =F_Create_BalancingReport(ITX_Transaction,EITHER(Variable," "),HDR)      \ 2 ParentProcessID Comp:ElemDecl SPEEvent Element:Doc& =parentProcessId Element:.:Transaction     a 7 EventDateTimeString Comp:ElemDecl SPEEvent Element:Doc & =EventDateTimeString Element:Variable     f  Doc:Transaction_Complete I =F_Create_Transaction_Complete(ITX_Transaction,EITHER(Variable," "),HDR)    o 7 Count Comp:ElemDecl Transactions Comp [1]:Transactions 4 =EITHER(TransactionsCount_Paid Element:FileCount,0)   r 7 Count Comp:ElemDecl Transactions Comp [2]:Transactions 7 =EITHER(TransactionsCount_NonPaid Element:FileCount,0)    u  Supplemental_Short Comp:Action R =IF(Balanced Element:.:Transaction="Y","File is Balanced","File is NOT Balanced")     u < Message [1]:Messages Group XMLHubHDR:Doc:BalancingReportOut 5 =F_Create_MessageOut(PACKAGE(Doc:BalancingReport),1)     { = Message [1]:Messages Group XMLHubHDR:Doc:TransactionComplete : =F_Create_MessageOut(PACKAGE(Doc:Transaction_Complete),1)     Count Comp:ElemDecl NumberOfFiles Comp:ElemDecl Summary Comp:ElemDecl Report Comp:ElemDecl Payload Comp:ElemDecl SPEEvent Element:Doc =NONE     ElemDecl Claims Comp:ElemDecl Claims Comp:ElemDecl Details Comp:ElemDecl Report Comp:ElemDecl Payload Comp:ElemDecl SPEEvent Element:Doc =NONE      ElemDecl NumberOfFiles Comp:ElemDecl NumberOfFiles Comp:ElemDecl Details Comp:ElemDecl Report Comp:ElemDecl Payload Comp:ElemDecl SPEEvent Element:Doc =NONE  Ľ  Category Comp:ElemDecl Claims Comp [2]:ElemDecl Claims Comp:ElemDecl Details Comp:ElemDecl Report Comp:ElemDecl Payload Comp:ElemDecl SPEEvent Element:Doc ="Paid"    Ś  Category Comp:ElemDecl Claims Comp [3]:ElemDecl Claims Comp:ElemDecl Details Comp:ElemDecl Report Comp:ElemDecl Payload Comp:ElemDecl SPEEvent Element:Doc ="Total"   ¨ 7 Count Comp:ElemDecl Transactions Comp [3]:Transactions m =Count Comp:ElemDecl Transactions Comp[1]:Transactions+Count Comp:ElemDecl Transactions Comp[2]:Transactions      Š  Category Comp:ElemDecl Claims Comp [1]:ElemDecl Claims Comp:ElemDecl Details Comp:ElemDecl Report Comp:ElemDecl Payload Comp:ElemDecl SPEEvent Element:Doc ="Non Paid"    ­  NumberOfClaims Comp:ElemDecl Input Comp:ElemDecl Summary Comp:ElemDecl Report Comp:ElemDecl Payload Comp:ElemDecl SPEEvent Element:Doc# =TPClaimCount Element:.:Transaction    Ž Ľ Count Comp:ElemDecl NumberOfFiles Comp [1]:ElemDecl NumberOfFiles Comp:ElemDecl Details Comp:ElemDecl Report Comp:ElemDecl Payload Comp:ElemDecl SPEEvent Element:Doc =NONE   Ż j Status Comp:ElemDecl Summary Comp:ElemDecl Report Comp:ElemDecl Payload Comp:ElemDecl SPEEvent Element:DocA =IF(Balanced Element:.:Transaction="Y","Balanced","Not Balanced")  ą & EventDateTimeStringZ Element:Variable  =FROMDATETIME(TODATETIME(dateTimeUTC String Field FlowName:HDR,"{CCYY-MM-DD}T{HH24:MM:SS.3-3TZD}"),"{CCYY-MM-DD}T{HH24:MM:SS.3-3TZD}")     ´ ¨ Category Comp:ElemDecl NumberOfFiles Comp [1]:ElemDecl NumberOfFiles Comp:ElemDecl Details Comp:ElemDecl Report Comp:ElemDecl Payload Comp:ElemDecl SPEEvent Element:Doc ="Files"     ż % EventDateTimeString Element:Variable  =SUBSTITUTE(EventDateTimeStringZ Element:Variable,"Z","+00:00")
//=FROMDATETIME(dateTime DateTime Field:HDR,"{CCYY-MM-DD}T{HH24:MM:SS.3-3+/-ZZ:ZZ}")   Â  Supplemental_Short Comp:Action  =IF(Balanced Element:.:Transaction="Y","File is Balanced with some INVALID claims/Transactions ","File is NOT Balanced with some INVALID claims/Transactions")    Ă  NumberOfFiles Comp:ElemDecl SubCompanies Comp:ElemDecl Summary Comp:ElemDecl Report Comp:ElemDecl Payload Comp:ElemDecl SPEEvent Element:Doc3 =NumberOfFiles Element:FileCount Record:Transaction  Ä  NumberOfFiles Comp:ElemDecl NumberOfFiles Comp:ElemDecl Summary Comp:ElemDecl Report Comp:ElemDecl Payload Comp:ElemDecl SPEEvent Element:Doc3 =NumberOfFiles Element:FileCount Record:Transaction     Ç   NumberOfClaims Comp:ElemDecl Information Comp:ElemDecl Input Comp:ElemDecl Details Comp:ElemDecl Report Comp:ElemDecl Payload Comp:ElemDecl SPEEvent Element:Doc# =TPClaimCount Element:.:Transaction  Ę  ElemDecl TradingPartner Comp:ElemDecl TradingPartners Comp:ElemDecl Details Comp:ElemDecl Report Comp:ElemDecl Payload Comp:ElemDecl SPEEvent Element:Doc- =F_Create_TP(TP Record:TPDetails:Transaction)   Ë  ElemDecl Subcompany Comp:ElemDecl SubCompanies Comp:ElemDecl Details Comp:ElemDecl Report Comp:ElemDecl Payload Comp:ElemDecl SPEEvent Element:Doc5 =F_Create_SubCompany(SubCompany Record:.:Transaction)  Ě  Count Comp:ElemDecl Claims Comp [2]:ElemDecl Claims Comp:ElemDecl Details Comp:ElemDecl Report Comp:ElemDecl Payload Comp:ElemDecl SPEEvent Element:Doc1 =EITHER(ClaimsCount_Paid Element:.:Transaction,0)     Ď  Count Comp:ElemDecl Claims Comp [1]:ElemDecl Claims Comp:ElemDecl Details Comp:ElemDecl Report Comp:ElemDecl Payload Comp:ElemDecl SPEEvent Element:Doc4 =EITHER(ClaimsCount_NonPaid Element:.:Transaction,0)  ä ­ NumberOfFiles Comp:ElemDecl NumberOfFiles Comp [1]:ElemDecl NumberOfFiles Comp:ElemDecl Details Comp:ElemDecl Report Comp:ElemDecl Payload Comp:ElemDecl SPEEvent Element:Doc3 =NumberOfFiles Element:FileCount Record:Transaction     ĺ Ť NumberOfClaims Comp:ElemDecl ComplianceFailures Comp:ElemDecl Processed Comp:ElemDecl Details Comp:ElemDecl Report Comp:ElemDecl Payload Comp:ElemDecl SPEEvent Element:Doc6 =EITHER(ediNonCompliantClaims Element:.:Transaction,0)    ď ¤ NumberOfClaims Comp:ElemDecl Transformed Comp:ElemDecl Processed Comp:ElemDecl Details Comp:ElemDecl Report Comp:ElemDecl Payload Comp:ElemDecl SPEEvent Element:DocG =EITHER(NumberOfClaimsProcessed Element:FileCount Record:Transaction,0)  ó Š NumberOfClaims Comp:ElemDecl PreEditRejected Comp:ElemDecl Processed Comp:ElemDecl Details Comp:ElemDecl Report Comp:ElemDecl Payload Comp:ElemDecl SPEEvent Element:Doc F =EITHER(PreEditRejectedClaims Element:FileCount Record:Transaction,0)   ü  NumberOfClaims Comp:ElemDecl Claims Comp:ElemDecl Summary Comp:ElemDecl Report Comp:ElemDecl Payload Comp:ElemDecl SPEEvent Element:Doc p =ClaimsCount_NonPaid Element:FileCount Record:Transaction+ClaimsCount_Paid Element:FileCount Record:Transaction       NumberOfClaims Comp:ElemDecl SubCompanies Comp:ElemDecl Summary Comp:ElemDecl Report Comp:ElemDecl Payload Comp:ElemDecl SPEEvent Element:Docq =IF(SubCompanyID Element:.:Transaction!="",SUM(NumberOfClaimsProcessed Element:SubCompany Record IN Transaction))   
2 ElemDecl Action Comp:ElemDecl SPEEvent Element:DocÔ =IF(intermediate Element:.:Transaction="N"&(TPClaimCount Element:.:Transaction=NumberOfClaimsProcessed Element:FileCount Record:Transaction),F_Create_Action_Success(Transaction),F_Create_Action_Fail(Transaction))    NumberOfClaims Comp:ElemDecl TradingPartners Comp:ElemDecl Summary Comp:ElemDecl Report Comp:ElemDecl Payload Comp:ElemDecl SPEEvent Element:Docw =IF(TradingPartnerID Element:TP Record:.:Transaction!="",SUM(NumberOfClaimsProcessed Element:TP Record IN Transaction))   Supplemental Comp:Action ý =IF(Balanced Element:.:Transaction="Y","File Balanced with no invalid claims/transactions. All the claims present in the file are processed and sent to Bank","File is NOT Balanced with invalid claims/transactions. Valid Transactions were sent to Bank")    3y ElemDecl Transactions Comp:ElemDecl Details Comp:ElemDecl Report Comp:ElemDecl Payload Comp:ElemDecl SPEEvent Element:Docś =IF(TransactionsCount_NonPaid Element:FileCount Record:Transaction+TransactionsCount_Paid Element:FileCount Record:Transaction >0,F_Create_Transactions(FileCount Record:Transaction))  4 NumberOfClaims Comp:ElemDecl Processed Comp:ElemDecl Summary Comp:ElemDecl Report Comp:ElemDecl Payload Comp:ElemDecl SPEEvent Element:Doc Ľ =ediNonCompliantClaims Element:.:Transaction+PreEditRejectedClaims Element:FileCount Record:Transaction+NumberOfClaimsProcessed Element:FileCount Record:Transaction       NumberOfClaims Comp:ElemDecl Transactions Comp:ElemDecl Summary Comp:ElemDecl Report Comp:ElemDecl Payload Comp:ElemDecl SPEEvent Element:Docý =IF(TransactionsCount_NonPaid Element:FileCount Record:Transaction+TransactionsCount_Paid Element:FileCount Record:Transaction >0,TransactionsCount_NonPaid Element:FileCount Record:Transaction+TransactionsCount_Paid Element:FileCount Record:Transaction)   Ë Count Comp:ElemDecl Claims Comp [3]:ElemDecl Claims Comp:ElemDecl Details Comp:ElemDecl Report Comp:ElemDecl Payload Comp:ElemDecl SPEEvent Element:Doc /=Count Comp:ElemDecl Claims Comp[1]:ElemDecl Claims Comp:ElemDecl Details Comp:ElemDecl Report Comp:ElemDecl Payload Comp:ElemDecl SPEEvent Element:Doc+Count Comp:ElemDecl Claims Comp[2]:ElemDecl Claims Comp:ElemDecl Details Comp:ElemDecl Report Comp:ElemDecl Payload Comp:ElemDecl SPEEvent Element:Doc   Y Supplemental Comp:Action <=IF(EITHER(NumberOfClaimsProcessed Element:FileCount Record:Transaction,0)=0, 
	IF(ediTotalClaims Element:.:Transaction=ediNonCompliantClaims Element:.:Transaction, "File has ALL Non Compliant Claims ",
			IF(ediTotalClaims Element:.:Transaction=PreEditRejectedClaims Element:FileCount Record:Transaction,"File has ALL Pre-Eit Rejected Claims ")),
		IF((ediTotalClaims Element:.:Transaction-NumberOfClaimsProcessed Element:FileCount Record:Transaction)>0,
		"File has some "+TRIMRIGHT(
														IF(EITHER(ediNonCompliantClaims Element:.:Transaction,0) > 0,"Non Compliant Claims/Transactions, ")+
														IF(EITHER(PreEditRejectedClaims Element:FileCount Record:Transaction,0) > 0,"Pre-Edit Error Claims/Transactions, "),", "),
		"All the claims present in the file are processed and sent to Trading Partner"))         " + 4 = G Q [ e o y    Ł Ž š Ä Ď Ú ĺ đ ű (4@LYft ŻžÍÜëú
*:JZk|ŻÁÓĺ÷	-?Qcu­ŔÓćů2FZn­ĂÚň
#<VqŹËę
/U~ŠÔ ,YłáAsĽŘ	?	s	¨	Ý	
S

Î
QŮ!ož#         
         ĚRWëv´              lŽç  # "     !       ÎMAf ń Đ Ű p z R ş Ĺ  ć ü 5H \ 5 )Ż ¤ Ą°żÂK                     Z°                  	 ,  Ű.
­Ú+                 >   Ä$úÝoűřćÁÔŽd G};=-pĎ

	@	Ţ	âZżtŚŮ
T
Š	t	Ş$"0V                >   =Ä$[Ý@ěřćÁÔŽdG [uR         	       # ,  ó.
B+                   3ÔrŐg  2           Ő#d                   ju^              	  
     &!FZ           @  	  
     (+d          	  
 !      žTd                   nĂl^       "      
      ?Td       *      6      )d       :   ,  -  .     <d          5  6 
 7     Űd          :  ;  <     QĹl^           V         	                                          N 9   B         	                                          ^ u   V         	                                          j 9   B               q                                  I   '                                                  5 $   L         	                                           I   '                                                   7   v                                                     B         	                                          # R   -         	                                          p    ;                      q                           : +   B         	                                           R   -         	                                          S 9   B         	                                          D 9   B         	                                          X ^   V         	                                              V         	                                          ? 2   B         	                                              -                      q                          0 $   L         	                                           $   P                                                 d    V                      q                          ~    -                      q                            I   '                                                     ;                      q                               ;                      q                           + $   L                      q                           
 I   '                                                  I 9   B         	                                              V                      q                              -       " 	                                           9   B               q                                 w    ;                      q                           ' @   ;         	                                              '         	                                           	   '         	                                                               @          @  ˙˙          @(                        @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @         @  ˙˙         D(                        @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @          @  ˙˙          @(                        @          @  ˙˙          @(                    ¨ý  @          @  ˙˙         @(                 3     3     3      3           @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @          @  ˙˙          @(                        @          @  ˙˙          @(                    ţ  @          @  ˙˙         @(                 3     3     3      3               @          @  ˙˙          @(                 3     3     3      3      @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @          @  ˙˙          @(                        @          @  ˙˙          @(             3     3     3          i M   q         	                                          6 +   f                      q                            ^   '                                                  T ?   R         	                                              J         	                                              -       " 	                                          o M   q         	                                              \         	                                           %   J         	                                          u U   B         	                                           F   \         	                                                               @          @  ˙˙          @(                        @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @         @  ˙˙         D(                        @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(       	   3   ˘@(                         @           @  ˙˙           ˘@(       	   3                           @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(       	   3                         @           @  ˙˙           ˘@(       	   3                   @           @  ˙˙           ˘@(       	   3  @           @  ˙˙           ˘@(       	   3        @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(          3  3  3            3     3  ˘@(          3            3                           ^ D   R         	                                          O D   R         	                                          c x   }         	                                          
    }         	                                          J =   R         	                                          %    J         	                                          6 0   f         	                                           %   A                                                     }                     s                              -                     s                          )    J         	                                              \         	                                          i R   q         	                                          1 0   f                      q                               J         	                                          T D   R         	                                          -    J         	                                          @    -         	                                          o R   q         	                                              \         	                                           *   J         	                                          u Z   B         	                                           K   \         	                                                               @          @  ˙˙          @(                        @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @         @  ˙˙         D(                        @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(          3                     @           @  ˙˙           ˘@(          3             ˘@(                         @           @  ˙˙           ˘@(          3          @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(          3        3       	          v÷)Ą	q˛

ŮŚA'[´i

y	ń		ý
ä
Y1	aŇË
ŹÝÉĂŠ!
9
=Ů	-a	/uĆ                Ä Ň Gkó!ľ2´	- ĹŢQ
HÁ	B)utHĎI	9rÉ~czĺę	
[EóÜŢĆ4ťeĘÖ4 D|´ë:N?                    Ä Ň Gkó!2´- ĹŢQ
HÁ	B)utHĎI	9rÉ~czĺę	
[üóÜŢĆ4ť~`ňći%¤J`6             IFZ       -      /      éGFZ                   &!FZ                   &!FZ          !  "  #     &!FZ          $  % F '     7FZ       %   9  : / ;     !FZ          G  H E I     sNEZ       ?   [  \ @ ]     ĘMEZ           [                     s                          q >   Q         	                                              I                      q                            
   Q               §                                  L   '                      q                          X    I                      q                           D 7   |                      q                             7   v                                                     -                      q                           /    I         	                                          Ą    3                p     s                          ? 7   |         	                                          ] 
   [         	                                              -         	                                          3 +   |         	                                              I         	                                          b    e         	                                          # +   |         	                                          '    I         	                                          N 
   [         	                                          S %   A                                                     [                     s                          I 7   |         	                                          +    I         	                                              [         	                                          v T   |         	                                              e                p     s                          7    I         	                                          l >   Q         	                                          ;    I         	                                          g    3         	                                          | T   |         	                                              [         	                                           1   I         	                                           \   A         	                                           E   [         	                                                               @           @  ˙˙         @(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @         @  ˙˙         D(                        @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(                         @           @  ˙˙           ˘@(    