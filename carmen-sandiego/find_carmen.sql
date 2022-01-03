-- TEST COMMAND AND SAMPLE OUTPUT
-- Record your query (or queries, some clues require more than one) below the clue, then comment out the output below it
-- use two `-` to comment at the start of a line, or highlight the text and press `⌘/` to toggle comments
-- EXAMPLE: SELECT ALL FROM THE TABLE COUNTRY AND LIMIT IT TO ONE ENTRY

SELECT * FROM COUNTRY LIMIT 1;

--  -[ RECORD 1 ]--+--------------------------
-- code           | AFG
-- name           | Afghanistan
-- continent      | Asia
-- region         | Southern and Central Asia
-- surfacearea    | 652090
-- indepyear      | 1919
-- population     | 22720000
-- lifeexpectancy | 45.9
-- gnp            | 5976.00
-- gnpold         |
-- localname      | Afganistan/Afqanestan
-- governmentform | Islamic Emirate
-- headofstate    | Mohammad Omar
-- capital        | 1
-- code2          | AF


-- Clue #1: We recently got word that someone fitting Carmen Sandiego's description has been traveling through Southern Europe. She's most likely traveling someplace where she won't be noticed, so find the least populated country in Southern Europe, and we'll start looking for her there.
SELECT region FROM country WHERE region = 'Southern Europe';
--      region
-- -----------------
--  Southern Europe
--  Southern Europe
--  Southern Europe
--  Southern Europe
--  Southern Europe
--  Southern Europe
--  Southern Europe
--  Southern Europe
--  Southern Europe
--  Southern Europe
--  Southern Europe
--  Southern Europe
--  Southern Europe
--  Southern Europe
--  Southern Europe
-- (15 rows)

SELECT population from country WHERE region = 'Southern Europe';
--  population
-- ------------
--     3401200
--       78000
--     3972000
--    39441700
--       25000
--    57680000
--    10640000
--    10545700
--     4473000
--     2024000
--      380200
--     9997600
--       27000
--     1987800
--        1000
-- (15 rows)
SELECT name from country WHERE region = 'Southern Europe' and population = 1000;
-- lydia=# SELECT name from country WHERE region = 'Southern Europe' and population = 1000;
--              name
-- -------------------------------
--  Holy See (Vatican City State)
-- (1 row)



-- Clue #2: Now that we're here, we have insight that Carmen was seen attending language classes in this country's officially recognized language. Check our databases and find out what language is spoken in this country, so we can call in a translator to work with you.
SELECT code from country WHERE name = 'Holy See (Vatican City State)'
-- VAT
lydia=# SELECT language from countrylanguage WHERE countrycode = 'VAT';
--  language
-- ----------
--  Italian
-- (1 row)
ITALIANO!


-- Clue #3: We have new news on the classes Carmen attended – our gumshoes tell us she's moved on to a different country, a country where people speak only the language she was learning. Find out which nearby country speaks nothing but that language.

lydia=# SELECT *  FROM country LEFT JOIN countrylanguage ON country.code = countrylanguage.countrycode WHERE countrylanguage.language = 'Italian';
--  code |             name              |   continent   |          region           | surfacearea  | indepyear | population | lifeexpectancy |    gnp     |   gnpold   |            localname            |           governmentform            |        headofstate        | capital | code2 | countrycode | language | isofficial | percentage
-- ------+-------------------------------+---------------+---------------------------+--------------+-----------+------------+----------------+------------+------------+---------------------------------+-------------------------------------+---------------------------+---------+-------+-------------+----------+------------+------------
--  ARG  | Argentina                     | South America | South America             |   2.7804e+06 |      1816 |   37032000 |           75.1 |  340238.00 |  323310.00 | Argentina                       | Federal Republic                    | Fernando de la R�a      |      69 | AR    | ARG         | Italian  | f          |        1.7
--  AUS  | Australia                     | Oceania       | Australia and New Zealand |  7.74122e+06 |      1901 |   18886000 |           79.8 |  351182.00 |  392911.00 | Australia                       | Constitutional Monarchy, Federation | Elisabeth II              |     135 | AU    | AUS         | Italian  | f          |        2.2
--  BEL  | Belgium                       | Europe        | Western Europe            |        30518 |      1830 |   10239000 |           77.8 |  249704.00 |  243948.00 | Belgi�/Belgique               | Constitutional Monarchy, Federation | Albert II                 |     179 | BE    | BEL         | Italian  | f          |        2.4
--  BRA  | Brazil                        | South America | South America             | 8.547403e+06 |      1822 |  170115000 |           62.9 |  776739.00 |  804108.00 | Brasil                          | Federal Republic                    | Fernando Henrique Cardoso |     211 | BR    | BRA         | Italian  | f          |        0.4
--  ITA  | Italy                         | Europe        | Southern Europe           |       301316 |      1861 |   57680000 |             79 | 1161755.00 | 1145372.00 | Italia                          | Republic                            | Carlo Azeglio Ciampi      |    1464 | IT    | ITA         | Italian  | t          |       94.1
--  CAN  | Canada                        | North America | North America             |  9.97061e+06 |      1867 |   31147000 |           79.4 |  598862.00 |  625626.00 | Canada                          | Constitutional Monarchy, Federation | Elisabeth II              |    1822 | CA    | CAN         | Italian  | f          |        1.7
--  LIE  | Liechtenstein                 | Europe        | Western Europe            |          160 |      1806 |      32300 |           78.8 |    1119.00 |    1084.00 | Liechtenstein                   | Constitutional Monarchy             | Hans-Adam II              |    2446 | LI    | LIE         | Italian  | f          |        2.5
--  LUX  | Luxembourg                    | Europe        | Western Europe            |         2586 |      1867 |     435700 |           77.1 |   16321.00 |   15519.00 | Luxembourg/L�tzebuerg         | Constitutional Monarchy             | Henri                     |    2452 | LU    | LUX         | Italian  | f          |        4.6
--  MCO  | Monaco                        | Europe        | Western Europe            |          1.5 |      1861 |      34000 |           78.8 |     776.00 |            | Monaco                          | Constitutional Monarchy             | Rainier III               |    2695 | MC    | MCO         | Italian  | f          |       16.1
--  FRA  | France                        | Europe        | Western Europe            |       551500 |       843 |   59225700 |           78.8 | 1424285.00 | 1392448.00 | France                          | Republic                            | Jacques Chirac            |    2974 | FR    | FRA         | Italian  | f          |        0.4
--  DEU  | Germany                       | Europe        | Western Europe            |       357022 |      1955 |   82164700 |           77.4 | 2133367.00 | 2102826.00 | Deutschland                     | Federal Republic                    | Johannes Rau              |    3068 | DE    | DEU         | Italian  | f          |        0.7
--  SMR  | San Marino                    | Europe        | Southern Europe           |           61 |       885 |      27000 |           81.1 |     510.00 |            | San Marino                      | Republic                            |                           |    3171 | SM    | SMR         | Italian  | t          |        100
-- :

Clue says nearby, so Italy or San Marino!

-- Check if only language in italy:
SELECT language FROM countrylanguage WHERE countrycode = 'ITA';
--  Italian
--  Sardinian
--  Friuli
--  French
--  German
--  Albaniana
--  Slovene
--  Romani 

-- Nope, not the only language

-- Check for San Marino
lydia=# SELECT language FROM countrylanguage WHERE countrycode = 'SMR';
 language
----------
 Italian
(1 row)

-- Clue #4: We're booking the first flight out – maybe we've actually got a chance to catch her this time. There are only two cities she could be flying to in the country. One is named the same as the country – that would be too obvious. We're following our gut on this one; find out what other city in that country she might be flying to.

-- San Marino, check the cities
lydia=# SELECT * FROM city WHERE city.countrycode = 'SMR';
  id  |    name    | countrycode |     district      | population
------+------------+-------------+-------------------+------------
 3170 | Serravalle | SMR         | Serravalle/Dogano |       4802
 3171 | San Marino | SMR         | San Marino        |       2294
(2 rows)
-- Omitting the obvious city, left with Serravalle

-- Clue #5: Oh no, she pulled a switch – there are two cities with very similar names, but in totally different parts of the globe! She's headed to South America as we speak; go find a city whose name is like the one we were headed to, but doesn't end the same. Find out the city, and do another search for what country it's in. Hurry!
lydia=# SELECT * FROM city WHERE city.countrycode = 'SMR';
--   id  |    name    | countrycode |     district      | population
-- ------+------------+-------------+-------------------+------------
--  3170 | Serravalle | SMR         | Serravalle/Dogano |       4802
--  3171 | San Marino | SMR         | San Marino        |       2294
-- (2 rows)

Serravalle 



-- Clue #6: We're close! Our South American agent says she just got a taxi at the airport, and is headed towards the capital! Look up the country's capital, and get there pronto! Send us the name of where you're headed and we'll follow right behind you!




-- Clue #7: She knows we're on to her – her taxi dropped her off at the international airport, and she beat us to the boarding gates. We have one chance to catch her, we just have to know where she's heading and beat her to the landing dock.

-- Lucky for us, she's getting cocky. She left us a note, and I'm sure she thinks she's very clever, but if we can crack it, we can finally put her where she belongs – behind bars.

-- Our playdate of late has been unusually fun –
-- As an agent, I'll say, you've been a joy to outrun.
-- And while the food here is great, and the people – so nice!
-- I need a little more sunshine with my slice of life.
-- So I'm off to add one to the population I find
-- In a city of ninety-one thousand and now, eighty five.


-- We're counting on you, gumshoe. Find out where she's headed, send us the info, and we'll be sure to meet her at the gates with bells on.




-- She's in ____________________________!
