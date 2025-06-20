--Cleaning up tables NDIS_Participant_Budgets_2023 and NDIS_Participant_Budgets_2024

/*Filtering out unnecessary values and creating Aliases for naming consistency.
Also excluding values where PrtcpntCnt is <11 for normalization.
Also naming AgeBnd column to standardized Age_Group flags.*/

--2023

SELECT [RprtDt] AS [Date],
       [SrvcDstrctNm] AS [Service_District],
       [DsbltyGrpNm] AS [Disability],
       CASE
           WHEN AgeBnd IN ('0 to 6',
                           '7 to 14') THEN '0-14'
           WHEN AgeBnd IN ('15 to 18',
                           '19 to 24') THEN '15-24'
           WHEN AgeBnd = '25 to 34' THEN '25-34'
           WHEN AgeBnd = '35 to 44' THEN '35-44'
           WHEN AgeBnd = '45 to 54' THEN '45-54'
           WHEN AgeBnd = '55 to 64' THEN '55-64'
           WHEN AgeBnd = '65+' THEN '65+'
       END AS 'Age_Group',
       [AvgAnlsdCmtdSuppBdgt] AS [Annualized_Budget],
       [ActvPrtcpnt] AS [Participants]
FROM [TAFE].[dbo].[NDIS_Participant_Budgets_2023]
WHERE StateCd = 'WA'
  AND SrvcDstrctNm <> 'ALL'
  AND AgeBnd <> 'ALL'
  AND SuppClass = 'ALL'
  AND ActvPrtcpnt NOT LIKE '<%'
  AND AvgAnlsdCmtdSuppBdgt IS NOT NULL
  AND DsbltyGrpNm <> 'ALL';

--2024

SELECT [RprtDt] AS [Date],
       [SrvcDstrctNm] AS [Service_District],
       [DsbltyGrpNm] AS [Disability],
       CASE
           WHEN AgeBnd IN ('0 to 8',
                           '9 to 14') THEN '0-14'
           WHEN AgeBnd IN ('15 to 18',
                           '19 to 24') THEN '15-24'
           WHEN AgeBnd = '25 to 34' THEN '25-34'
           WHEN AgeBnd = '35 to 44' THEN '35-44'
           WHEN AgeBnd = '45 to 54' THEN '45-54'
           WHEN AgeBnd = '55 to 64' THEN '55-64'
           WHEN AgeBnd = '65+' THEN '65+'
       END AS 'Age_Group',
       [AvgAnlsdCmtdSuppBdgt] AS [Annualized_Budget],
       [PrtcpntCnt] AS [Participants]
FROM [TAFE].[dbo].[NDIS_Participant_Budgets_2024]
WHERE StateCd = 'WA'
  AND SrvcDstrctNm <> 'ALL'
  AND AgeBnd <> 'ALL'
  AND SuppClass = 'ALL'
  AND PrtcpntCnt <> '<11'
  AND AvgAnlsdCmtdSuppBdgt IS NOT NULL
  AND DsbltyGrpNm <> 'ALL';

  --Putting together 2023 and 2024 data

  SELECT [RprtDt] AS [Date],
       [SrvcDstrctNm] AS [Service_District],
       [DsbltyGrpNm] AS [Disability],
       CASE
           WHEN AgeBnd IN ('0 to 6',
                           '7 to 14') THEN '0-14'
           WHEN AgeBnd IN ('15 to 18',
                           '19 to 24') THEN '15-24'
           WHEN AgeBnd = '25 to 34' THEN '25-34'
           WHEN AgeBnd = '35 to 44' THEN '35-44'
           WHEN AgeBnd = '45 to 54' THEN '45-54'
           WHEN AgeBnd = '55 to 64' THEN '55-64'
           WHEN AgeBnd = '65+' THEN '65+'
       END AS 'Age_Group',
       [AvgAnlsdCmtdSuppBdgt] AS [Annualized_Budget],
       [ActvPrtcpnt] AS [Participants]
FROM [TAFE].[dbo].[NDIS_Participant_Budgets_2023]
WHERE StateCd = 'WA'
  AND SrvcDstrctNm <> 'ALL'
  AND AgeBnd <> 'ALL'
  AND SuppClass = 'ALL'
  AND ActvPrtcpnt NOT LIKE '<%'
  AND AvgAnlsdCmtdSuppBdgt IS NOT NULL
  AND DsbltyGrpNm <> 'ALL'
UNION
SELECT [RprtDt] AS [Date],
       [SrvcDstrctNm] AS [Service_District],
       [DsbltyGrpNm] AS [Disability],
       CASE
           WHEN AgeBnd IN ('0 to 8',
                           '9 to 14') THEN '0-14'
           WHEN AgeBnd IN ('15 to 18',
                           '19 to 24') THEN '15-24'
           WHEN AgeBnd = '25 to 34' THEN '25-34'
           WHEN AgeBnd = '35 to 44' THEN '35-44'
           WHEN AgeBnd = '45 to 54' THEN '45-54'
           WHEN AgeBnd = '55 to 64' THEN '55-64'
           WHEN AgeBnd = '65+' THEN '65+'
       END AS 'Age_Group',
       [AvgAnlsdCmtdSuppBdgt] AS [Annualized_Budget],
       [PrtcpntCnt] AS [Participants]
FROM [TAFE].[dbo].[NDIS_Participant_Budgets_2024]
WHERE StateCd = 'WA'
  AND SrvcDstrctNm <> 'ALL'
  AND AgeBnd <> 'ALL'
  AND SuppClass = 'ALL'
  AND PrtcpntCnt <> '<11'
  AND AvgAnlsdCmtdSuppBdgt IS NOT NULL
  AND DsbltyGrpNm <> 'ALL';