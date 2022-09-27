

SELECT 
		ID,
		Name [Competitor Name],
		CASE WHEN Sex = 'M' Then 'Male' Else 'Female' END AS Sex,
		Age,
		CASE WHEN Age < 18 THEN 'Under 18' 
			 WHEN Age Between 18 AND 25 THEN '18-25'
			 WHEN Age Between 25 AND 30 THEN '25-30'
			 WHEN Age > 30 THEN 'Over 30'
		END AS [Age Grouping],
		Height,
		Weight,
		NOC [Nation Code],
		LEFT(Games, CHARINDEX(' ',Games)-1) 'Year',
		Sport,
		Event,
		CASE When Medal = 'NA' THEN 'Not Registered' Else Medal END AS Medal
		FROM dbo.athletes_event_results
		WHERE RIGHT(Games, CHARINDEX(' ',REVERSE(Games))-1) = 'Summer';

