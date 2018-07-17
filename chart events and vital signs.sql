SELECT chartevents.subject_id, chartevents.itemid, chartevents.value, chartevents.charttime, d_items.label, d_items.linksto,patients.dob, patients.gender, admissions.admittime
FROM chartevents
INNER JOIN patients ON charevents.subject_id = patients.subject_id
INNER JOIN admissions ON chartevents.subject_id = admissions.subject_id
INNER JOIN d_items ON chartevents.itemid = d_items.itemid

WHERE chartevents.itemid IN (
    --candidate data elements for ML
    '223770','223769','220210','219','615','618','227243','220047','223900','223901','223752','223751','225309','220179','227013','226755','223791','225813','198',
    --resp rate
    '615','618','220210','224690',
    --glucose
    '807','811','1529','3745','3744','225664','220621','226537',
    --HR
    '211','220045',
    --SysBP
    '51','442','455','6701','220179','220050',
    --DiasBP
    '8368','8440','8441','8555','220180','220051',
    --Temp
    '223761','678','223762','676',
    --Glasgow Coma Scale
    '227013','220739','223900','223901','226755');