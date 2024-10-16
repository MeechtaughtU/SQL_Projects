SELECT id, COUNT(id)
FROM ushouseholdincome
GROUP BY id
HAVING COUNT(id) > 1;

SELECT State_Name, COUNT(State_Name)
FROM ushouseholdincome
GROUP BY State_Name;

SET SQL_SAFE_UPDATES = 0;

UPDATE ushouseholdincome
SET State_Name = 'Alabama'
where State_Name = 'alabama';

use ushouseholdincome;

SELECT *
FROM ushouseholdincome
WHERE Place = ''
order by 1;

UPDATE ushouseholdincome
SET Place = 'Autaugaville'
WHERE County = 'Autauga County'
AND City = 'Vinemont';

Select Type, Count(Type)
from ushouseholdincome
Group by Type
Order by 1;

select ALand, AWater
from ushouseholdincome
where ALand = 0 or ALand = '' or ALand IS NULL;

#EDA Project 1

SELECT State_Name, SUM(ALand), SUM(AWater)
from ushouseholdincome
GROUP BY State_Name
ORDER BY 3 DESC
LIMIT 10;

SELECT u.State_Name, Round(AVG(Mean), 1), Round(AVG(Median), 1)
FROM ushouseholdincome u
INNER JOIN ushouseholdincome_statistics1 us
ON u.id = us.id
WHERE Mean <> 0
Group by u.State_Name
order by 3 DESC
LIMIT 20;

SELECT Type, COUNT(Type), Round(AVG(Mean), 1), Round(AVG(Median), 1)
FROM ushouseholdincome u
INNER JOIN ushouseholdincome_statistics1 us
ON u.id = us.id
WHERE Mean <> 0
Group by Type
HAVING Count(Type) > 100
order by 3 DESC;

SELECT u.State_Name, City, Round(AVG(Mean),1), ROUND(AVG(Median),1)
from ushouseholdincome u
join ushouseholdincome_statistics1 us
on u.id = us.id
Group By u.State_Name, City
Order By Round(AVG(Mean),1) DESC;


