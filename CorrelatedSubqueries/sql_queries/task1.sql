﻿SELECT 
    [city].[id],
    [city].[name]
FROM 
    [city]
WHERE
    [city].[id] NOT IN (SELECT [city_id] FROM [street])
ORDER BY 
    [city].[name] ASC;