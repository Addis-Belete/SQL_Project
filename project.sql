SELECT population FROM world
  WHERE name = 'Germany'
SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');

SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000

SELECT name, continent, population FROM world
SELECT name
  FROM world
 WHERE population >= 200000000
SELECT name, GDP/population FROM world
WHERE population >= 200000000

SELECT name, Population/1000000 AS population FROM world
WHERE continent = 'South America'

SELECT name, population FROM world WHERE name IN('France', 'Germany', 'Italy')

SELECT name  FROM world
WHERE name LIKE 'United%'

SELECT name, population, area FROM world
WHERE area > 3000000 OR population > 250000000

SELECT name, population, area FROM world
WHERE area > 3000000 AND population < 250000000 OR area < 3000000 
AND population > 250000000

SELECT name, ROUND(population/1000000, 2), ROUND(GDP/1000000000, 2) FROM world
WHERE continent = 'South America'

SELECT name, ROUND(GDP/population, -3) FROM world
WHERE GDP >= 1000000000000

SELECT name, capital FROM world
WHERE LENGTH(name) = LENGTH(capital) 

SELECT name, capital FROM world
WHERE LEFT(name, 1) = LEFT(capital, 1) AND name <> capital

SELECT name
   FROM world
WHERE name LIKE '%a%' AND name LIKE '%e%' AND name LIKE '%i%'
 AND name NOT LIKE '% %' AND name LIKE '%o%' AND name LIKE '%u%'

SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950

SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature'

SELECT yr, Subject FROM nobel
WHERE winner = 'Albert Einstein'

SELECT winner FROM nobel
WHERE yr >= 2000 AND subject = 'Peace'

SELECT yr,subject, winner FROM nobel
WHERE yr BETWEEN 1980 AND 1989 AND subject ='Literature'

SELECT * FROM nobel
 WHERE 
   winner IN ('Theodore Roosevelt',
                  'Woodrow Wilson',
                  'Jimmy Carter',
                  'Barack Obama')

SELECT winner FROM nobel
WHERE winner LIKE 'John%'

SELECT * FROM nobel
WHERE (yr = 1980 AND Subject ='Physics' OR yr = 1984 AND subject = 'Chemistry')

SELECT * FROM nobel
WHERE yr = 1980 AND subject NOT IN ('Chemistry', 'Medicine')

SELECT * FROM nobel
WHERE yr < 1910 AND subject = 'Medicine' OR yr >= 2004 AND subject = 'Literature'

SELECT * FROM nobel
WHERE winner LIKE 'PETER GRÜNBERG'

SELECT * FROM nobel
WHERE winner LIKE 'EUGENE O_NEILL'

SELECT winner, yr, subject FROM nobel
WHERE winner LIKE 'sir%' 
ORDER BY yr DESC 

SELECT winner,subject
  FROM nobel
 WHERE yr=1984
 ORDER BY subject IN ('Physics','Chemistry'),subject,winner

SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')

SELECT name FROM world
WHERE GDP/Population >(SELECT GDP/population FROM world
WHERE name = 'United Kingdom') AND continent = 'Europe'

-- nested select-->

SELECT SUM(population)
FROM world

SELECT DISTINCT continent FROM world

SELECT SUM(GDP) FROM world
WHERE continent = 'Africa'

SELECT COUNT(area) FROM world
WHERE area >= 1000000

SELECT SUM(population)FROM world
WHERE name IN ('Estonia', 'Latvia', 'Lithuania')

SELECT continent, COUNT(name) FROM world
GROUP BY continent

SELECT  continent, COUNT(population) FROM world
WHERE population >= 10000000
GROUP BY continent

  -- SUM and Counting number 8->
SELECT matchid, player FROM goal 
  WHERE teamid = 'GER'