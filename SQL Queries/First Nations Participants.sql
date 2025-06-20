--First Nations Participant Clean Up

 /*Filtering out results from states other than WA, and where the remoteness information is missing (i.e. "MM" and "MMM").
Also filtering out totals as they are not needed and will be calculated later separately.*/

SELECT [RprtDt],
       [StateCd],
       [MMMCd_2015],
       [AvgAnlsdCmtdSuppBdgt],
       [PrtcpntCnt]
FROM [dbo].[NDIS_First_Nations_Participants]
WHERE StateCd = 'WA'
  AND MMMCd_2015 <> 'MMM'
  AND MMMCd_2015 <> 'MM'
  AND MMMCd_2015 <> 'ALL'
  
  --MMM Classifications has been standardized to their name instead of their code.

  SELECT RprtDt AS [Date],
         AvgAnlsdCmtdSuppBdgt AS Annualized_Budget,
         PrtcpntCnt AS Participants,
         CASE
              WHEN RIGHT(MMMCd_2015, LEN (MMMCd_2015) - PATINDEX('%[0-9]%', MMMCd_2015) +1) = '1'
              THEN 'Major Cities'
              WHEN RIGHT(MMMCd_2015, LEN (MMMCd_2015) - PATINDEX('%[0-9]%', MMMCd_2015) +1) = '2'
              THEN 'Population > 50,000'
              WHEN RIGHT(MMMCd_2015, LEN (MMMCd_2015) - PATINDEX('%[0-9]%', MMMCd_2015) +1) = '3'
              THEN 'Population between 15,000 and 50,000'
              WHEN RIGHT(MMMCd_2015, LEN (MMMCd_2015) - PATINDEX('%[0-9]%', MMMCd_2015) +1) = '4'
              THEN 'Population between 5,000 and 15,000'
              WHEN RIGHT(MMMCd_2015, LEN (MMMCd_2015) - PATINDEX('%[0-9]%', MMMCd_2015) +1) = '5'
              THEN 'Population less than 5,000'
              WHEN RIGHT(MMMCd_2015, LEN (MMMCd_2015) - PATINDEX('%[0-9]%', MMMCd_2015) +1) = '6 & 7'
              THEN 'Population less than 5,000'
              END AS Normalized_MMM_Classification
  FROM [dbo].[NDIS_First_Nations_Participants] WHERE StateCd = 'WA'
  AND MMMCd_2015 NOT IN ('MMM', 'MM', 'ALL');