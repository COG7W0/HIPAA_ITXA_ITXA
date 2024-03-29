SELECT 
H.GUID,
SOURCE_SYSTEM_ID,
CREATED_DATE_TIME,
H.BATCH_ID,
PRODUCT_TYPE,
TRANSACTION_TYPE,
DATE_TIME_PROCESSED,
PROCESSED_STATUS,
PRODUCT_ID,
POLICY_NUMBER,
R.MESSAGE AS MESSAGE
FROM dbo.CTP_ITXA_TRANS_HIST H
LEFT JOIN (
 SELECT GUID,
BATCH_ID,
STUFF(
(SELECT '*'+RTRIM(MESSAGE_LEVEL)+'::'+RTRIM(MESSAGE_SOURCE)+'::'+RTRIM(CATEGORY)+'::'++RTRIM(MESSAGE)
  FROM dbo.CTP_ITXA_TRANS_RESULT T2 
      WHERE T1.BATCH_ID=T2.BATCH_ID
	      AND T1.GUID=T2.GUID
	  FOR XML PATH('')),1,1,'') AS MESSAGE
FROM dbo.CTP_ITXA_TRANS_RESULT T1 GROUP BY BATCH_ID,GUID HAVING BATCH_ID=?
) R
ON H.GUID=R.GUID AND H.BATCH_ID=R.BATCH_ID 

WHERE H.BATCH_ID=? AND SOURCE_SYSTEM_ID=?;