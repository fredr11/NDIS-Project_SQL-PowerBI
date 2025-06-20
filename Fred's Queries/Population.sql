--CLEANING UP THE POPULATION TABLE
 --When importing table Population_by_LGA, the column names were imported wrong. Renaming the column names to they are the same as the csv file
 
 EXEC sp_rename 'dbo.Population_by_LGA.column1',
                [Code],
                'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column2',
               [Label],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column3',
               [Year],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column4',
               [Estimated_resident_population_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column5',
               [Population_density_(persons/km2)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column6',
               [Estimated_resident_population_-_males_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column7',
               [Estimated_resident_population_-_females_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column8',
               [Median_age_-_males_(years)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column9',
               [Median_age_-_females_(years)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column10',
               [Median_age_-_persons_(years)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column11',
               [Working_age_population_(aged_15-64_years)_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column12',
               [Working_age_population_(aged_15-64_years)_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column13',
               [Males_-_0-4_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column14',
               [Males_-_5-9_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column15',
               [Males_-_10-14_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column16',
               [Males_-_15-19_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column17',
               [Males_-_20-24_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column18',
               [Males_-_25-29_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column19',
               [Males_-_30-34_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column20',
               [Males_-_35-39_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column21',
               [Males_-_40-44_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column22',
               [Males_-_45-49_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column23',
               [Males_-_50-54_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column24',
               [Males_-_55-59_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column25',
               [Males_-_60-64_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column26',
               [Males_-_65-69_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column27',
               [Males_-_70-74_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column28',
               [Males_-_75-79_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column29',
               [Males_-_80-84_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column30',
               [Males_-_85_and_over_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column31',
               [Males_-_0-4_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column32',
               [Males_-_5-9_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column33',
               [Males_-_10-14_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column34',
               [Males_-_15-19_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column35',
               [Males_-_20-24_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column36',
               [Males_-_25-29_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column37',
               [Males_-_30-34_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column38',
               [Males_-_35-39_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column39',
               [Males_-_40-44_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column40',
               [Males_-_45-49_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column41',
               [Males_-_50-54_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column42',
               [Males_-_55-59_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column43',
               [Males_-_60-64_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column44',
               [Males_-_65-69_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column45',
               [Males_-_70-74_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column46',
               [Males_-_75-79_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column47',
               [Males_-_80-84_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column48',
               [Males_-_85_and_over_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column49',
               [Females_-_0-4_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column50',
               [Females_-_5-9_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column51',
               [Females_-_10-14_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column52',
               [Females_-_15-19_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column53',
               [Females_-_20-24_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column54',
               [Females_-_25-29_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column55',
               [Females_-_30-34_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column56',
               [Females_-_35-39_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column57',
               [Females_-_40-44_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column58',
               [Females_-_45-49_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column59',
               [Females_-_50-54_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column60',
               [Females_-_55-59_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column61',
               [Females_-_60-64_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column62',
               [Females_-_65-69_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column63',
               [Females_-_70-74_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column64',
               [Females_-_75-79_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column65',
               [Females_-_80-84_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column66',
               [Females_-_85_and_over_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column67',
               [Females_-_0-4_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column68',
               [Females_-_5-9_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column69',
               [Females_-_10-14_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column70',
               [Females_-_15-19_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column71',
               [Females_-_20-24_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column72',
               [Females_-_25-29_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column73',
               [Females_-_30-34_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column74',
               [Females_-_35-39_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column75',
               [Females_-_40-44_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column76',
               [Females_-_45-49_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column77',
               [Females_-_50-54_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column78',
               [Females_-_55-59_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column79',
               [Females_-_60-64_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column80',
               [Females_-_65-69_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column81',
               [Females_-_70-74_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column82',
               [Females_-_75-79_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column83',
               [Females_-_80-84_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column84',
               [Females_-_85_and_over_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column85',
               [Persons_-_0-4_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column86',
               [Persons_-_5-9_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column87',
               [Persons_-_10-14_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column88',
               [Persons_-_15-19_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column89',
               [Persons_-_20-24_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column90',
               [Persons_-_25-29_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column91',
               [Persons_-_30-34_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column92',
               [Persons_-_35-39_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column93',
               [Persons_-_40-44_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column94',
               [Persons_-_45-49_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column95',
               [Persons_-_50-54_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column96',
               [Persons_-_55-59_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column97',
               [Persons_-_60-64_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column98',
               [Persons_-_65-69_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column99',
               [Persons_-_70-74_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column100',
               [Persons_-_75-79_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column101',
               [Persons_-_80-84_years_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column102',
               [Persons_-_85_and_over_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column103',
               [Persons_-_0-4_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column104',
               [Persons_-_5-9_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column105',
               [Persons_-_10-14_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column106',
               [Persons_-_15-19_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column107',
               [Persons_-_20-24_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column108',
               [Persons_-_25-29_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column109',
               [Persons_-_30-34_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column110',
               [Persons_-_35-39_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column111',
               [Persons_-_40-44_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column112',
               [Persons_-_45-49_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column113',
               [Persons_-_50-54_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column114',
               [Persons_-_55-59_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column115',
               [Persons_-_60-64_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column116',
               [Persons_-_65-69_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column117',
               [Persons_-_70-74_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column118',
               [Persons_-_75-79_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column119',
               [Persons_-_80-84_years_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column120',
               [Persons_-_85_and_over_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column121',
               [Births_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column122',
               [Total_fertility_rate_(births_per_female)_(rate)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column123',
               [Deaths_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column124',
               [Standardised_death_rate_(per_1,000_people)_(rate)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column125',
               [Internal_arrivals_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column126',
               [Internal_departures_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column127',
               [Net_internal_migration_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column128',
               [Overseas_arrivals_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column129',
               [Overseas_departures_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column130',
               [Net_overseas_migration_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column131',
               [Aboriginal_and_Torres_Strait_Islander_Peoples_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column132',
               [Aboriginal_and_Torres_Strait_Islander_Peoples_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column133',
               [Born_in_Oceania_and_Antarctica_(excluding_Australia)_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column134',
               [Born_in_North-West_Europe_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column135',
               [Born_in_Southern_and_Eastern_Europe_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column136',
               [Born_in_North_Africa_and_the_Middle_East_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column137',
               [Born_in_South-East_Asia_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column138',
               [Born_in_North-East_Asia_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column139',
               [Born_in_Southern_and_Central_Asia_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column140',
               [Born_in_Americas_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column141',
               [Born_in_Sub-Saharan_Africa_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column142',
               [Total_born_overseas_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column143',
               [Total_born_overseas_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column144',
               [Buddhism_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column145',
               [Christianity_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column146',
               [Hinduism_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column147',
               [Islam_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column148',
               [Judaism_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column149',
               [Other_religions_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column150',
               [Secular_beliefs,_other_spiritual_beliefs_or_no_religion_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column151',
               [Religious_affiliation_inadequately_described_or_not_stated_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column152',
               [Australian_citizen_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column153',
               [Not_an_Australian_citizen_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column154',
               [Australian_citizenship_not_stated_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column155',
               [Australian_citizen_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column156',
               [Not_an_Australian_citizen_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column157',
               [Australian_citizenship_not_stated_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column158',
               [Speaks_a_language_other_than_English_at_home_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column159',
               [Speaks_a_language_other_than_English_at_home_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column160',
               [Currently_serving_in_the_Australian_Defence_Force_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column161',
               [Previously_served_in_the_Australian_Defence_Force_(no.)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column162',
               [Currently_serving_in_the_Australian_Defence_Force_(%)],
               'COLUMN';

EXEC sp_rename 'dbo.Population_by_LGA.column163',
               [Previously_served_in_the_Australian_Defence_Force_(%)],
               'COLUMN';

--Aggregating age bands as 0-14, 15-24, 25-34, 35-44, 45-54, 55-64, 65+

SELECT 
    [Code] AS [LGA_Code],
    [Label] AS [LGA_Name],
    [Year],
    [Estimated_resident_population_(no.)],
    
    -- 0-14 years
    ISNULL([Persons_-_0-4_years_(no.)], 0) +
    ISNULL([Persons_-_5-9_years_(no.)], 0) +
    ISNULL([Persons_-_10-14_years_(no.)], 0) AS [Persons_Aged_0-14],
    CAST(ROUND(
        CAST(ISNULL([Persons_-_0-4_years_(no.)], 0) +
             ISNULL([Persons_-_5-9_years_(no.)], 0) +
             ISNULL([Persons_-_10-14_years_(no.)], 0) AS FLOAT) 
        / NULLIF([Estimated_resident_population_(no.)], 0) * 100, 1) AS VARCHAR) AS [Percent_Aged_0-14],

    -- 15–24 years
    ISNULL([Persons_-_15-19_years_(no.)], 0) +
    ISNULL([Persons_-_20-24_years_(no.)], 0) AS [Persons_Aged_15-24],
    CAST(ROUND(
        CAST(ISNULL([Persons_-_15-19_years_(no.)], 0) +
             ISNULL([Persons_-_20-24_years_(no.)], 0) AS FLOAT)
        / NULLIF([Estimated_resident_population_(no.)], 0) * 100, 1) AS VARCHAR) AS [Percent_Aged_15-24],

    -- 25–34 years
    ISNULL([Persons_-_25-29_years_(no.)], 0) +
    ISNULL([Persons_-_30-34_years_(no.)], 0) AS [Persons_Aged_25-34],
    CAST(ROUND(
        CAST(ISNULL([Persons_-_25-29_years_(no.)], 0) +
             ISNULL([Persons_-_30-34_years_(no.)], 0) AS FLOAT)
        / NULLIF([Estimated_resident_population_(no.)], 0) * 100, 1) AS VARCHAR) AS [Percent_Aged_25-34],

    -- 35–44 years
    ISNULL([Persons_-_35-39_years_(no.)], 0) +
    ISNULL([Persons_-_40-44_years_(no.)], 0) AS [Persons_Aged_35-44],
    CAST(ROUND(
        CAST(ISNULL([Persons_-_35-39_years_(no.)], 0) +
             ISNULL([Persons_-_40-44_years_(no.)], 0) AS FLOAT)
        / NULLIF([Estimated_resident_population_(no.)], 0) * 100, 1) AS VARCHAR) AS [Percent_Aged_35-44],

    -- 45–54 years
    ISNULL([Persons_-_45-49_years_(no.)], 0) +
    ISNULL([Persons_-_50-54_years_(no.)], 0) AS [Persons_Aged_45-54],
    CAST(ROUND(
        CAST(ISNULL([Persons_-_45-49_years_(no.)], 0) +
             ISNULL([Persons_-_50-54_years_(no.)], 0) AS FLOAT)
        / NULLIF([Estimated_resident_population_(no.)], 0) * 100, 1) AS VARCHAR) AS [Percent_Aged_45-54],

    -- 55–64 years
    ISNULL([Persons_-_55-59_years_(no.)], 0) +
    ISNULL([Persons_-_60-64_years_(no.)], 0) AS [Persons_Aged_55-64],
    CAST(ROUND(
        CAST(ISNULL([Persons_-_55-59_years_(no.)], 0) +
             ISNULL([Persons_-_60-64_years_(no.)], 0) AS FLOAT)
        / NULLIF([Estimated_resident_population_(no.)], 0) * 100, 1) AS VARCHAR) AS [Percent_Aged_55-64],

    -- 65+ years
    ISNULL([Persons_-_65-69_years_(no.)], 0) +
    ISNULL([Persons_-_70-74_years_(no.)], 0) +
    ISNULL([Persons_-_75-79_years_(no.)], 0) +
    ISNULL([Persons_-_80-84_years_(no.)], 0) +
    ISNULL([Persons_-_85_and_over_(no.)], 0) AS [Persons_Aged_65+],
    CAST(ROUND(
        CAST(ISNULL([Persons_-_65-69_years_(no.)], 0) +
             ISNULL([Persons_-_70-74_years_(no.)], 0) +
             ISNULL([Persons_-_75-79_years_(no.)], 0) +
             ISNULL([Persons_-_80-84_years_(no.)], 0) +
             ISNULL([Persons_-_85_and_over_(no.)], 0) AS FLOAT)
        / NULLIF([Estimated_resident_population_(no.)], 0) * 100, 1) AS VARCHAR) AS [Percent_Aged_65+]

FROM dbo.Population_by_LGA
WHERE [Year] IN (2020, 2021, 2022, 2023)
  AND [Code] LIKE '5%';