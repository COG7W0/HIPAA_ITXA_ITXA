000100******************************************************************        
000200* XX-XX-11 - C DEBARTOLO - AR 114268 - NEW HEADER RECORD LAYOUT  *        
000300*            FOR HIPAA 5010 X12 CONVERSION.                      *        
000400******************************************************************        
000500 01  MEDG-HDR-RECORD.                                                     
000600     05  MEDG-HDR-REC-ID           PIC X(2).                              
000700     05  MEDG-HDR-EDI-PROCESS-DATE PIC X(8).                              
000700     05  MEDG-HDR-CREATE-DATE.                                            
000710         10  MEDG-HDR-CREATE-CC    PIC X(2).                              
000720         10  MEDG-HDR-CREATE-YY    PIC X(2).                              
000730         10  MEDG-HDR-CREATE-MM    PIC X(2).                              
000740         10  MEDG-HDR-CREATE-DD    PIC X(2).                              
000800     05  MEDG-HDR-SENDER-ID        PIC X(16).                             
000900     05  MEDG-HDR-RECEIVER-ID      PIC X(16).                             
001000     05  MEDG-HDR-PART-IND         PIC X(01).                             
001100         88  MEDG-HDR-PARTA        VALUE 'A'.                             
001200         88  MEDG-HDR-PARTB        VALUE 'B'.                             
001700     05  MEDG-HDR-SENDER-STATE     PIC X(02).                             
