--Cleaning up the LGA Names of table Participants_By_LGA and filtering for WA only. Also filtering for dates on or before 2025-03-31.

SELECT ReportDt,
       RsdsInSrvcDstrctNm AS District_Name,
       CASE
           WHEN CHARINDEX('(', Participants_By_LGA.LGANm2020) > 0 THEN SUBSTRING(LGANm2020, 1, CHARINDEX('(', LGANm2020)-2)
           ELSE LGANm2020
       END AS LGA_Name,
       PrtcpntCnt AS Participants
FROM dbo.Participants_By_LGA
WHERE StateCd = 'WA'
AND ReportDt < '2025-03-31';

/*Participants column contains aggregated values as "<11" when the value is between 1 and 10.
That cannot be used as an integer. Excluding those values.*/

SELECT ReportDt AS [Date],
       RsdsInSrvcDstrctNm AS Service_District,
       CASE
           WHEN CHARINDEX('(', Participants_By_LGA.LGANm2020) > 0 THEN SUBSTRING(LGANm2020, 1, CHARINDEX('(', LGANm2020)-2)
           ELSE LGANm2020
       END AS LGA_Name,
       PrtcpntCnt AS Participants
FROM dbo.Participants_By_LGA
WHERE StateCd = 'WA'
AND PrtcpntCnt <> '<11'
AND ReportDt < '2025-03-31';