      ******************************************************************        
      *    06-14-12 - INFOSYS - AR 122991 - ACH PROJECT                *        
      *                         NEW BICPS RESPONSE 835 FILE LAYOUT     *        
      *    THIS LAYOUT IS AN EXCERPT FROM ACTUAL RESP LAYOUT           *        
      ******************************************************************        
       01 BCP-RESP-RECORD.                                                      
         05 BCP-RESP-KEY.                                                       
            10 BCP-RESP-CLM-KEY              PIC 9(06).                         
            10 BCP-RESP-POLICY-KEY           PIC 9(09).                         
            10 BCP-RESP-NPI-KEY              PIC 9(10).                         
         05 BCP-RESP-INFO.                                                      
            10 BCP-RESP-COMP-ID              PIC X(05).                         
            10 BCP-RESP-BUSINESS-ID          PIC X(10).                         
            10 BCP-RESP-CREATE-DT            PIC X(08).                         
            10 BCP-RESP-RESPONSE-DT          PIC X(08).                         
            10 BCP-RESP-ACC-REJ-IND          PIC X(01).                         
            10 BCP-RESP-CLM-PAID-AMT         PIC 9(09)V99.                      
            10 BCP-RESP-BANK-ABA-NBR         PIC X(12).                         
            10 BCP-RESP-CHK-SAV-IND          PIC X(03).                         
            10 BCP-RESP-BANK-ACCT-NBR        PIC X(35).                         
            10 BCP-RESP-ACH-DT               PIC X(08).                         
            10 BCP-RESP-ACH-TRACE-NO         PIC X(50).                         
            10 BCP-RESP-PROV-NAME            PIC X(60).                         
            10 BCP-RESP-PROV-NPI             PIC X(10).                         
            10 BCP-RESP-CLM-NO               PIC X(30).                         
            10 BCP-RESP-PAT-NAME-LAST        PIC X(60).                         
            10 BCP-RESP-PAT-NAME-FIRST       PIC X(35).                         
            10 BCP-RESP-POLICY-NO            PIC X(80).                         
            10 BCP-RESP-PAT-TRAN-ID          PIC X(06).                         
            10 BCP-RESP-ERR-CODE             PIC X(03).                         
            10 BCP-RESP-ERR-DESC             PIC X(60).                         
            10 BCP-RESP-FILLERS              PIC X(98).                        
