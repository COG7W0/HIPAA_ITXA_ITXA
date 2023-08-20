000100******************************************************************        
000200* 10-10-11 - C DEBARTOLO - AR 114268 - NEW CLM60 RECORD LAYOUT   *        
000300*            FOR HIPAA 5010 X12 CONVERSION.                      *        
000400******************************************************************        
000500 01  MEDG-CLM60-RECORD.                                                   
000600     05  MEDG-CLM60-REC-ID         PIC X(02).                             
000700     05  MEDG-CLM60-LINE-NBR       PIC 9(06).                             
000800     05  MEDG-CLM60-UNITS-OF-SERV  PIC 9(05)V999.                         
000900     05  MEDG-CLM60-NATL-DRUG-CD   PIC X(10).                             
001000     05  MEDG-CLM60-LINE-CNTL-NO   PIC X(30).                             
