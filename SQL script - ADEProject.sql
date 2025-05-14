SELECT * FROM Athletes;           -- --Athletes Table
SELECT * FROM Coaches;            -- --Coaches Table
SELECT * FROM EntriesGender;      -- --EntriesGender Table
SELECT * FROM Medals;             -- --Medals Table
SELECT * FROM Teams;              -- --Teams Table

-- Count the number of athletes from each country.
SELECT Country, COUNT(*) AS Total_Athletes
FROM Athletes
GROUP BY Country
ORDER BY Total_Athletes DESC;

-- Calculate the total medals won by each country.
SELECT TeamCountry, SUM(Gold) AS Total_Gold, SUM(Silver) AS Total_Silver, SUM(Bronze) AS Total_Bronze
FROM Medals
GROUP BY TeamCountry
ORDER BY Total_Gold DESC;

-- Calculate the average number of entries by gender for each discipline.
SELECT Discipline, AVG(Female) AS Avg_Female_Entries, AVG(Male) AS Avg_Male_Entries
FROM EntriesGender
GROUP BY Discipline;