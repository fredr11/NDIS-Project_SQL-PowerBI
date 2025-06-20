--CLEANING UP GEOGRAPHICAL DATA
 --Deleting records for states other than Western Australia from LGA_2024_AUST as they are unnecessary

DELETE
FROM dbo.LGA_2024_AUST
WHERE STATE_NAME_2021 = 'New South Wales'
  OR STATE_NAME_2021 = 'Victoria'
  OR STATE_NAME_2021 = 'Queensland'
  OR STATE_NAME_2021 = 'South Australia'
  OR STATE_NAME_2021 = 'Other Territories'
  OR STATE_NAME_2021 = 'Tasmania'
  OR STATE_NAME_2021 = 'Northern Territory'
  OR STATE_NAME_2021 = 'Australian Capital Territory'
  OR STATE_NAME_2021 = 'Outside Australia';

--Dropping columns AREA_ALBERS_SQKM and ASGS_LOCI_URI_2021 from LGA_2024_AUST as they are not needed

ALTER TABLE dbo.LGA_2024_AUST
DROP COLUMN AREA_ALBERS_SQKM,
            ASGS_LOCI_URI_2021;

/*Dropping the following columns from MB_To_Post_Code as they are not needed:
POA_NAME_2021, AUS_CODE_2021, AUS_NAME_2021, AREA_ALBERS_SQKM, ASGS_LOCI_URI_2021*/

ALTER TABLE dbo.MB_To_Post_Code
DROP COLUMN POA_NAME_2021,
            AUS_CODE_2021,
            AUS_NAME_2021,
            AREA_ALBERS_SQKM,
            ASGS_LOCI_URI_2021;

--Deleting records for states other than Western Australia from MB_2021_AUST as they are unnecessary

DELETE
FROM dbo.MB_2021_AUST
WHERE STATE_NAME_2021 = 'New South Wales'
  OR STATE_NAME_2021 = 'Victoria'
  OR STATE_NAME_2021 = 'Queensland'
  OR STATE_NAME_2021 = 'South Australia'
  OR STATE_NAME_2021 = 'Other Territories'
  OR STATE_NAME_2021 = 'Tasmania'
  OR STATE_NAME_2021 = 'Northern Territory'
  OR STATE_NAME_2021 = 'Australian Capital Territory'
  OR STATE_NAME_2021 = 'Outside Australia';

/*Dropping the following columns from MB_2021_AUST as they are not needed:
MB_CATEGORY_2021, CHANGE_FLAG_2021, CHANGE_LABEL_2021, STATE_CODE_2021, STATE_NAME_2021, AUS_CODE_2021, AUS_NAME_2021, AREA_ALBERS_SQKM, ASGS_LOCI_URI_2021*/

ALTER TABLE dbo.MB_2021_AUST
DROP COLUMN MB_CATEGORY_2021,
            CHANGE_FLAG_2021,
            CHANGE_LABEL_2021,
            STATE_CODE_2021,
            STATE_NAME_2021,
            AUS_CODE_2021,
            AUS_NAME_2021,
            AREA_ALBERS_SQKM,
            ASGS_LOCI_URI_2021;

--Dropping empty columns from Modified_Monash_Model

ALTER TABLE dbo.Modified_Monash_Model
DROP COLUMN column5,
            column6;

--Deleting empty rows which were imported in error in table Modified_Monash_Model

DELETE
FROM dbo.Modified_Monash_Model
WHERE State_Territory IS NULL;

--Creating a column containing unique IDs for every row in table Modified_Monash_Model

ALTER TABLE dbo.Modified_Monash_Model ADD [Key] VARCHAR(255);


UPDATE dbo.Modified_Monash_Model
SET [Key] =
REPLACE (Suburb_Locality,
         ' ',
         '_') + '_' + CAST (Postcode AS VARCHAR) + '_' + CAST (MMM_classification AS VARCHAR);

--Setting newly created column [Key] as the primary key of table Modified_Monash_Model

SELECT [Key],
       COUNT(*)
FROM dbo.Modified_Monash_Model
GROUP BY [Key]
HAVING COUNT(*) > 1; --No results are returned, meaning that no record under [Key] is duplicate


ALTER TABLE dbo.Modified_Monash_Model
ALTER COLUMN [Key] VARCHAR(255) NOT NULL; --Making [Key] non nullable so it can be a Primary Key


ALTER TABLE dbo.Modified_Monash_Model ADD CONSTRAINT PK_Modified_Monash_Model_Key PRIMARY KEY ([Key]); --Defining [Key] as the Primary Key

/*MMM Classifications has been standardized to their name instead of their code in the NDIS data.
Standardazing it IN dbo.Modified_Monash_Model too so it's comparable.*/

SELECT
       CASE
           WHEN dbo.Modified_Monash_Model.MMM_classification = '1' THEN 'Major Cities'
           WHEN dbo.Modified_Monash_Model.MMM_classification = '2' THEN 'Population > 50,000'
           WHEN dbo.Modified_Monash_Model.MMM_classification = '3' THEN 'Population between 15,000 and 50,000'
           WHEN dbo.Modified_Monash_Model.MMM_classification = '4' THEN 'Population between 5,000 and 15,000'
           WHEN dbo.Modified_Monash_Model.MMM_classification IN  ('5', '6', '7', '8', '9') THEN 'Population less than 5,000'
       END AS 'Normalized_MMM_Classification'
FROM dbo.Modified_Monash_Model;

/*Appending tables LGA_To_Service_District, MB_2021_AUST, MB_To_Post_Code, and dbo.Modified_Monash_Model to LGA_2024_AUST.
This will link MB Codes to SAs, Service District Names, Post Codes, and MMM Classifications.
Displaying information from most specific to most generic area.*/

SELECT dbo.LGA_2024_AUST.MB_CODE_2021 AS 'MB_Code',
       dbo.MB_2021_AUST.SA1_CODE_2021 AS 'SA1_Code',
       dbo.MB_2021_AUST.SA2_CODE_2021 AS 'SA2_Code',
       dbo.MB_2021_AUST.SA2_NAME_2021 AS 'SA2_Name',
       dbo.Modified_Monash_Model.Postcode AS 'Post_Code',
       dbo.LGA_2024_AUST.LGA_CODE_2024 AS 'LGA_Code',
       dbo.LGA_2024_AUST.LGA_NAME_2024 AS 'LGA_Name',
       dbo.MB_2021_AUST.SA3_CODE_2021 AS 'SA3_Code',
       dbo.MB_2021_AUST.SA3_NAME_2021 AS 'SA3_Name',
       dbo.MB_2021_AUST.SA4_CODE_2021 AS 'SA4_Code',
       dbo.MB_2021_AUST.SA4_NAME_2021 AS 'SA4_Name',
       dbo.LGA_To_Service_District.RsdsInSrvcDstrctNm AS 'Service_District',
       CASE
           WHEN dbo.Modified_Monash_Model.MMM_classification = '1' THEN 'Major Cities'
           WHEN dbo.Modified_Monash_Model.MMM_classification = '2' THEN 'Population > 50,000'
           WHEN dbo.Modified_Monash_Model.MMM_classification = '3' THEN 'Population between 15,000 and 50,000'
           WHEN dbo.Modified_Monash_Model.MMM_classification = '4' THEN 'Population between 5,000 and 15,000'
           WHEN dbo.Modified_Monash_Model.MMM_classification IN  ('5', '6', '7', '8', '9') THEN 'Population less than 5,000'
       END AS 'Normalized_MMM_Classification'
FROM LGA_2024_AUST
JOIN dbo.LGA_To_Service_District ON dbo.LGA_2024_AUST.LGA_CODE_2024 = dbo.LGA_To_Service_District.LGACd2021
JOIN dbo.MB_2021_AUST ON dbo.MB_2021_AUST.MB_CODE_2021 = dbo.LGA_2024_AUST.MB_CODE_2021
LEFT JOIN dbo.MB_To_Post_Code ON dbo.MB_2021_AUST.MB_CODE_2021 = dbo.MB_To_Post_Code.MB_CODE_2021
LEFT JOIN dbo.Modified_Monash_Model ON dbo.MB_To_Post_Code.POA_CODE_2021 = dbo.Modified_Monash_Model.Postcode
WHERE dbo.LGA_To_Service_District.RsdsInStateCd = 'WA'
  AND dbo.Modified_Monash_Model.Postcode LIKE '6%';