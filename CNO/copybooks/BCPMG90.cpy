000100******************************************************************        
000200* 10-10-11 - C DEBARTOLO - AR 114268 - NEW SERVICE '90' TRAILER  *        
000300*            RECORD LAYOUT FOR THE HIPAA 5010 X12 CONVERSION     *        
000400******************************************************************        
000500 01  MEDG-90-RECORD.                                                      
000600     05  MEDG-90-REC-ID            PIC X(02).                             
000700     05  MEDG-90-TOT-SERV-LINES    PIC 9(05).                             
000800     05  MEDG-90-TOT-SUBMITTED     PIC 9(16)V99.                          
000900     05  MEDG-90-TOT-COINS         PIC 9(16)V99.                          
001000     05  MEDG-90-TOT-PAID          PIC 9(16)V99.                          
001100     05  MEDG-90-TOT-DEDUCT        PIC 9(16)V99.                          
001300     05  MEDG-90-TOT-APPROVED      PIC 9(16)V99.                          
001300     05  MEDG-90-TOT-APPLIED       PIC 9(16)V99.                          
