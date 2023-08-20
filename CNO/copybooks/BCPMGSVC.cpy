000100******************************************************************        
000200* 10-10-11 - C DEBARTOLO - AR 114268 - NEW SERVICE RECORD LAYOUT *        
000300*            FOR HIPAA 5010 X12 CONVERSION.                      *        
000400******************************************************************        
000500 01  MEDG-SVC-RECORD.                                                     
000600     05  MEDG-SVC-REC-ID           PIC X(02).                             
000610     05  MEDG-SVC-LINE-NBR         PIC 9(06).                             
000700     05  MEDG-SVC-DATE-PAID        PIC X(08).                             
000800     05  MEDG-SVC-DATE-FROM        PIC X(08).                             
000900     05  MEDG-SVC-DATE-TO          PIC X(08).                             
001000     05  MEDG-SVC-SUBMITTED-CHG    PIC 9(07)V99.                          
001100     05  MEDG-SVC-PLACE-OF-SERV    PIC X(02).                             
001200     05  MEDG-SVC-REVENUE-CODE     PIC X(10).                             
001300     05  MEDG-SVC-PROC-QUALIFIER   PIC X(02).                             
001400     05  MEDG-SVC-PROC-CODE        PIC X(05).                             
001500     05  MEDG-SVC-PROC-MOD1        PIC X(02).                             
001510     05  MEDG-SVC-PROC-MOD2        PIC X(02).                             
001520     05  MEDG-SVC-PROC-MOD3        PIC X(02).                             
001530     05  MEDG-SVC-PROC-MOD4        PIC X(02).                             
001600     05  MEDG-SVC-NOT-COVRD-AMT    PIC 9(07)V99.                          
001700     05  MEDG-SVC-FACILITY-NAME    PIC X(25).                             
001800     05  MEDG-SVC-TAXONOMY-CODE    PIC X(30).                             
001900     05  MEDG-SVC-AMOUNT-PAID      PIC 9(07)V99.                          
002400     05  MEDG-SVC-APPROVED-AMT     PIC 9(07)V99.                          
001910     05  MEDG-SVC-COINSURANCE-AMT  PIC 9(07)V99.                          
001920     05  MEDG-SVC-DEDUCTIBLE-AMT   PIC 9(07)V99.                          
002610     05  MEDG-SVC-DIAG-PTR-1       PIC 9(02).                             
002620     05  MEDG-SVC-DIAG-PTR-1       PIC 9(02).                             
002630     05  MEDG-SVC-DIAG-PTR-1       PIC 9(02).                             
002640     05  MEDG-SVC-DIAG-PTR-1       PIC 9(02).                             
003100     05  MEDG-SVC-PRIMARY-DIAG     PIC X(10).                             
003200     05  MEDG-SVC-SECONDARY-DIAG1  PIC X(10).                             
003300     05  MEDG-SVC-SECONDARY-DIAG2  PIC X(10).                             
003400     05  MEDG-SVC-SECONDARY-DIAG3  PIC X(10).                             
002000     05  MEDG-SVC-CAS-OCCURS OCCURS 10 TIMES.                             
009400         10  MEDG-SVC-CAS-GROUP-CD PIC X(02).                             
009500         10  MEDG-SVC-CAS-REASN-CD PIC X(05).                             
009600         10  MEDG-SVC-CAS-AMOUNT   PIC 9(07)V99.                          
003900         10  MEDG-SVC-CAS-QUANTITY PIC 9(15).                             
