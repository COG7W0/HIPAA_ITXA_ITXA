000100******************************************************************        
000200* 10-10-11 - C DEBARTOLO - AR 114268 - NEW CLM50 RECORD LAYOUT   *        
000300*            FOR HIPAA 5010 X12 CONVERSION.                      *        
000400******************************************************************        
000500 01  MEDG-CLM50-RECORD.                                                   
000600     05  MEDG-CLM50-REC-ID         PIC X(02).                             
000700     05  MEDG-CLM50-SUBSCR-LAST    PIC X(33).                             
000800     05  MEDG-CLM50-SUBSCR-FIRST   PIC X(12).                             
000900     05  MEDG-CLM50-SUBSCR-MID     PIC X(01).                             
001000     05  MEDG-CLM50-SUBSCR-SSN     PIC X(09).                             
001100     05  MEDG-CLM50-PATIENT-REL    PIC X(02).                             
001200     05  MEDG-CLM50-PATIENT-SEX    PIC X(01).                             
001300     05  MEDG-CLM50-ADMIT-DATE     PIC X(08).                             
001400     05  MEDG-CLM50-ADMIT-HOUR     PIC X(04).                             
001500     05  MEDG-CLM50-ADMIT-TYPE     PIC X(01).                             
001600     05  MEDG-CLM50-ADMIT-SOURCE   PIC X(01).                             
001900     05  MEDG-CLM50-DISCHG-DATE    PIC X(08).                             
002000     05  MEDG-CLM50-DISCHG-HOUR    PIC X(04).                             
002100     05  MEDG-CLM50-CONTRACT-CODE  PIC X(02).                             
002200     05  MEDG-CLM50-PRIM-PROC-CD   PIC X(10).                             
002300     05  MEDG-CLM50-OTHR-PROC-CD1  PIC X(10).                             
002310     05  MEDG-CLM50-OTHR-PROC-CD2  PIC X(10).                             
002320     05  MEDG-CLM50-OTHR-PROC-CD3  PIC X(10).                             
002330     05  MEDG-CLM50-OTHR-PROC-CD4  PIC X(10).                             
002340     05  MEDG-CLM50-OTHR-PROC-CD5  PIC X(10).                             
002350     05  MEDG-CLM50-OTHR-PROC-CD6  PIC X(10).                             
002400     05  MEDG-CLM50-PRIOR-AUTH-NBR PIC X(30).                             
002500     05  MEDG-CLM50-REFERRAL-NBR   PIC X(30).                             
002700     05  MEDG-CLM50-EXT-INJURY-CD  PIC X(10).                             
002900     05  MEDG-CLM50-RENDPROV-NPI   PIC X(10).                             
003000     05  MEDG-CLM50-RENDPROV-LAST  PIC X(33).                             
003100     05  MEDG-CLM50-RENDPROV-FIRST PIC X(12).                             
003200     05  MEDG-CLM50-RENDPROV-MID   PIC X(01).                             
003300     05  MEDG-CLM50-RENDPROV-SUFF  PIC X(05).                             
