Lab Session 11: Data Warehouses

In this lab we will be working with a data warehouse of energy consumption in a university campus.
The university campus has 7 buildings (the building names are: A, B, C, D, E, F, G). Each building has multiple sections:

Building A has 3 sections (A.1, A.2, A.3)

Building B has 3 sections (B.1, B.2, B.3)

Building C has 3 sections (C1, C2, C3)

Building D has 1 section (Main)

Building E has 2 sections (E.1, E.2)

Building F has 1 section (Main)

Building G has 3 sections (G.1, G.2, G.3)


###################################################################################
%%% Pergunta
6. Execute the following query to see the university buildings and their sections:

SELECT * FROM building_dimension ORDER BY building_id;

%%% Resposta

+-------------+---------------+------------------+
| building_id | building_name | building_section |
+-------------+---------------+------------------+
|           1 | C             | C1               |
|           2 | C             | C2               |
|           3 | C             | C3               |
|           5 | A             | A.2              |
|           6 | A             | A.1              |
|           7 | A             | A.3              |
|           8 | E             | E.1              |
|           9 | E             | E.2              |
|          11 | D             | Main             |
|          12 | G             | G.2              |
|          13 | B             | B.3              |
|          30 | B             | B.1              |
|          31 | G             | G.1              |
|          36 | F             | Main             |
|          37 | G             | G.3              |
|          38 | B             | B.2              |
+-------------+---------------+------------------+
16 rows in set (0.00 sec)


###################################################################################



###################################################################################
%%% Pergunta
7. Execute the following query to see all the energy meters installed throughout the
university campus:

SELECT * FROM datapoint_dimension ORDER BY datapoint_id;

%%% Resposta

+--------------+-------------+-------------+---------------+-------------------+
| datapoint_id | description | unit_symbol | reading_scale | reading_precision |
+--------------+-------------+-------------+---------------+-------------------+
|           11 | va1         | mwh         |             3 |                 6 |
|           12 | va2         | mwh         |             3 |                 6 |
|           13 | va3         | mwh         |             3 |                 6 |
|           21 | va1         | mwh         |             3 |                 6 |
|           22 | va2         | mwh         |             3 |                 6 |
|           23 | va3         | mwh         |             3 |                 6 |
|           31 | va1         | mwh         |             3 |                 6 |
|           32 | va2         | mwh         |             3 |                 6 |
|           33 | va3         | mwh         |             3 |                 6 |
|           41 | va1         | mwh         |             3 |                 6 |
|           42 | va2         | mwh         |             3 |                 6 |
|           43 | va3         | mwh         |             3 |                 6 |
|           51 | va1         | mwh         |             3 |                 6 |
|           52 | va2         | mwh         |             3 |                 6 |
|           53 | va3         | mwh         |             3 |                 6 |
|           61 | va1         | mwh         |             3 |                 6 |
|           62 | va2         | mwh         |             3 |                 6 |
|           63 | va3         | mwh         |             3 |                 6 |
|           71 | va1         | mwh         |             3 |                 6 |
|           72 | va2         | mwh         |             3 |                 6 |
|           73 | va3         | mwh         |             3 |                 6 |
|           81 | va1         | mwh         |             3 |                 6 |
|           82 | va2         | mwh         |             3 |                 6 |
|           83 | va3         | mwh         |             3 |                 6 |
|           91 | va1         | mwh         |             3 |                 6 |
|           92 | va2         | mwh         |             3 |                 6 |
|           93 | va3         | mwh         |             3 |                 6 |
|          101 | va1         | mwh         |             3 |                 6 |
|          102 | va2         | mwh         |             3 |                 6 |
|          103 | va3         | mwh         |             3 |                 6 |
|          111 | va1         | mwh         |             3 |                 6 |
|          112 | va2         | mwh         |             3 |                 6 |
|          113 | va3         | mwh         |             3 |                 6 |
|          121 | va1         | mwh         |             3 |                 6 |
|          122 | va2         | mwh         |             3 |                 6 |
|          123 | va3         | mwh         |             3 |                 6 |
|          131 | va1         | mwh         |             3 |                 6 |
|          132 | va2         | mwh         |             3 |                 6 |
|          133 | va3         | mwh         |             3 |                 6 |
|          141 | va1         | mwh         |             3 |                 6 |
|          142 | va2         | mwh         |             3 |                 6 |
|          143 | va3         | mwh         |             3 |                 6 |
|          151 | va1         | mwh         |             3 |                 6 |
|          152 | va2         | mwh         |             3 |                 6 |
|          153 | va3         | mwh         |             3 |                 6 |
|          161 | va1         | mwh         |             3 |                 6 |
|          162 | va2         | mwh         |             3 |                 6 |
|          163 | va3         | mwh         |             3 |                 6 |
|          171 | va1         | mwh         |             3 |                 6 |
|          172 | va2         | mwh         |             3 |                 6 |
|          173 | va3         | mwh         |             3 |                 6 |
|          181 | va1         | mwh         |             3 |                 6 |
|          182 | va2         | mwh         |             3 |                 6 |
|          183 | va3         | mwh         |             3 |                 6 |
|          191 | va1         | mwh         |             3 |                 6 |
|          192 | va2         | mwh         |             3 |                 6 |
|          193 | va3         | mwh         |             3 |                 6 |
|          201 | va1         | mwh         |             3 |                 6 |
|          202 | va2         | mwh         |             3 |                 6 |
|          203 | va3         | mwh         |             3 |                 6 |
|          211 | va1         | mwh         |             3 |                 6 |
|          212 | va2         | mwh         |             3 |                 6 |
|          213 | va3         | mwh         |             3 |                 6 |
|          221 | va1         | mwh         |             3 |                 6 |
|          222 | va2         | mwh         |             3 |                 6 |
|          223 | va3         | mwh         |             3 |                 6 |
|          231 | va1         | mwh         |             3 |                 6 |
|          232 | va2         | mwh         |             3 |                 6 |
|          233 | va3         | mwh         |             3 |                 6 |
|          241 | va1         | mwh         |             3 |                 6 |
|          242 | va2         | mwh         |             3 |                 6 |
|          243 | va3         | mwh         |             3 |                 6 |
|          251 | va1         | mwh         |             3 |                 6 |
|          252 | va2         | mwh         |             3 |                 6 |
|          253 | va3         | mwh         |             3 |                 6 |
|          261 | va1         | mwh         |             3 |                 6 |
|          262 | va2         | mwh         |             3 |                 6 |
|          263 | va3         | mwh         |             3 |                 6 |
|          301 | va1         | mwh         |             3 |                 6 |
|          302 | va2         | mwh         |             3 |                 6 |
|          303 | va3         | mwh         |             3 |                 6 |
|          311 | va1         | mwh         |             3 |                 6 |
|          312 | va2         | mwh         |             3 |                 6 |
|          313 | va3         | mwh         |             3 |                 6 |
|          321 | va1         | mwh         |             3 |                 6 |
|          322 | va2         | mwh         |             3 |                 6 |
|          323 | va3         | mwh         |             3 |                 6 |
|          331 | va1         | mwh         |             3 |                 6 |
|          332 | va2         | mwh         |             3 |                 6 |
|          333 | va3         | mwh         |             3 |                 6 |
|          341 | va1         | mwh         |             3 |                 6 |
|          342 | va2         | mwh         |             3 |                 6 |
|          343 | va3         | mwh         |             3 |                 6 |
|          351 | va1         | mwh         |             3 |                 6 |
|          352 | va2         | mwh         |             3 |                 6 |
|          353 | va3         | mwh         |             3 |                 6 |
|          361 | va1         | mwh         |             3 |                 6 |
|          362 | va2         | mwh         |             3 |                 6 |
|          363 | va3         | mwh         |             3 |                 6 |
|          371 | va1         | mwh         |             3 |                 6 |
|          372 | va2         | mwh         |             3 |                 6 |
|          373 | va3         | mwh         |             3 |                 6 |
|          381 | va1         | mwh         |             3 |                 6 |
|          382 | va2         | mwh         |             3 |                 6 |
|          383 | va3         | mwh         |             3 |                 6 |
|          391 | va1         | mwh         |             3 |                 6 |
|          392 | va2         | mwh         |             3 |                 6 |
|          393 | va3         | mwh         |             3 |                 6 |
+--------------+-------------+-------------+---------------+-------------------+
108 rows in set (0.00 sec)


###################################################################################




###################################################################################
%%% Pergunta
8. You will notice that there is a total of 108 data points, many more than the 48 data
points that we are interested in. However, with the following query you can check that
only the readings from 48 data points have been collected:

SELECT DISTINCT datapoint_id FROM datapoint_dimension NATURAL JOIN meter_readings;

%%% Resposta

+--------------+
| datapoint_id |
+--------------+
|          301 |
|           11 |
|           21 |
|           81 |
|           91 |
|          111 |
|          131 |
|          311 |
|          361 |
|          371 |
|           31 |
|          121 |
|          381 |
|           51 |
|           61 |
|           71 |
|          132 |
|           12 |
|           22 |
|           82 |
|          112 |
|          122 |
|          302 |
|          362 |
|           32 |
|           92 |
|          312 |
|          372 |
|          382 |
|           52 |
|           62 |
|           72 |
|          133 |
|           13 |
|           23 |
|           83 |
|          113 |
|          123 |
|          303 |
|          363 |
|           33 |
|           93 |
|          313 |
|          373 |
|          383 |
|           53 |
|           63 |
|           73 |
+--------------+
48 rows in set (0.00 sec)

###################################################################################



###################################################################################
%%% Pergunta
9. Execute the following command to see all the columns in the date dimension:

DESCRIBE date_dimension;

%%% Resposta

+------------------+-------------+------+-----+---------+-------+
| Field            | Type        | Null | Key | Default | Extra |
+------------------+-------------+------+-----+---------+-------+
| date_id          | int(11)     | NO   |     | NULL    |       |
| date_time        | date        | NO   |     | NULL    |       |
| date_year        | int(11)     | NO   |     | NULL    |       |
| is_leap_year     | tinyint(1)  | NO   |     | NULL    |       |
| quarter          | int(11)     | NO   |     | NULL    |       |
| month_number     | int(11)     | NO   |     | NULL    |       |
| month_name       | varchar(9)  | NO   |     | NULL    |       |
| month_day_number | int(11)     | YES  |     | 0       |       |
| month_start_date | date        | NO   |     | NULL    |       |
| month_end_date   | date        | NO   |     | NULL    |       |
| week_number      | int(11)     | NO   |     | NULL    |       |
| week_day_number  | int(11)     | NO   |     | NULL    |       |
| week_day_name    | varchar(9)  | NO   |     | NULL    |       |
| week_day_type    | varchar(7)  | NO   |     | NULL    |       |
| week_start_date  | date        | NO   |     | NULL    |       |
| week_end_date    | date        | NO   |     | NULL    |       |
| period           | varchar(20) | NO   |     | NULL    |       |
+------------------+-------------+------+-----+---------+-------+
17 rows in set (0.01 sec)

###################################################################################


###################################################################################
%%% Pergunta
10. Execute the following query to see the kind of data that is stored in that table:

SELECT date_id, date_year, month_name, month_day_number, week_number, week_day_name, period FROM date_dimension;

%%% Resposta

+----------+-----------+------------+------------------+-------------+---------------+------------------+
| date_id  | date_year | month_name | month_day_number | week_number | week_day_name | period           |
+----------+-----------+------------+------------------+-------------+---------------+------------------+
| 20130101 |      2013 | jan        |                1 |           1 | Tuesday       | Winter break     |
| 20130102 |      2013 | jan        |                2 |           1 | Wednesday     | Winter break     |
| 20130103 |      2013 | jan        |                3 |           1 | Thursday      | Winter break     |
| 20130104 |      2013 | jan        |                4 |           1 | Friday        | Winter break     |
| 20130105 |      2013 | jan        |                5 |           1 | Saturday      | Winter break     |
| 20130106 |      2013 | jan        |                6 |           1 | Sunday        | Winter break     |
| 20130107 |      2013 | jan        |                7 |           2 | Monday        | Normal           |
| 20130108 |      2013 | jan        |                8 |           2 | Tuesday       | Normal           |
| 20130109 |      2013 | jan        |                9 |           2 | Wednesday     | Normal           |
| 20130110 |      2013 | jan        |               10 |           2 | Thursday      | Normal           |
| 20130111 |      2013 | jan        |               11 |           2 | Friday        | Normal           |
| 20130112 |      2013 | jan        |               12 |           2 | Saturday      | Normal           |
| 20130113 |      2013 | jan        |               13 |           2 | Sunday        | Normal           |
| 20130114 |      2013 | jan        |               14 |           3 | Monday        | Normal           |
| 20130115 |      2013 | jan        |               15 |           3 | Tuesday       | Normal           |
| 20130116 |      2013 | jan        |               16 |           3 | Wednesday     | Normal           |
| 20130117 |      2013 | jan        |               17 |           3 | Thursday      | Normal           |
| 20130118 |      2013 | jan        |               18 |           3 | Friday        | Normal           |
| 20130119 |      2013 | jan        |               19 |           3 | Saturday      | Normal           |
| 20130120 |      2013 | jan        |               20 |           3 | Sunday        | Normal           |
| 20130121 |      2013 | jan        |               21 |           4 | Monday        | Normal           |
| 20130122 |      2013 | jan        |               22 |           4 | Tuesday       | Normal           |
| 20130123 |      2013 | jan        |               23 |           4 | Wednesday     | Normal           |
| 20130124 |      2013 | jan        |               24 |           4 | Thursday      | Normal           |
| 20130125 |      2013 | jan        |               25 |           4 | Friday        | Normal           |
| 20130126 |      2013 | jan        |               26 |           4 | Saturday      | Normal           |
| 20130127 |      2013 | jan        |               27 |           4 | Sunday        | Normal           |
| 20130128 |      2013 | jan        |               28 |           5 | Monday        | Normal           |
| 20130129 |      2013 | jan        |               29 |           5 | Tuesday       | Normal           |
| 20130130 |      2013 | jan        |               30 |           5 | Wednesday     | Normal           |
| 20130131 |      2013 | jan        |               31 |           5 | Thursday      | Normal           |
| 20130201 |      2013 | feb        |                1 |           5 | Friday        | Normal           |
| 20130202 |      2013 | feb        |                2 |           5 | Saturday      | Normal           |
| 20130203 |      2013 | feb        |                3 |           5 | Sunday        | Normal           |
| 20130204 |      2013 | feb        |                4 |           6 | Monday        | Normal           |
| 20130205 |      2013 | feb        |                5 |           6 | Tuesday       | Normal           |
| 20130206 |      2013 | feb        |                6 |           6 | Wednesday     | Normal           |
| 20130207 |      2013 | feb        |                7 |           6 | Thursday      | Normal           |
| 20130208 |      2013 | feb        |                8 |           6 | Friday        | Normal           |
| 20130209 |      2013 | feb        |                9 |           6 | Saturday      | Normal           |
| 20130210 |      2013 | feb        |               10 |           6 | Sunday        | Normal           |
| 20130211 |      2013 | feb        |               11 |           7 | Monday        | Normal           |
| 20130212 |      2013 | feb        |               12 |           7 | Tuesday       | Normal           |
| 20130213 |      2013 | feb        |               13 |           7 | Wednesday     | Normal           |
| 20130214 |      2013 | feb        |               14 |           7 | Thursday      | Normal           |
| 20130215 |      2013 | feb        |               15 |           7 | Friday        | Normal           |
| 20130216 |      2013 | feb        |               16 |           7 | Saturday      | Normal           |
| 20130217 |      2013 | feb        |               17 |           7 | Sunday        | Normal           |
| 20130218 |      2013 | feb        |               18 |           8 | Monday        | Normal           |
| 20130219 |      2013 | feb        |               19 |           8 | Tuesday       | Normal           |
| 20130220 |      2013 | feb        |               20 |           8 | Wednesday     | Normal           |
| 20130221 |      2013 | feb        |               21 |           8 | Thursday      | Normal           |
| 20130222 |      2013 | feb        |               22 |           8 | Friday        | Normal           |
| 20130223 |      2013 | feb        |               23 |           8 | Saturday      | Normal           |
| 20130224 |      2013 | feb        |               24 |           8 | Sunday        | Normal           |
| 20130225 |      2013 | feb        |               25 |           9 | Monday        | Normal           |
| 20130226 |      2013 | feb        |               26 |           9 | Tuesday       | Normal           |
| 20130227 |      2013 | feb        |               27 |           9 | Wednesday     | Normal           |
| 20130228 |      2013 | feb        |               28 |           9 | Thursday      | Normal           |
| 20130301 |      2013 | mar        |                1 |           9 | Friday        | Normal           |
| 20130302 |      2013 | mar        |                2 |           9 | Saturday      | Normal           |
| 20130303 |      2013 | mar        |                3 |           9 | Sunday        | Normal           |
| 20130304 |      2013 | mar        |                4 |          10 | Monday        | Normal           |
| 20130305 |      2013 | mar        |                5 |          10 | Tuesday       | Normal           |
| 20130306 |      2013 | mar        |                6 |          10 | Wednesday     | Normal           |
| 20130307 |      2013 | mar        |                7 |          10 | Thursday      | Normal           |
| 20130308 |      2013 | mar        |                8 |          10 | Friday        | Normal           |
| 20130309 |      2013 | mar        |                9 |          10 | Saturday      | Normal           |
| 20130310 |      2013 | mar        |               10 |          10 | Sunday        | Normal           |
| 20130311 |      2013 | mar        |               11 |          11 | Monday        | Normal           |
| 20130312 |      2013 | mar        |               12 |          11 | Tuesday       | Normal           |
| 20130313 |      2013 | mar        |               13 |          11 | Wednesday     | Normal           |
| 20130314 |      2013 | mar        |               14 |          11 | Thursday      | Normal           |
| 20130315 |      2013 | mar        |               15 |          11 | Friday        | Normal           |
| 20130316 |      2013 | mar        |               16 |          11 | Saturday      | Normal           |
| 20130317 |      2013 | mar        |               17 |          11 | Sunday        | Normal           |
| 20130318 |      2013 | mar        |               18 |          12 | Monday        | Normal           |
| 20130319 |      2013 | mar        |               19 |          12 | Tuesday       | Normal           |
| 20130320 |      2013 | mar        |               20 |          12 | Wednesday     | Normal           |
| 20130321 |      2013 | mar        |               21 |          12 | Thursday      | Normal           |
| 20130322 |      2013 | mar        |               22 |          12 | Friday        | Normal           |
| 20130323 |      2013 | mar        |               23 |          12 | Saturday      | Normal           |
| 20130324 |      2013 | mar        |               24 |          12 | Sunday        | Normal           |
| 20130325 |      2013 | mar        |               25 |          13 | Monday        | Normal           |
| 20130326 |      2013 | mar        |               26 |          13 | Tuesday       | Normal           |
| 20130327 |      2013 | mar        |               27 |          13 | Wednesday     | Normal           |
| 20130328 |      2013 | mar        |               28 |          13 | Thursday      | Normal           |
| 20130329 |      2013 | mar        |               29 |          13 | Friday        | Normal           |
| 20130330 |      2013 | mar        |               30 |          13 | Saturday      | Normal           |
| 20130331 |      2013 | mar        |               31 |          13 | Sunday        | Normal           |
| 20130401 |      2013 | apr        |                1 |          14 | Monday        | Normal           |
| 20130402 |      2013 | apr        |                2 |          14 | Tuesday       | Normal           |
| 20130403 |      2013 | apr        |                3 |          14 | Wednesday     | Normal           |
| 20130404 |      2013 | apr        |                4 |          14 | Thursday      | Normal           |
| 20130405 |      2013 | apr        |                5 |          14 | Friday        | Normal           |
| 20130406 |      2013 | apr        |                6 |          14 | Saturday      | Normal           |
| 20130407 |      2013 | apr        |                7 |          14 | Sunday        | Normal           |
| 20130408 |      2013 | apr        |                8 |          15 | Monday        | Normal           |
| 20130409 |      2013 | apr        |                9 |          15 | Tuesday       | Normal           |
| 20130410 |      2013 | apr        |               10 |          15 | Wednesday     | Normal           |
| 20130411 |      2013 | apr        |               11 |          15 | Thursday      | Normal           |
| 20130412 |      2013 | apr        |               12 |          15 | Friday        | Normal           |
| 20130413 |      2013 | apr        |               13 |          15 | Saturday      | Normal           |
| 20130414 |      2013 | apr        |               14 |          15 | Sunday        | Normal           |
| 20130415 |      2013 | apr        |               15 |          16 | Monday        | Normal           |
| 20130416 |      2013 | apr        |               16 |          16 | Tuesday       | Normal           |
| 20130417 |      2013 | apr        |               17 |          16 | Wednesday     | Normal           |
| 20130418 |      2013 | apr        |               18 |          16 | Thursday      | Normal           |
| 20130419 |      2013 | apr        |               19 |          16 | Friday        | Normal           |
| 20130420 |      2013 | apr        |               20 |          16 | Saturday      | Normal           |
| 20130421 |      2013 | apr        |               21 |          16 | Sunday        | Normal           |
| 20130422 |      2013 | apr        |               22 |          17 | Monday        | Normal           |
| 20130423 |      2013 | apr        |               23 |          17 | Tuesday       | Normal           |
| 20130424 |      2013 | apr        |               24 |          17 | Wednesday     | Normal           |
| 20130425 |      2013 | apr        |               25 |          17 | Thursday      | Normal           |
| 20130426 |      2013 | apr        |               26 |          17 | Friday        | Normal           |
| 20130427 |      2013 | apr        |               27 |          17 | Saturday      | Normal           |
| 20130428 |      2013 | apr        |               28 |          17 | Sunday        | Normal           |
| 20130429 |      2013 | apr        |               29 |          18 | Monday        | Normal           |
| 20130430 |      2013 | apr        |               30 |          18 | Tuesday       | Normal           |
| 20130501 |      2013 | may        |                1 |          18 | Wednesday     | Normal           |
| 20130502 |      2013 | may        |                2 |          18 | Thursday      | Normal           |
| 20130503 |      2013 | may        |                3 |          18 | Friday        | Normal           |
| 20130504 |      2013 | may        |                4 |          18 | Saturday      | Normal           |
| 20130505 |      2013 | may        |                5 |          18 | Sunday        | Normal           |
| 20130506 |      2013 | may        |                6 |          19 | Monday        | Normal           |
| 20130507 |      2013 | may        |                7 |          19 | Tuesday       | Normal           |
| 20130508 |      2013 | may        |                8 |          19 | Wednesday     | Normal           |
| 20130509 |      2013 | may        |                9 |          19 | Thursday      | Normal           |
| 20130510 |      2013 | may        |               10 |          19 | Friday        | Normal           |
| 20130511 |      2013 | may        |               11 |          19 | Saturday      | Normal           |
| 20130512 |      2013 | may        |               12 |          19 | Sunday        | Normal           |
| 20130513 |      2013 | may        |               13 |          20 | Monday        | Normal           |
| 20130514 |      2013 | may        |               14 |          20 | Tuesday       | Normal           |
| 20130515 |      2013 | may        |               15 |          20 | Wednesday     | Normal           |
| 20130516 |      2013 | may        |               16 |          20 | Thursday      | Normal           |
| 20130517 |      2013 | may        |               17 |          20 | Friday        | Normal           |
| 20130518 |      2013 | may        |               18 |          20 | Saturday      | Normal           |
| 20130519 |      2013 | may        |               19 |          20 | Sunday        | Normal           |
| 20130520 |      2013 | may        |               20 |          21 | Monday        | Normal           |
| 20130521 |      2013 | may        |               21 |          21 | Tuesday       | Normal           |
| 20130522 |      2013 | may        |               22 |          21 | Wednesday     | Normal           |
| 20130523 |      2013 | may        |               23 |          21 | Thursday      | Normal           |
| 20130524 |      2013 | may        |               24 |          21 | Friday        | Normal           |
| 20130525 |      2013 | may        |               25 |          21 | Saturday      | Normal           |
| 20130526 |      2013 | may        |               26 |          21 | Sunday        | Normal           |
| 20130527 |      2013 | may        |               27 |          22 | Monday        | Normal           |
| 20130528 |      2013 | may        |               28 |          22 | Tuesday       | Normal           |
| 20130529 |      2013 | may        |               29 |          22 | Wednesday     | Normal           |
| 20130530 |      2013 | may        |               30 |          22 | Thursday      | Normal           |
| 20130531 |      2013 | may        |               31 |          22 | Friday        | Normal           |
| 20130601 |      2013 | jun        |                1 |          22 | Saturday      | Normal           |
| 20130602 |      2013 | jun        |                2 |          22 | Sunday        | Normal           |
| 20130603 |      2013 | jun        |                3 |          23 | Monday        | Normal           |
| 20130604 |      2013 | jun        |                4 |          23 | Tuesday       | Normal           |
| 20130605 |      2013 | jun        |                5 |          23 | Wednesday     | Normal           |
| 20130606 |      2013 | jun        |                6 |          23 | Thursday      | Normal           |
| 20130607 |      2013 | jun        |                7 |          23 | Friday        | Normal           |
| 20130608 |      2013 | jun        |                8 |          23 | Saturday      | Normal           |
| 20130609 |      2013 | jun        |                9 |          23 | Sunday        | Normal           |
| 20130610 |      2013 | jun        |               10 |          24 | Monday        | Normal           |
| 20130611 |      2013 | jun        |               11 |          24 | Tuesday       | Normal           |
| 20130612 |      2013 | jun        |               12 |          24 | Wednesday     | Normal           |
| 20130613 |      2013 | jun        |               13 |          24 | Thursday      | Normal           |
| 20130614 |      2013 | jun        |               14 |          24 | Friday        | Normal           |
| 20130615 |      2013 | jun        |               15 |          24 | Saturday      | Normal           |
| 20130616 |      2013 | jun        |               16 |          24 | Sunday        | Normal           |
| 20130617 |      2013 | jun        |               17 |          25 | Monday        | Normal           |
| 20130618 |      2013 | jun        |               18 |          25 | Tuesday       | Normal           |
| 20130619 |      2013 | jun        |               19 |          25 | Wednesday     | Normal           |
| 20130620 |      2013 | jun        |               20 |          25 | Thursday      | Normal           |
| 20130621 |      2013 | jun        |               21 |          25 | Friday        | Normal           |
| 20130622 |      2013 | jun        |               22 |          25 | Saturday      | Normal           |
| 20130623 |      2013 | jun        |               23 |          25 | Sunday        | Normal           |
| 20130624 |      2013 | jun        |               24 |          26 | Monday        | Normal           |
| 20130625 |      2013 | jun        |               25 |          26 | Tuesday       | Normal           |
| 20130626 |      2013 | jun        |               26 |          26 | Wednesday     | Normal           |
| 20130627 |      2013 | jun        |               27 |          26 | Thursday      | Normal           |
| 20130628 |      2013 | jun        |               28 |          26 | Friday        | Normal           |
| 20130629 |      2013 | jun        |               29 |          26 | Saturday      | Normal           |
| 20130630 |      2013 | jun        |               30 |          26 | Sunday        | Normal           |
| 20130701 |      2013 | jul        |                1 |          27 | Monday        | Summer break     |
| 20130702 |      2013 | jul        |                2 |          27 | Tuesday       | Summer break     |
| 20130703 |      2013 | jul        |                3 |          27 | Wednesday     | Summer break     |
| 20130704 |      2013 | jul        |                4 |          27 | Thursday      | Summer break     |
| 20130705 |      2013 | jul        |                5 |          27 | Friday        | Summer break     |
| 20130706 |      2013 | jul        |                6 |          27 | Saturday      | Summer break     |
| 20130707 |      2013 | jul        |                7 |          27 | Sunday        | Summer break     |
| 20130708 |      2013 | jul        |                8 |          28 | Monday        | Summer break     |
| 20130709 |      2013 | jul        |                9 |          28 | Tuesday       | Summer break     |
| 20130710 |      2013 | jul        |               10 |          28 | Wednesday     | Summer break     |
| 20130711 |      2013 | jul        |               11 |          28 | Thursday      | Summer break     |
| 20130712 |      2013 | jul        |               12 |          28 | Friday        | Summer break     |
| 20130713 |      2013 | jul        |               13 |          28 | Saturday      | Summer break     |
| 20130714 |      2013 | jul        |               14 |          28 | Sunday        | Summer break     |
| 20130715 |      2013 | jul        |               15 |          29 | Monday        | Summer break     |
| 20130716 |      2013 | jul        |               16 |          29 | Tuesday       | Summer break     |
| 20130717 |      2013 | jul        |               17 |          29 | Wednesday     | Summer break     |
| 20130718 |      2013 | jul        |               18 |          29 | Thursday      | Summer break     |
| 20130719 |      2013 | jul        |               19 |          29 | Friday        | Summer break     |
| 20130720 |      2013 | jul        |               20 |          29 | Saturday      | Summer break     |
| 20130721 |      2013 | jul        |               21 |          29 | Sunday        | Summer break     |
| 20130722 |      2013 | jul        |               22 |          30 | Monday        | Summer break     |
| 20130723 |      2013 | jul        |               23 |          30 | Tuesday       | Summer break     |
| 20130724 |      2013 | jul        |               24 |          30 | Wednesday     | Summer break     |
| 20130725 |      2013 | jul        |               25 |          30 | Thursday      | Summer break     |
| 20130726 |      2013 | jul        |               26 |          30 | Friday        | Summer break     |
| 20130727 |      2013 | jul        |               27 |          30 | Saturday      | Summer break     |
| 20130728 |      2013 | jul        |               28 |          30 | Sunday        | Summer break     |
| 20130729 |      2013 | jul        |               29 |          31 | Monday        | Summer break     |
| 20130730 |      2013 | jul        |               30 |          31 | Tuesday       | Summer break     |
| 20130731 |      2013 | jul        |               31 |          31 | Wednesday     | Summer break     |
| 20130801 |      2013 | aug        |                1 |          31 | Thursday      | Summer break     |
| 20130802 |      2013 | aug        |                2 |          31 | Friday        | Summer break     |
| 20130803 |      2013 | aug        |                3 |          31 | Saturday      | Summer break     |
| 20130804 |      2013 | aug        |                4 |          31 | Sunday        | Summer break     |
| 20130805 |      2013 | aug        |                5 |          32 | Monday        | Summer break     |
| 20130806 |      2013 | aug        |                6 |          32 | Tuesday       | Summer break     |
| 20130807 |      2013 | aug        |                7 |          32 | Wednesday     | Summer break     |
| 20130808 |      2013 | aug        |                8 |          32 | Thursday      | Summer break     |
| 20130809 |      2013 | aug        |                9 |          32 | Friday        | Summer break     |
| 20130810 |      2013 | aug        |               10 |          32 | Saturday      | Summer break     |
| 20130811 |      2013 | aug        |               11 |          32 | Sunday        | Summer break     |
| 20130812 |      2013 | aug        |               12 |          33 | Monday        | Summer break     |
| 20130813 |      2013 | aug        |               13 |          33 | Tuesday       | Summer break     |
| 20130814 |      2013 | aug        |               14 |          33 | Wednesday     | Summer break     |
| 20130815 |      2013 | aug        |               15 |          33 | Thursday      | Summer break     |
| 20130816 |      2013 | aug        |               16 |          33 | Friday        | Summer break     |
| 20130817 |      2013 | aug        |               17 |          33 | Saturday      | Summer break     |
| 20130818 |      2013 | aug        |               18 |          33 | Sunday        | Summer break     |
| 20130819 |      2013 | aug        |               19 |          34 | Monday        | Summer break     |
| 20130820 |      2013 | aug        |               20 |          34 | Tuesday       | Summer break     |
| 20130821 |      2013 | aug        |               21 |          34 | Wednesday     | Summer break     |
| 20130822 |      2013 | aug        |               22 |          34 | Thursday      | Summer break     |
| 20130823 |      2013 | aug        |               23 |          34 | Friday        | Summer break     |
| 20130824 |      2013 | aug        |               24 |          34 | Saturday      | Summer break     |
| 20130825 |      2013 | aug        |               25 |          34 | Sunday        | Summer break     |
| 20130826 |      2013 | aug        |               26 |          35 | Monday        | Summer break     |
| 20130827 |      2013 | aug        |               27 |          35 | Tuesday       | Summer break     |
| 20130828 |      2013 | aug        |               28 |          35 | Wednesday     | Summer break     |
| 20130829 |      2013 | aug        |               29 |          35 | Thursday      | Summer break     |
| 20130830 |      2013 | aug        |               30 |          35 | Friday        | Summer break     |
| 20130831 |      2013 | aug        |               31 |          35 | Saturday      | Summer break     |
| 20130901 |      2013 | sep        |                1 |          35 | Sunday        | Normal           |
| 20130902 |      2013 | sep        |                2 |          36 | Monday        | Normal           |
| 20130903 |      2013 | sep        |                3 |          36 | Tuesday       | Normal           |
| 20130904 |      2013 | sep        |                4 |          36 | Wednesday     | Normal           |
| 20130905 |      2013 | sep        |                5 |          36 | Thursday      | Normal           |
| 20130906 |      2013 | sep        |                6 |          36 | Friday        | Normal           |
| 20130907 |      2013 | sep        |                7 |          36 | Saturday      | Normal           |
| 20130908 |      2013 | sep        |                8 |          36 | Sunday        | Normal           |
| 20130909 |      2013 | sep        |                9 |          37 | Monday        | Normal           |
| 20130910 |      2013 | sep        |               10 |          37 | Tuesday       | Normal           |
| 20130911 |      2013 | sep        |               11 |          37 | Wednesday     | Normal           |
| 20130912 |      2013 | sep        |               12 |          37 | Thursday      | Normal           |
| 20130913 |      2013 | sep        |               13 |          37 | Friday        | Normal           |
| 20130914 |      2013 | sep        |               14 |          37 | Saturday      | Normal           |
| 20130915 |      2013 | sep        |               15 |          37 | Sunday        | Normal           |
| 20130916 |      2013 | sep        |               16 |          38 | Monday        | Normal           |
| 20130917 |      2013 | sep        |               17 |          38 | Tuesday       | Normal           |
| 20130918 |      2013 | sep        |               18 |          38 | Wednesday     | Normal           |
| 20130919 |      2013 | sep        |               19 |          38 | Thursday      | Normal           |
| 20130920 |      2013 | sep        |               20 |          38 | Friday        | Normal           |
| 20130921 |      2013 | sep        |               21 |          38 | Saturday      | Normal           |
| 20130922 |      2013 | sep        |               22 |          38 | Sunday        | Normal           |
| 20130923 |      2013 | sep        |               23 |          39 | Monday        | Normal           |
| 20130924 |      2013 | sep        |               24 |          39 | Tuesday       | Normal           |
| 20130925 |      2013 | sep        |               25 |          39 | Wednesday     | Normal           |
| 20130926 |      2013 | sep        |               26 |          39 | Thursday      | Normal           |
| 20130927 |      2013 | sep        |               27 |          39 | Friday        | Normal           |
| 20130928 |      2013 | sep        |               28 |          39 | Saturday      | Normal           |
| 20130929 |      2013 | sep        |               29 |          39 | Sunday        | Normal           |
| 20130930 |      2013 | sep        |               30 |          40 | Monday        | Normal           |
| 20131001 |      2013 | oct        |                1 |          40 | Tuesday       | Normal           |
| 20131002 |      2013 | oct        |                2 |          40 | Wednesday     | Normal           |
| 20131003 |      2013 | oct        |                3 |          40 | Thursday      | Normal           |
| 20131004 |      2013 | oct        |                4 |          40 | Friday        | Normal           |
| 20131005 |      2013 | oct        |                5 |          40 | Saturday      | Normal           |
| 20131006 |      2013 | oct        |                6 |          40 | Sunday        | Normal           |
| 20131007 |      2013 | oct        |                7 |          41 | Monday        | Normal           |
| 20131008 |      2013 | oct        |                8 |          41 | Tuesday       | Normal           |
| 20131009 |      2013 | oct        |                9 |          41 | Wednesday     | Normal           |
| 20131010 |      2013 | oct        |               10 |          41 | Thursday      | Normal           |
| 20131011 |      2013 | oct        |               11 |          41 | Friday        | Normal           |
| 20131012 |      2013 | oct        |               12 |          41 | Saturday      | Normal           |
| 20131013 |      2013 | oct        |               13 |          41 | Sunday        | Normal           |
| 20131014 |      2013 | oct        |               14 |          42 | Monday        | Normal           |
| 20131015 |      2013 | oct        |               15 |          42 | Tuesday       | Normal           |
| 20131016 |      2013 | oct        |               16 |          42 | Wednesday     | Normal           |
| 20131017 |      2013 | oct        |               17 |          42 | Thursday      | Normal           |
| 20131018 |      2013 | oct        |               18 |          42 | Friday        | Normal           |
| 20131019 |      2013 | oct        |               19 |          42 | Saturday      | Normal           |
| 20131020 |      2013 | oct        |               20 |          42 | Sunday        | Normal           |
| 20131021 |      2013 | oct        |               21 |          43 | Monday        | Normal           |
| 20131022 |      2013 | oct        |               22 |          43 | Tuesday       | Normal           |
| 20131023 |      2013 | oct        |               23 |          43 | Wednesday     | Normal           |
| 20131024 |      2013 | oct        |               24 |          43 | Thursday      | Normal           |
| 20131025 |      2013 | oct        |               25 |          43 | Friday        | Normal           |
| 20131026 |      2013 | oct        |               26 |          43 | Saturday      | Normal           |
| 20131027 |      2013 | oct        |               27 |          43 | Sunday        | Normal           |
| 20131028 |      2013 | oct        |               28 |          44 | Monday        | Normal           |
| 20131029 |      2013 | oct        |               29 |          44 | Tuesday       | Normal           |
| 20131030 |      2013 | oct        |               30 |          44 | Wednesday     | Normal           |
| 20131031 |      2013 | oct        |               31 |          44 | Thursday      | Normal           |
| 20131101 |      2013 | nov        |                1 |          44 | Friday        | Normal           |
| 20131102 |      2013 | nov        |                2 |          44 | Saturday      | Normal           |
| 20131103 |      2013 | nov        |                3 |          44 | Sunday        | Normal           |
| 20131104 |      2013 | nov        |                4 |          45 | Monday        | Normal           |
| 20131105 |      2013 | nov        |                5 |          45 | Tuesday       | Normal           |
| 20131106 |      2013 | nov        |                6 |          45 | Wednesday     | Normal           |
| 20131107 |      2013 | nov        |                7 |          45 | Thursday      | Normal           |
| 20131108 |      2013 | nov        |                8 |          45 | Friday        | Normal           |
| 20131109 |      2013 | nov        |                9 |          45 | Saturday      | Normal           |
| 20131110 |      2013 | nov        |               10 |          45 | Sunday        | Normal           |
| 20131111 |      2013 | nov        |               11 |          46 | Monday        | Normal           |
| 20131112 |      2013 | nov        |               12 |          46 | Tuesday       | Normal           |
| 20131113 |      2013 | nov        |               13 |          46 | Wednesday     | Normal           |
| 20131114 |      2013 | nov        |               14 |          46 | Thursday      | Normal           |
| 20131115 |      2013 | nov        |               15 |          46 | Friday        | Christmas season |
| 20131116 |      2013 | nov        |               16 |          46 | Saturday      | Christmas season |
| 20131117 |      2013 | nov        |               17 |          46 | Sunday        | Christmas season |
| 20131118 |      2013 | nov        |               18 |          47 | Monday        | Christmas season |
| 20131119 |      2013 | nov        |               19 |          47 | Tuesday       | Christmas season |
| 20131120 |      2013 | nov        |               20 |          47 | Wednesday     | Christmas season |
| 20131121 |      2013 | nov        |               21 |          47 | Thursday      | Christmas season |
| 20131122 |      2013 | nov        |               22 |          47 | Friday        | Christmas season |
| 20131123 |      2013 | nov        |               23 |          47 | Saturday      | Christmas season |
| 20131124 |      2013 | nov        |               24 |          47 | Sunday        | Christmas season |
| 20131125 |      2013 | nov        |               25 |          48 | Monday        | Christmas season |
| 20131126 |      2013 | nov        |               26 |          48 | Tuesday       | Christmas season |
| 20131127 |      2013 | nov        |               27 |          48 | Wednesday     | Christmas season |
| 20131128 |      2013 | nov        |               28 |          48 | Thursday      | Christmas season |
| 20131129 |      2013 | nov        |               29 |          48 | Friday        | Christmas season |
| 20131130 |      2013 | nov        |               30 |          48 | Saturday      | Christmas season |
| 20131201 |      2013 | dec        |                1 |          48 | Sunday        | Christmas season |
| 20131202 |      2013 | dec        |                2 |          49 | Monday        | Christmas season |
| 20131203 |      2013 | dec        |                3 |          49 | Tuesday       | Christmas season |
| 20131204 |      2013 | dec        |                4 |          49 | Wednesday     | Christmas season |
| 20131205 |      2013 | dec        |                5 |          49 | Thursday      | Christmas season |
| 20131206 |      2013 | dec        |                6 |          49 | Friday        | Christmas season |
| 20131207 |      2013 | dec        |                7 |          49 | Saturday      | Christmas season |
| 20131208 |      2013 | dec        |                8 |          49 | Sunday        | Christmas season |
| 20131209 |      2013 | dec        |                9 |          50 | Monday        | Christmas season |
| 20131210 |      2013 | dec        |               10 |          50 | Tuesday       | Christmas season |
| 20131211 |      2013 | dec        |               11 |          50 | Wednesday     | Christmas season |
| 20131212 |      2013 | dec        |               12 |          50 | Thursday      | Christmas season |
| 20131213 |      2013 | dec        |               13 |          50 | Friday        | Christmas season |
| 20131214 |      2013 | dec        |               14 |          50 | Saturday      | Christmas season |
| 20131215 |      2013 | dec        |               15 |          50 | Sunday        | Christmas season |
| 20131216 |      2013 | dec        |               16 |          51 | Monday        | Christmas season |
| 20131217 |      2013 | dec        |               17 |          51 | Tuesday       | Christmas season |
| 20131218 |      2013 | dec        |               18 |          51 | Wednesday     | Christmas season |
| 20131219 |      2013 | dec        |               19 |          51 | Thursday      | Christmas season |
| 20131220 |      2013 | dec        |               20 |          51 | Friday        | Christmas season |
| 20131221 |      2013 | dec        |               21 |          51 | Saturday      | Christmas season |
| 20131222 |      2013 | dec        |               22 |          51 | Sunday        | Christmas season |
| 20131223 |      2013 | dec        |               23 |          52 | Monday        | Christmas season |
| 20131224 |      2013 | dec        |               24 |          52 | Tuesday       | Christmas season |
| 20131225 |      2013 | dec        |               25 |          52 | Wednesday     | Christmas season |
| 20131226 |      2013 | dec        |               26 |          52 | Thursday      | Winter break     |
| 20131227 |      2013 | dec        |               27 |          52 | Friday        | Winter break     |
| 20131228 |      2013 | dec        |               28 |          52 | Saturday      | Winter break     |
| 20131229 |      2013 | dec        |               29 |          52 | Sunday        | Winter break     |
| 20131230 |      2013 | dec        |               30 |           1 | Monday        | Winter break     |
| 20131231 |      2013 | dec        |               31 |           1 | Tuesday       | Winter break     |
+----------+-----------+------------+------------------+-------------+---------------+------------------+
365 rows in set (0.00 sec)

###################################################################################



###################################################################################
%%% Pergunta
11. You will see that the table has all the dates for 2013. However, with the following
query you can confirm that only the readings for December 2013 have been collected:

SELECT DISTINCT date_id FROM meter_readings;

%%% Resposta

+----------+
| date_id  |
+----------+
| 20131201 |
| 20131202 |
| 20131203 |
| 20131204 |
| 20131205 |
| 20131206 |
| 20131207 |
| 20131208 |
| 20131209 |
| 20131210 |
| 20131211 |
| 20131212 |
| 20131213 |
| 20131214 |
| 20131215 |
| 20131216 |
| 20131217 |
| 20131218 |
| 20131219 |
| 20131220 |
| 20131221 |
| 20131222 |
| 20131223 |
| 20131224 |
| 20131225 |
| 20131226 |
| 20131227 |
| 20131228 |
| 20131229 |
| 20131230 |
| 20131231 |
+----------+
31 rows in set (0.00 sec)


###################################################################################



###################################################################################
%%% Pergunta
12. Finally, check the time dimension:

SELECT * FROM time_dimension LIMIT 200;

This will show the only first 200 rows of the table. You will notice that there are some
jumps in time, of about 15 minutes. This is because the meter readings are collected in
intervals of 15 minutes.

%%% Resposta

+---------+-------------+-------------+---------------+---------------+----------------+------------+-----------+
| time_id | time_of_day | hour_of_day | quarter_hour  | minute_of_day | minute_of_hour | day_period | day_night |
+---------+-------------+-------------+---------------+---------------+----------------+------------+-----------+
|       0 | 00:00:00    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|       1 | 00:00:01    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|       2 | 00:00:02    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|       3 | 00:00:03    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|       4 | 00:00:04    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|       5 | 00:00:05    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|       6 | 00:00:06    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|       7 | 00:00:07    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|       8 | 00:00:08    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|       9 | 00:00:09    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      10 | 00:00:10    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      11 | 00:00:11    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      12 | 00:00:12    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      13 | 00:00:13    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      14 | 00:00:14    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      15 | 00:00:15    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      16 | 00:00:16    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      17 | 00:00:17    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      18 | 00:00:18    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      19 | 00:00:19    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      20 | 00:00:20    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      21 | 00:00:21    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      22 | 00:00:22    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      23 | 00:00:23    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      24 | 00:00:24    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      25 | 00:00:25    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      26 | 00:00:26    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      27 | 00:00:27    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      28 | 00:00:28    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      29 | 00:00:29    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      30 | 00:00:30    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      31 | 00:00:31    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      32 | 00:00:32    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      33 | 00:00:33    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      34 | 00:00:34    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      35 | 00:00:35    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      36 | 00:00:36    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      37 | 00:00:37    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      38 | 00:00:38    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      39 | 00:00:39    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      40 | 00:00:40    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      41 | 00:00:41    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      42 | 00:00:42    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      43 | 00:00:43    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      44 | 00:00:44    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      45 | 00:00:45    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      46 | 00:00:46    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      47 | 00:00:47    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      48 | 00:00:48    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      49 | 00:00:49    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      50 | 00:00:50    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      51 | 00:00:51    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      52 | 00:00:52    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      53 | 00:00:53    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      54 | 00:00:54    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      55 | 00:00:55    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      56 | 00:00:56    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      57 | 00:00:57    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      58 | 00:00:58    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|      59 | 00:00:59    |           0 | 00:00 - 00:14 |             0 |              0 | Night      | Night     |
|    1500 | 00:15:00    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1501 | 00:15:01    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1502 | 00:15:02    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1503 | 00:15:03    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1504 | 00:15:04    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1505 | 00:15:05    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1506 | 00:15:06    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1507 | 00:15:07    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1508 | 00:15:08    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1509 | 00:15:09    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1510 | 00:15:10    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1511 | 00:15:11    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1512 | 00:15:12    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1513 | 00:15:13    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1514 | 00:15:14    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1515 | 00:15:15    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1516 | 00:15:16    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1517 | 00:15:17    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1518 | 00:15:18    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1519 | 00:15:19    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1520 | 00:15:20    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1521 | 00:15:21    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1522 | 00:15:22    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1523 | 00:15:23    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1524 | 00:15:24    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1525 | 00:15:25    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1526 | 00:15:26    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1527 | 00:15:27    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1528 | 00:15:28    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1529 | 00:15:29    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1530 | 00:15:30    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1531 | 00:15:31    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1532 | 00:15:32    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1533 | 00:15:33    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1534 | 00:15:34    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1535 | 00:15:35    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1536 | 00:15:36    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1537 | 00:15:37    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1538 | 00:15:38    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1539 | 00:15:39    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1540 | 00:15:40    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1541 | 00:15:41    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1542 | 00:15:42    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1543 | 00:15:43    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1544 | 00:15:44    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1545 | 00:15:45    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1546 | 00:15:46    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1547 | 00:15:47    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1548 | 00:15:48    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1549 | 00:15:49    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1550 | 00:15:50    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1551 | 00:15:51    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1552 | 00:15:52    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1553 | 00:15:53    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1554 | 00:15:54    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1555 | 00:15:55    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1556 | 00:15:56    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1557 | 00:15:57    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1558 | 00:15:58    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    1559 | 00:15:59    |           0 | 00:15 - 00:29 |            15 |             15 | Night      | Night     |
|    3000 | 00:30:00    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3001 | 00:30:01    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3002 | 00:30:02    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3003 | 00:30:03    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3004 | 00:30:04    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3005 | 00:30:05    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3006 | 00:30:06    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3007 | 00:30:07    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3008 | 00:30:08    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3009 | 00:30:09    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3010 | 00:30:10    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3011 | 00:30:11    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3012 | 00:30:12    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3013 | 00:30:13    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3014 | 00:30:14    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3015 | 00:30:15    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3016 | 00:30:16    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3017 | 00:30:17    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3018 | 00:30:18    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3019 | 00:30:19    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3020 | 00:30:20    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3021 | 00:30:21    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3022 | 00:30:22    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3023 | 00:30:23    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3024 | 00:30:24    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3025 | 00:30:25    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3026 | 00:30:26    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3027 | 00:30:27    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3028 | 00:30:28    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3029 | 00:30:29    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3030 | 00:30:30    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3031 | 00:30:31    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3032 | 00:30:32    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3033 | 00:30:33    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3034 | 00:30:34    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3035 | 00:30:35    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3036 | 00:30:36    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3037 | 00:30:37    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3038 | 00:30:38    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3039 | 00:30:39    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3040 | 00:30:40    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3041 | 00:30:41    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3042 | 00:30:42    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3043 | 00:30:43    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3044 | 00:30:44    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3045 | 00:30:45    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3046 | 00:30:46    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3047 | 00:30:47    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3048 | 00:30:48    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3049 | 00:30:49    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3050 | 00:30:50    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3051 | 00:30:51    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3052 | 00:30:52    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3053 | 00:30:53    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3054 | 00:30:54    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3055 | 00:30:55    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3056 | 00:30:56    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3057 | 00:30:57    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3058 | 00:30:58    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    3059 | 00:30:59    |           0 | 00:30 - 00:44 |            30 |             30 | Night      | Night     |
|    4500 | 00:45:00    |           0 | 00:45 - 00:59 |            45 |             45 | Night      | Night     |
|    4501 | 00:45:01    |           0 | 00:45 - 00:59 |            45 |             45 | Night      | Night     |
|    4502 | 00:45:02    |           0 | 00:45 - 00:59 |            45 |             45 | Night      | Night     |
|    4503 | 00:45:03    |           0 | 00:45 - 00:59 |            45 |             45 | Night      | Night     |
|    4504 | 00:45:04    |           0 | 00:45 - 00:59 |            45 |             45 | Night      | Night     |
|    4505 | 00:45:05    |           0 | 00:45 - 00:59 |            45 |             45 | Night      | Night     |
|    4506 | 00:45:06    |           0 | 00:45 - 00:59 |            45 |             45 | Night      | Night     |
|    4507 | 00:45:07    |           0 | 00:45 - 00:59 |            45 |             45 | Night      | Night     |
|    4508 | 00:45:08    |           0 | 00:45 - 00:59 |            45 |             45 | Night      | Night     |
|    4509 | 00:45:09    |           0 | 00:45 - 00:59 |            45 |             45 | Night      | Night     |
|    4510 | 00:45:10    |           0 | 00:45 - 00:59 |            45 |             45 | Night      | Night     |
|    4511 | 00:45:11    |           0 | 00:45 - 00:59 |            45 |             45 | Night      | Night     |
|    4512 | 00:45:12    |           0 | 00:45 - 00:59 |            45 |             45 | Night      | Night     |
|    4513 | 00:45:13    |           0 | 00:45 - 00:59 |            45 |             45 | Night      | Night     |
|    4514 | 00:45:14    |           0 | 00:45 - 00:59 |            45 |             45 | Night      | Night     |
|    4515 | 00:45:15    |           0 | 00:45 - 00:59 |            45 |             45 | Night      | Night     |
|    4516 | 00:45:16    |           0 | 00:45 - 00:59 |            45 |             45 | Night      | Night     |
|    4517 | 00:45:17    |           0 | 00:45 - 00:59 |            45 |             45 | Night      | Night     |
|    4518 | 00:45:18    |           0 | 00:45 - 00:59 |            45 |             45 | Night      | Night     |
|    4519 | 00:45:19    |           0 | 00:45 - 00:59 |            45 |             45 | Night      | Night     |
+---------+-------------+-------------+---------------+---------------+----------------+------------+-----------+
200 rows in set (0.00 sec)


###################################################################################



###################################################################################
%%% Pergunta
13. Also, run the following query to see the kind of information that is stored in the
day_period and day_night columns:

SELECT DISTINCT day_period, day_night FROM time_dimension;

%%% Resposta

+------------+-----------+
| day_period | day_night |
+------------+-----------+
| Night      | Night     |
| Dawn       | Night     |
| Dawn       | Day       |
| Morning    | Day       |
| Afternoon  | Day       |
| Dusk       | Day       |
| Dusk       | Night     |
| Evening    | Night     |
+------------+-----------+
8 rows in set (0.02 sec)


###################################################################################



###################################################################################
%%% Pergunta
14. You can access this information for each reading by joining the tables meter_readings
and time_dimension:

SELECT datapoint_id, time_id, date_id, building_id, reading, day_period, day_night
FROM meter_readings NATURAL JOIN time_dimension
LIMIT 1000;

%%% Resposta

+--------------+---------+----------+-------------+----------+------------+-----------+
| datapoint_id | time_id | date_id  | building_id | reading  | day_period | day_night |
+--------------+---------+----------+-------------+----------+------------+-----------+
|          301 |   21535 | 20131201 |          30 | 16436160 | Night      | Night     |
|           11 |   21536 | 20131201 |           1 | 21453660 | Night      | Night     |
|           21 |   21536 | 20131201 |           2 |  6933960 | Night      | Night     |
|           81 |   21536 | 20131201 |           8 | 29840000 | Night      | Night     |
|           91 |   21536 | 20131201 |           9 | 15232000 | Night      | Night     |
|          111 |   21536 | 20131201 |          11 |  9000000 | Night      | Night     |
|          131 |   21536 | 20131201 |          13 | 12508800 | Night      | Night     |
|          311 |   21536 | 20131201 |          31 |   584060 | Night      | Night     |
|          361 |   21536 | 20131201 |          36 | 13919520 | Night      | Night     |
|          371 |   21536 | 20131201 |          37 | 10635100 | Night      | Night     |
|           31 |   21537 | 20131201 |           3 |  2298760 | Night      | Night     |
|          121 |   21537 | 20131201 |          12 |  1046640 | Night      | Night     |
|          381 |   21537 | 20131201 |          38 |        0 | Night      | Night     |
|          131 |   23035 | 20131201 |          13 | 12936000 | Night      | Night     |
|           11 |   23036 | 20131201 |           1 | 23307680 | Night      | Night     |
|           21 |   23036 | 20131201 |           2 |  6760920 | Night      | Night     |
|           81 |   23036 | 20131201 |           8 | 28064000 | Night      | Night     |
|           91 |   23036 | 20131201 |           9 | 15776000 | Night      | Night     |
|          111 |   23036 | 20131201 |          11 |  9217500 | Night      | Night     |
|          121 |   23036 | 20131201 |          12 |  1045800 | Night      | Night     |
|          301 |   23036 | 20131201 |          30 | 16056860 | Night      | Night     |
|          311 |   23036 | 20131201 |          31 |   575740 | Night      | Night     |
|          361 |   23036 | 20131201 |          36 | 13792480 | Night      | Night     |
|           31 |   23037 | 20131201 |           3 |  2321520 | Night      | Night     |
|          371 |   23037 | 20131201 |          37 | 10589010 | Night      | Night     |
|          381 |   23037 | 20131201 |          38 |        0 | Night      | Night     |
|          131 |   24535 | 20131201 |          13 | 12480000 | Night      | Night     |
|          301 |   24535 | 20131201 |          30 | 16383480 | Night      | Night     |
|           11 |   24536 | 20131201 |           1 | 22700060 | Night      | Night     |
|           21 |   24536 | 20131201 |           2 |  6526080 | Night      | Night     |
|           81 |   24536 | 20131201 |           8 | 28704000 | Night      | Night     |
|           91 |   24536 | 20131201 |           9 | 15472000 | Night      | Night     |
|          111 |   24536 | 20131201 |          11 | 10950000 | Night      | Night     |
|          311 |   24536 | 20131201 |          31 |   574910 | Night      | Night     |
|          361 |   24536 | 20131201 |          36 | 14228030 | Night      | Night     |
|          371 |   24536 | 20131201 |          37 | 11036210 | Night      | Night     |
|           31 |   24537 | 20131201 |           3 |  2344280 | Night      | Night     |
|          121 |   24537 | 20131201 |          12 |  1048320 | Night      | Night     |
|          381 |   24537 | 20131201 |          38 |        0 | Night      | Night     |
|           81 |   30035 | 20131201 |           8 | 28080000 | Night      | Night     |
|          301 |   30035 | 20131201 |          30 | 15656500 | Night      | Night     |
|           11 |   30036 | 20131201 |           1 | 23915300 | Night      | Night     |
|           91 |   30036 | 20131201 |           9 | 15504000 | Night      | Night     |
|          111 |   30036 | 20131201 |          11 |  9090000 | Night      | Night     |
|          131 |   30036 | 20131201 |          13 | 12873600 | Night      | Night     |
|          311 |   30036 | 20131201 |          31 |   576580 | Night      | Night     |
|          361 |   30036 | 20131201 |          36 | 14409510 | Night      | Night     |
|          371 |   30036 | 20131201 |          37 | 10126670 | Night      | Night     |
|           21 |   30037 | 20131201 |           2 |  7218240 | Night      | Night     |
|           31 |   30037 | 20131201 |           3 |  2344280 | Night      | Night     |
|          121 |   30037 | 20131201 |          12 |  1055880 | Night      | Night     |
|          381 |   30037 | 20131201 |          38 |        0 | Night      | Night     |
|           81 |   31535 | 20131201 |           8 | 28784000 | Night      | Night     |
|          301 |   31535 | 20131201 |          30 | 14782010 | Night      | Night     |
|           11 |   31536 | 20131201 |           1 | 24242480 | Night      | Night     |
|           21 |   31536 | 20131201 |           2 |  6563160 | Night      | Night     |
|           91 |   31536 | 20131201 |           9 | 16000000 | Night      | Night     |
|          111 |   31536 | 20131201 |          11 |  9030000 | Night      | Night     |
|          131 |   31536 | 20131201 |          13 | 13094400 | Night      | Night     |
|          311 |   31536 | 20131201 |          31 |   575740 | Night      | Night     |
|          361 |   31536 | 20131201 |          36 | 14391360 | Night      | Night     |
|          371 |   31536 | 20131201 |          37 |  7215060 | Night      | Night     |
|           31 |   31537 | 20131201 |           3 |  2321520 | Night      | Night     |
|          121 |   31537 | 20131201 |          12 |  1047480 | Night      | Night     |
|          381 |   31537 | 20131201 |          38 |        0 | Night      | Night     |
|          131 |   33035 | 20131201 |          13 | 12446400 | Night      | Night     |
|          301 |   33035 | 20131201 |          30 | 15403630 | Night      | Night     |
|           11 |   33036 | 20131201 |           1 | 23042820 | Night      | Night     |
|           21 |   33036 | 20131201 |           2 |  6600240 | Night      | Night     |
|           81 |   33036 | 20131201 |           8 | 28368000 | Night      | Night     |
|           91 |   33036 | 20131201 |           9 | 15872000 | Night      | Night     |
|          111 |   33036 | 20131201 |          11 |  8235000 | Night      | Night     |
|          121 |   33036 | 20131201 |          12 |  1048320 | Night      | Night     |
|          311 |   33036 | 20131201 |          31 |   575740 | Night      | Night     |
|          361 |   33036 | 20131201 |          36 | 14028400 | Night      | Night     |
|          371 |   33036 | 20131201 |          37 |  6303460 | Night      | Night     |
|           31 |   33037 | 20131201 |           3 |  2367040 | Night      | Night     |
|          381 |   33037 | 20131201 |          38 |        0 | Night      | Night     |
|           11 |   34535 | 20131201 |           1 | 22715640 | Night      | Night     |
|          301 |   34535 | 20131201 |          30 | 15572210 | Night      | Night     |
|           21 |   34536 | 20131201 |           2 |  9801480 | Night      | Night     |
|           31 |   34536 | 20131201 |           3 |  2344280 | Night      | Night     |
|           81 |   34536 | 20131201 |           8 | 28704000 | Night      | Night     |
|           91 |   34536 | 20131201 |           9 | 17088000 | Night      | Night     |
|          111 |   34536 | 20131201 |          11 |  9292500 | Night      | Night     |
|          121 |   34536 | 20131201 |          12 |  1044960 | Night      | Night     |
|          131 |   34536 | 20131201 |          13 | 14150400 | Night      | Night     |
|          311 |   34536 | 20131201 |          31 |   575740 | Night      | Night     |
|          361 |   34536 | 20131201 |          36 | 13901370 | Night      | Night     |
|          371 |   34536 | 20131201 |          37 |  8392910 | Night      | Night     |
|          381 |   34537 | 20131201 |          38 |        0 | Night      | Night     |
|           81 |   40035 | 20131201 |           8 | 31152000 | Night      | Night     |
|          301 |   40035 | 20131201 |          30 | 15034870 | Night      | Night     |
|           11 |   40036 | 20131201 |           1 | 19942400 | Night      | Night     |
|           21 |   40036 | 20131201 |           2 |  6575520 | Night      | Night     |
|           91 |   40036 | 20131201 |           9 | 16208000 | Night      | Night     |
|          111 |   40036 | 20131201 |          11 | 10905000 | Night      | Night     |
|          121 |   40036 | 20131201 |          12 |  1050840 | Night      | Night     |
|          131 |   40036 | 20131201 |          13 | 13142400 | Night      | Night     |
|          311 |   40036 | 20131201 |          31 |   575740 | Night      | Night     |
|          361 |   40036 | 20131201 |          36 | 14590990 | Night      | Night     |
|           31 |   40037 | 20131201 |           3 |  2344280 | Night      | Night     |
|          371 |   40037 | 20131201 |          37 |  7388430 | Night      | Night     |
|          381 |   40037 | 20131201 |          38 |        0 | Night      | Night     |
|           81 |   41535 | 20131201 |           8 | 28240000 | Night      | Night     |
|          111 |   41535 | 20131201 |          11 |  8857500 | Night      | Night     |
|          131 |   41535 | 20131201 |          13 | 13982400 | Night      | Night     |
|          301 |   41535 | 20131201 |          30 | 13949660 | Night      | Night     |
|           11 |   41536 | 20131201 |           1 | 21282280 | Night      | Night     |
|           91 |   41536 | 20131201 |           9 | 15536000 | Night      | Night     |
|          121 |   41536 | 20131201 |          12 |  1057560 | Night      | Night     |
|          311 |   41536 | 20131201 |          31 |   582400 | Night      | Night     |
|          361 |   41536 | 20131201 |          36 | 14482100 | Night      | Night     |
|          371 |   41536 | 20131201 |          37 |  5828050 | Night      | Night     |
|           21 |   41537 | 20131201 |           2 |  6600240 | Night      | Night     |
|           31 |   41537 | 20131201 |           3 |  2389800 | Night      | Night     |
|          381 |   41537 | 20131201 |          38 |        0 | Night      | Night     |
|           81 |   43035 | 20131201 |           8 | 26448000 | Night      | Night     |
|          131 |   43035 | 20131201 |          13 | 13425600 | Night      | Night     |
|          301 |   43035 | 20131201 |          30 | 14286820 | Night      | Night     |
|           11 |   43036 | 20131201 |           1 | 23588120 | Night      | Night     |
|           21 |   43036 | 20131201 |           2 |  8095800 | Night      | Night     |
|           91 |   43036 | 20131201 |           9 | 15360000 | Night      | Night     |
|          111 |   43036 | 20131201 |          11 |  7950000 | Night      | Night     |
|          121 |   43036 | 20131201 |          12 |  1051680 | Night      | Night     |
|          311 |   43036 | 20131201 |          31 |   575740 | Night      | Night     |
|          371 |   43036 | 20131201 |          37 |  6474770 | Night      | Night     |
|           31 |   43037 | 20131201 |           3 |  2367040 | Night      | Night     |
|          361 |   43037 | 20131201 |          36 | 14064700 | Night      | Night     |
|          381 |   43037 | 20131201 |          38 |        0 | Night      | Night     |
|           81 |   44535 | 20131201 |           8 | 27200000 | Night      | Night     |
|          131 |   44535 | 20131201 |          13 | 13896000 | Night      | Night     |
|          301 |   44535 | 20131201 |          30 | 14940050 | Night      | Night     |
|           11 |   44536 | 20131201 |           1 | 20503280 | Night      | Night     |
|           21 |   44536 | 20131201 |           2 |  6550800 | Night      | Night     |
|           91 |   44536 | 20131201 |           9 | 15664000 | Night      | Night     |
|          111 |   44536 | 20131201 |          11 |  8797500 | Night      | Night     |
|          311 |   44536 | 20131201 |          31 |   575740 | Night      | Night     |
|          371 |   44536 | 20131201 |          37 |  7197170 | Night      | Night     |
|           31 |   44537 | 20131201 |           3 |  2389800 | Night      | Night     |
|          121 |   44537 | 20131201 |          12 |  1046640 | Night      | Night     |
|          361 |   44537 | 20131201 |          36 | 14736180 | Night      | Night     |
|          381 |   44537 | 20131201 |          38 |        0 | Night      | Night     |
|           11 |   50035 | 20131201 |           1 | 20877200 | Night      | Night     |
|          301 |   50035 | 20131201 |          30 | 14592360 | Night      | Night     |
|           21 |   50036 | 20131201 |           2 |  7008120 | Night      | Night     |
|           81 |   50036 | 20131201 |           8 | 29104000 | Night      | Night     |
|           91 |   50036 | 20131201 |           9 | 15760000 | Night      | Night     |
|          111 |   50036 | 20131201 |          11 |  9172500 | Night      | Night     |
|          131 |   50036 | 20131201 |          13 | 12288000 | Night      | Night     |
|          311 |   50036 | 20131201 |          31 |   576580 | Night      | Night     |
|          361 |   50036 | 20131201 |          36 | 14209880 | Night      | Night     |
|          371 |   50036 | 20131201 |          37 |  7272850 | Night      | Night     |
|           31 |   50037 | 20131201 |           3 |  2389800 | Night      | Night     |
|          121 |   50037 | 20131201 |          12 |  1050000 | Night      | Night     |
|          381 |   50037 | 20131201 |          38 |        0 | Night      | Night     |
|           81 |   51535 | 20131201 |           8 | 28192000 | Night      | Night     |
|          131 |   51535 | 20131201 |          13 | 12489600 | Night      | Night     |
|          301 |   51535 | 20131201 |          30 | 14002340 | Night      | Night     |
|           11 |   51536 | 20131201 |           1 | 21126480 | Night      | Night     |
|           21 |   51536 | 20131201 |           2 |  7119360 | Night      | Night     |
|           91 |   51536 | 20131201 |           9 | 14960000 | Night      | Night     |
|          111 |   51536 | 20131201 |          11 |  9465000 | Night      | Night     |
|          121 |   51536 | 20131201 |          12 |  1045800 | Night      | Night     |
|          311 |   51536 | 20131201 |          31 |   572420 | Night      | Night     |
|          371 |   51536 | 20131201 |          37 |  5843870 | Night      | Night     |
|           31 |   51537 | 20131201 |           3 |  2344280 | Night      | Night     |
|          361 |   51537 | 20131201 |          36 | 14736180 | Night      | Night     |
|          381 |   51537 | 20131201 |          38 |        0 | Night      | Night     |
|          131 |   53035 | 20131201 |          13 | 13867200 | Night      | Night     |
|           11 |   53036 | 20131201 |           1 | 18493460 | Night      | Night     |
|           21 |   53036 | 20131201 |           2 |  6550800 | Night      | Night     |
|           81 |   53036 | 20131201 |           8 | 28752000 | Night      | Night     |
|           91 |   53036 | 20131201 |           9 | 16960000 | Night      | Night     |
|          111 |   53036 | 20131201 |          11 |  9210000 | Night      | Night     |
|          301 |   53036 | 20131201 |          30 | 14487000 | Night      | Night     |
|          311 |   53036 | 20131201 |          31 |   573250 | Night      | Night     |
|          361 |   53036 | 20131201 |          36 | 15117280 | Night      | Night     |
|           31 |   53037 | 20131201 |           3 |  2367040 | Night      | Night     |
|          121 |   53037 | 20131201 |          12 |  1044120 | Night      | Night     |
|          371 |   53037 | 20131201 |          37 |  6641260 | Night      | Night     |
|          381 |   53037 | 20131201 |          38 |        0 | Night      | Night     |
|          131 |   54535 | 20131201 |          13 | 12518400 | Night      | Night     |
|          301 |   54535 | 20131201 |          30 | 14855760 | Night      | Night     |
|           11 |   54536 | 20131201 |           1 | 14878900 | Night      | Night     |
|           21 |   54536 | 20131201 |           2 |  6736200 | Night      | Night     |
|           81 |   54536 | 20131201 |           8 | 30992000 | Night      | Night     |
|           91 |   54536 | 20131201 |           9 | 15104000 | Night      | Night     |
|          111 |   54536 | 20131201 |          11 |  9352500 | Night      | Night     |
|          311 |   54536 | 20131201 |          31 |   574080 | Night      | Night     |
|          361 |   54536 | 20131201 |          36 | 14282480 | Night      | Night     |
|           31 |   54537 | 20131201 |           3 |  2367040 | Night      | Night     |
|          121 |   54537 | 20131201 |          12 |  1050840 | Night      | Night     |
|          371 |   54537 | 20131201 |          37 |  7559740 | Night      | Night     |
|          381 |   54537 | 20131201 |          38 |        0 | Night      | Night     |
|           11 |   60035 | 20131201 |           1 | 15580000 | Dawn       | Night     |
|          131 |   60035 | 20131201 |          13 | 13795200 | Dawn       | Night     |
|           21 |   60036 | 20131201 |           2 |  6748560 | Dawn       | Night     |
|           81 |   60036 | 20131201 |           8 | 27264000 | Dawn       | Night     |
|           91 |   60036 | 20131201 |           9 | 15424000 | Dawn       | Night     |
|          111 |   60036 | 20131201 |          11 |  7875000 | Dawn       | Night     |
|          121 |   60036 | 20131201 |          12 |  1048320 | Dawn       | Night     |
|          301 |   60036 | 20131201 |          30 | 15013800 | Dawn       | Night     |
|          361 |   60036 | 20131201 |          36 | 13883220 | Dawn       | Night     |
|           31 |   60037 | 20131201 |           3 |  2412560 | Dawn       | Night     |
|          311 |   60037 | 20131201 |          31 |   577410 | Dawn       | Night     |
|          371 |   60037 | 20131201 |          37 |  7406320 | Dawn       | Night     |
|          381 |   60037 | 20131201 |          38 |        0 | Dawn       | Night     |
|           11 |   61535 | 20131201 |           1 | 18041640 | Dawn       | Night     |
|          131 |   61535 | 20131201 |          13 | 15086400 | Dawn       | Night     |
|           21 |   61536 | 20131201 |           2 |  6773280 | Dawn       | Night     |
|           31 |   61536 | 20131201 |           3 |  2412560 | Dawn       | Night     |
|           81 |   61536 | 20131201 |           8 | 26544000 | Dawn       | Night     |
|           91 |   61536 | 20131201 |           9 | 19424000 | Dawn       | Night     |
|          111 |   61536 | 20131201 |          11 |  8430000 | Dawn       | Night     |
|          121 |   61536 | 20131201 |          12 |  1046640 | Dawn       | Night     |
|          301 |   61536 | 20131201 |          30 | 14982190 | Dawn       | Night     |
|          361 |   61536 | 20131201 |          36 | 14101000 | Dawn       | Night     |
|          311 |   61537 | 20131201 |          31 |   575740 | Dawn       | Night     |
|          371 |   61537 | 20131201 |          37 |  7596900 | Dawn       | Night     |
|          381 |   61538 | 20131201 |          38 |        0 | Dawn       | Night     |
|           81 |   63035 | 20131201 |           8 | 29760000 | Dawn       | Night     |
|          301 |   63035 | 20131201 |          30 | 15656500 | Dawn       | Night     |
|           11 |   63036 | 20131201 |           1 | 15439780 | Dawn       | Night     |
|           21 |   63036 | 20131201 |           2 | 11124000 | Dawn       | Night     |
|           91 |   63036 | 20131201 |           9 | 14928000 | Dawn       | Night     |
|          111 |   63036 | 20131201 |          11 | 10642500 | Dawn       | Night     |
|          131 |   63036 | 20131201 |          13 | 13454400 | Dawn       | Night     |
|          311 |   63036 | 20131201 |          31 |   570750 | Dawn       | Night     |
|          361 |   63036 | 20131201 |          36 | 14790620 | Dawn       | Night     |
|           31 |   63037 | 20131201 |           3 |  2389800 | Dawn       | Night     |
|          121 |   63037 | 20131201 |          12 |  1046640 | Dawn       | Night     |
|          371 |   63037 | 20131201 |          37 |  8484420 | Dawn       | Night     |
|          381 |   63037 | 20131201 |          38 |        0 | Dawn       | Night     |
|           81 |   64535 | 20131201 |           8 | 28544000 | Dawn       | Night     |
|           91 |   64535 | 20131201 |           9 | 15632000 | Dawn       | Night     |
|          131 |   64535 | 20131201 |          13 | 12787200 | Dawn       | Night     |
|           11 |   64536 | 20131201 |           1 | 16156460 | Dawn       | Night     |
|           21 |   64536 | 20131201 |           2 |  6587880 | Dawn       | Night     |
|          111 |   64536 | 20131201 |          11 |  8572500 | Dawn       | Night     |
|          301 |   64536 | 20131201 |          30 | 14539680 | Dawn       | Night     |
|          311 |   64536 | 20131201 |          31 |   567420 | Dawn       | Night     |
|          361 |   64536 | 20131201 |          36 | 14790620 | Dawn       | Night     |
|           31 |   64537 | 20131201 |           3 |  2344280 | Dawn       | Night     |
|          121 |   64537 | 20131201 |          12 |  1045800 | Dawn       | Night     |
|          371 |   64537 | 20131201 |          37 |  7300370 | Dawn       | Night     |
|          381 |   64537 | 20131201 |          38 |        0 | Dawn       | Night     |
|           11 |   70035 | 20131201 |           1 | 18664840 | Dawn       | Day       |
|           81 |   70035 | 20131201 |           8 | 27952000 | Dawn       | Day       |
|          301 |   70035 | 20131201 |          30 | 14760940 | Dawn       | Day       |
|           21 |   70036 | 20131201 |           2 |  6538440 | Dawn       | Day       |
|           31 |   70036 | 20131201 |           3 |  2298760 | Dawn       | Day       |
|           91 |   70036 | 20131201 |           9 | 15360000 | Dawn       | Day       |
|          111 |   70036 | 20131201 |          11 | 10027500 | Dawn       | Day       |
|          131 |   70036 | 20131201 |          13 | 13161600 | Dawn       | Day       |
|          311 |   70036 | 20131201 |          31 |   564100 | Dawn       | Day       |
|          361 |   70036 | 20131201 |          36 | 14699880 | Dawn       | Day       |
|          371 |   70036 | 20131201 |          37 |  6502980 | Dawn       | Day       |
|          121 |   70037 | 20131201 |          12 |  1043280 | Dawn       | Day       |
|          381 |   70037 | 20131201 |          38 |        0 | Dawn       | Day       |
|           81 |   71535 | 20131201 |           8 | 28032000 | Dawn       | Day       |
|           11 |   71536 | 20131201 |           1 | 18135120 | Dawn       | Day       |
|           21 |   71536 | 20131201 |           2 |  6451920 | Dawn       | Day       |
|           91 |   71536 | 20131201 |           9 | 16800000 | Dawn       | Day       |
|          111 |   71536 | 20131201 |          11 |  8835000 | Dawn       | Day       |
|          121 |   71536 | 20131201 |          12 |  1042440 | Dawn       | Day       |
|          131 |   71536 | 20131201 |          13 | 13900800 | Dawn       | Day       |
|          301 |   71536 | 20131201 |          30 | 14518610 | Dawn       | Day       |
|          311 |   71536 | 20131201 |          31 |   566590 | Dawn       | Day       |
|          361 |   71536 | 20131201 |          36 | 14173590 | Dawn       | Day       |
|           31 |   71537 | 20131201 |           3 |  2367040 | Dawn       | Day       |
|          371 |   71537 | 20131201 |          37 |  6520860 | Dawn       | Day       |
|          381 |   71537 | 20131201 |          38 |        0 | Dawn       | Day       |
|           11 |   73035 | 20131201 |           1 | 18010480 | Dawn       | Day       |
|          131 |   73035 | 20131201 |          13 | 13694400 | Dawn       | Day       |
|          301 |   73035 | 20131201 |          30 | 14297350 | Dawn       | Day       |
|           21 |   73036 | 20131201 |           2 |  6563160 | Dawn       | Day       |
|           31 |   73036 | 20131201 |           3 |  2367040 | Dawn       | Day       |
|           81 |   73036 | 20131201 |           8 | 26544000 | Dawn       | Day       |
|           91 |   73036 | 20131201 |           9 | 15184000 | Dawn       | Day       |
|          111 |   73036 | 20131201 |          11 |  7777500 | Dawn       | Day       |
|          311 |   73036 | 20131201 |          31 |   570750 | Dawn       | Day       |
|          361 |   73036 | 20131201 |          36 | 14173590 | Dawn       | Day       |
|          371 |   73036 | 20131201 |          37 |  5994540 | Dawn       | Day       |
|          121 |   73037 | 20131201 |          12 |  1043280 | Dawn       | Day       |
|          381 |   73037 | 20131201 |          38 |        0 | Dawn       | Day       |
|           11 |   74535 | 20131201 |           1 | 17184740 | Dawn       | Day       |
|           81 |   74535 | 20131201 |           8 | 30448000 | Dawn       | Day       |
|          131 |   74535 | 20131201 |          13 | 13411200 | Dawn       | Day       |
|           21 |   74536 | 20131201 |           2 |  6489000 | Dawn       | Day       |
|           31 |   74536 | 20131201 |           3 |  2367040 | Dawn       | Day       |
|           91 |   74536 | 20131201 |           9 | 15312000 | Dawn       | Day       |
|          111 |   74536 | 20131201 |          11 | 10957500 | Dawn       | Day       |
|          301 |   74536 | 20131201 |          30 | 16467770 | Dawn       | Day       |
|          311 |   74536 | 20131201 |          31 |   565760 | Dawn       | Day       |
|          361 |   74536 | 20131201 |          36 | 14590990 | Dawn       | Day       |
|          121 |   74537 | 20131201 |          12 |  1046640 | Dawn       | Day       |
|          371 |   74537 | 20131201 |          37 |  7199920 | Dawn       | Day       |
|          381 |   74537 | 20131201 |          38 |        0 | Dawn       | Day       |
|           81 |   80035 | 20131201 |           8 | 27808000 | Morning    | Day       |
|          131 |   80035 | 20131201 |          13 | 13564800 | Morning    | Day       |
|          301 |   80035 | 20131201 |          30 | 14307890 | Morning    | Day       |
|           11 |   80036 | 20131201 |           1 | 16623860 | Morning    | Day       |
|           21 |   80036 | 20131201 |           2 |  6723840 | Morning    | Day       |
|           91 |   80036 | 20131201 |           9 | 16928000 | Morning    | Day       |
|          111 |   80036 | 20131201 |          11 |  8947500 | Morning    | Day       |
|          311 |   80036 | 20131201 |          31 |   564100 | Morning    | Day       |
|          361 |   80036 | 20131201 |          36 | 14754320 | Morning    | Day       |
|          371 |   80036 | 20131201 |          37 |  5963580 | Morning    | Day       |
|           31 |   80037 | 20131201 |           3 |  2367040 | Morning    | Day       |
|          121 |   80037 | 20131201 |          12 |  1044120 | Morning    | Day       |
|          381 |   80037 | 20131201 |          38 |        0 | Morning    | Day       |
|           11 |   81535 | 20131201 |           1 | 17683300 | Morning    | Day       |
|           81 |   81535 | 20131201 |           8 | 28304000 | Morning    | Day       |
|           21 |   81536 | 20131201 |           2 |  6513720 | Morning    | Day       |
|           31 |   81536 | 20131201 |           3 |        0 | Morning    | Day       |
|           91 |   81536 | 20131201 |           9 | 15136000 | Morning    | Day       |
|          111 |   81536 | 20131201 |          11 |  8880000 | Morning    | Day       |
|          121 |   81536 | 20131201 |          12 |  1041600 | Morning    | Day       |
|          131 |   81536 | 20131201 |          13 | 13281600 | Morning    | Day       |
|          301 |   81536 | 20131201 |          30 | 14487000 | Morning    | Day       |
|          311 |   81536 | 20131201 |          31 |   562430 | Morning    | Day       |
|          361 |   81536 | 20131201 |          36 | 14718030 | Morning    | Day       |
|          371 |   81537 | 20131201 |          37 |  6003490 | Morning    | Day       |
|          381 |   81537 | 20131201 |          38 |        0 | Morning    | Day       |
|           11 |   83035 | 20131201 |           1 | 13320900 | Morning    | Day       |
|          301 |   83035 | 20131201 |          30 | 13760020 | Morning    | Day       |
|           21 |   83036 | 20131201 |           2 |  6686760 | Morning    | Day       |
|           31 |   83036 | 20131201 |           3 |  2276000 | Morning    | Day       |
|           81 |   83036 | 20131201 |           8 | 27712000 | Morning    | Day       |
|           91 |   83036 | 20131201 |           9 | 14992000 | Morning    | Day       |
|          111 |   83036 | 20131201 |          11 |  8857500 | Morning    | Day       |
|          131 |   83036 | 20131201 |          13 | 13320000 | Morning    | Day       |
|          311 |   83036 | 20131201 |          31 |   559100 | Morning    | Day       |
|          361 |   83036 | 20131201 |          36 | 14373220 | Morning    | Day       |
|          371 |   83036 | 20131201 |          37 |  5412500 | Morning    | Day       |
|          121 |   83037 | 20131201 |          12 |  1044960 | Morning    | Day       |
|          381 |   83037 | 20131201 |          38 |        0 | Morning    | Day       |
|           11 |   84535 | 20131201 |           1 | 15517680 | Morning    | Day       |
|           81 |   84535 | 20131201 |           8 | 27856000 | Morning    | Day       |
|          131 |   84535 | 20131201 |          13 | 13603200 | Morning    | Day       |
|          301 |   84535 | 20131201 |          30 | 13875910 | Morning    | Day       |
|           21 |   84536 | 20131201 |           2 |  6489000 | Morning    | Day       |
|           31 |   84536 | 20131201 |           3 |        0 | Morning    | Day       |
|           91 |   84536 | 20131201 |           9 | 14960000 | Morning    | Day       |
|          111 |   84536 | 20131201 |          11 |  9165000 | Morning    | Day       |
|          121 |   84536 | 20131201 |          12 |  1044960 | Morning    | Day       |
|          311 |   84536 | 20131201 |          31 |   561600 | Morning    | Day       |
|          361 |   84536 | 20131201 |          36 | 14119140 | Morning    | Day       |
|          371 |   84536 | 20131201 |          37 |  5426260 | Morning    | Day       |
|          381 |   84537 | 20131201 |          38 |        0 | Morning    | Day       |
|           11 |   90035 | 20131201 |           1 | 15361880 | Morning    | Day       |
|           81 |   90035 | 20131201 |           8 | 28768000 | Morning    | Day       |
|          301 |   90035 | 20131201 |          30 | 14139310 | Morning    | Day       |
|           21 |   90036 | 20131201 |           2 |  7045200 | Morning    | Day       |
|           31 |   90036 | 20131201 |           3 |        0 | Morning    | Day       |
|           91 |   90036 | 20131201 |           9 | 15344000 | Morning    | Day       |
|          111 |   90036 | 20131201 |          11 | 10125000 | Morning    | Day       |
|          121 |   90036 | 20131201 |          12 |  1037400 | Morning    | Day       |
|          131 |   90036 | 20131201 |          13 | 13660800 | Morning    | Day       |
|          311 |   90036 | 20131201 |          31 |   554110 | Morning    | Day       |
|          361 |   90036 | 20131201 |          36 | 14572840 | Morning    | Day       |
|          371 |   90037 | 20131201 |          37 |  6006930 | Morning    | Day       |
|          381 |   90037 | 20131201 |          38 |        0 | Morning    | Day       |
|          111 |   91535 | 20131201 |          11 |  8302500 | Morning    | Day       |
|          301 |   91535 | 20131201 |          30 | 13496620 | Morning    | Day       |
|           11 |   91536 | 20131201 |           1 | 14754260 | Morning    | Day       |
|           81 |   91536 | 20131201 |           8 | 28336000 | Morning    | Day       |
|          121 |   91536 | 20131201 |          12 |  1042440 | Morning    | Day       |
|          131 |   91536 | 20131201 |          13 | 12662400 | Morning    | Day       |
|          311 |   91536 | 20131201 |          31 |   556610 | Morning    | Day       |
|          361 |   91536 | 20131201 |          36 | 14990250 | Morning    | Day       |
|          371 |   91536 | 20131201 |          37 |  5304480 | Morning    | Day       |
|           21 |   91537 | 20131201 |           2 |  6835080 | Morning    | Day       |
|           31 |   91537 | 20131201 |           3 |  2321520 | Morning    | Day       |
|           91 |   91537 | 20131201 |           9 | 15104000 | Morning    | Day       |
|          381 |   91537 | 20131201 |          38 |        0 | Morning    | Day       |
|           11 |   93035 | 20131201 |           1 | 17636560 | Morning    | Day       |
|          301 |   93035 | 20131201 |          30 | 14518610 | Morning    | Day       |
|           21 |   93036 | 20131201 |           2 |  6501360 | Morning    | Day       |
|           31 |   93036 | 20131201 |           3 |        0 | Morning    | Day       |
|           81 |   93036 | 20131201 |           8 | 26592000 | Morning    | Day       |
|           91 |   93036 | 20131201 |           9 | 16816000 | Morning    | Day       |
|          111 |   93036 | 20131201 |          11 |  7635000 | Morning    | Day       |
|          121 |   93036 | 20131201 |          12 |  1039920 | Morning    | Day       |
|          131 |   93036 | 20131201 |          13 | 13857600 | Morning    | Day       |
|          311 |   93036 | 20131201 |          31 |   551620 | Morning    | Day       |
|          361 |   93036 | 20131201 |          36 | 14772470 | Morning    | Day       |
|          371 |   93036 | 20131201 |          37 |  6455500 | Morning    | Day       |
|          381 |   93037 | 20131201 |          38 |        0 | Morning    | Day       |
|           11 |   94535 | 20131201 |           1 | 15517680 | Morning    | Day       |
|          301 |   94535 | 20131201 |          30 | 13401790 | Morning    | Day       |
|           21 |   94536 | 20131201 |           2 |  6563160 | Morning    | Day       |
|           31 |   94536 | 20131201 |           3 |  2276000 | Morning    | Day       |
|           81 |   94536 | 20131201 |           8 | 26896000 | Morning    | Day       |
|           91 |   94536 | 20131201 |           9 | 16976000 | Morning    | Day       |
|          111 |   94536 | 20131201 |          11 |  8287500 | Morning    | Day       |
|          121 |   94536 | 20131201 |          12 |  1044960 | Morning    | Day       |
|          131 |   94536 | 20131201 |          13 | 14006400 | Morning    | Day       |
|          311 |   94536 | 20131201 |          31 |   559100 | Morning    | Day       |
|          361 |   94536 | 20131201 |          36 | 14264330 | Morning    | Day       |
|          371 |   94536 | 20131201 |          37 |  5078820 | Morning    | Day       |
|          381 |   94537 | 20131201 |          38 |        0 | Morning    | Day       |
|           81 |  100035 | 20131201 |           8 | 29216000 | Morning    | Day       |
|          301 |  100035 | 20131201 |          30 | 14465930 | Morning    | Day       |
|          311 |  100035 | 20131201 |          31 |   558270 | Morning    | Day       |
|           11 |  100036 | 20131201 |           1 | 16670600 | Morning    | Day       |
|           21 |  100036 | 20131201 |           2 |  6451920 | Morning    | Day       |
|           91 |  100036 | 20131201 |           9 | 15280000 | Morning    | Day       |
|          111 |  100036 | 20131201 |          11 |  9712500 | Morning    | Day       |
|          121 |  100036 | 20131201 |          12 |  1042440 | Morning    | Day       |
|          131 |  100036 | 20131201 |          13 | 12542400 | Morning    | Day       |
|          361 |  100036 | 20131201 |          36 | 14064700 | Morning    | Day       |
|          371 |  100036 | 20131201 |          37 |  6341980 | Morning    | Day       |
|          381 |  100036 | 20131201 |          38 |        0 | Morning    | Day       |
|           31 |  100037 | 20131201 |           3 |  2321520 | Morning    | Day       |
|           11 |  101535 | 20131201 |           1 | 15517680 | Morning    | Day       |
|           21 |  101536 | 20131201 |           2 |  6501360 | Morning    | Day       |
|           31 |  101536 | 20131201 |           3 |  2276000 | Morning    | Day       |
|           81 |  101536 | 20131201 |           8 | 28784000 | Morning    | Day       |
|           91 |  101536 | 20131201 |           9 | 16560000 | Morning    | Day       |
|          111 |  101536 | 20131201 |          11 |  8947500 | Morning    | Day       |
|          121 |  101536 | 20131201 |          12 |  1038240 | Morning    | Day       |
|          131 |  101536 | 20131201 |          13 | 13022400 | Morning    | Day       |
|          301 |  101536 | 20131201 |          30 | 13717870 | Morning    | Day       |
|          311 |  101536 | 20131201 |          31 |   554940 | Morning    | Day       |
|          361 |  101536 | 20131201 |          36 | 14427660 | Morning    | Day       |
|          371 |  101537 | 20131201 |          37 |  5125600 | Morning    | Day       |
|          381 |  101538 | 20131201 |          38 |        0 | Morning    | Day       |
|          301 |  103035 | 20131201 |          30 | 13928590 | Morning    | Day       |
|           11 |  103036 | 20131201 |           1 | 15813700 | Morning    | Day       |
|           81 |  103036 | 20131201 |           8 | 27424000 | Morning    | Day       |
|           91 |  103036 | 20131201 |           9 | 15600000 | Morning    | Day       |
|          111 |  103036 | 20131201 |          11 |  8295000 | Morning    | Day       |
|          131 |  103036 | 20131201 |          13 | 13747200 | Morning    | Day       |
|          311 |  103036 | 20131201 |          31 |   556610 | Morning    | Day       |
|          361 |  103036 | 20131201 |          36 | 14681730 | Morning    | Day       |
|          371 |  103036 | 20131201 |          37 |  5548030 | Morning    | Day       |
|           21 |  103037 | 20131201 |           2 |  6501360 | Morning    | Day       |
|           31 |  103037 | 20131201 |           3 |  2344280 | Morning    | Day       |
|          121 |  103037 | 20131201 |          12 |  1041600 | Morning    | Day       |
|          381 |  103037 | 20131201 |          38 |        0 | Morning    | Day       |
|          301 |  104535 | 20131201 |          30 | 13654660 | Morning    | Day       |
|           11 |  104536 | 20131201 |           1 | 18244180 | Morning    | Day       |
|           21 |  104536 | 20131201 |           2 |  7255320 | Morning    | Day       |
|           81 |  104536 | 20131201 |           8 | 27424000 | Morning    | Day       |
|           91 |  104536 | 20131201 |           9 | 16720000 | Morning    | Day       |
|          111 |  104536 | 20131201 |          11 |  8310000 | Morning    | Day       |
|          131 |  104536 | 20131201 |          13 | 16425600 | Morning    | Day       |
|          311 |  104536 | 20131201 |          31 |   555780 | Morning    | Day       |
|          361 |  104536 | 20131201 |          36 | 13992110 | Morning    | Day       |
|           31 |  104537 | 20131201 |           3 |        0 | Morning    | Day       |
|          121 |  104537 | 20131201 |          12 |  1040760 | Morning    | Day       |
|          371 |  104537 | 20131201 |          37 |  5567980 | Morning    | Day       |
|          381 |  104537 | 20131201 |          38 |        0 | Morning    | Day       |
|          111 |  110035 | 20131201 |          11 |  7522500 | Morning    | Day       |
|           11 |  110036 | 20131201 |           1 | 17465180 | Morning    | Day       |
|           21 |  110036 | 20131201 |           2 |  7069920 | Morning    | Day       |
|           81 |  110036 | 20131201 |           8 | 27040000 | Morning    | Day       |
|           91 |  110036 | 20131201 |           9 | 15888000 | Morning    | Day       |
|          121 |  110036 | 20131201 |          12 |  1037400 | Morning    | Day       |
|          131 |  110036 | 20131201 |          13 | 12969600 | Morning    | Day       |
|          301 |  110036 | 20131201 |          30 | 14929510 | Morning    | Day       |
|          311 |  110036 | 20131201 |          31 |   554940 | Morning    | Day       |
|          361 |  110036 | 20131201 |          36 | 14064700 | Morning    | Day       |
|           31 |  110037 | 20131201 |           3 |  2298760 | Morning    | Day       |
|          371 |  110037 | 20131201 |          37 |  6494030 | Morning    | Day       |
|          381 |  110037 | 20131201 |          38 |        0 | Morning    | Day       |
|           81 |  111535 | 20131201 |           8 | 29408000 | Morning    | Day       |
|           91 |  111535 | 20131201 |           9 | 15120000 | Morning    | Day       |
|          131 |  111535 | 20131201 |          13 | 12782400 | Morning    | Day       |
|          301 |  111535 | 20131201 |          30 | 14339500 | Morning    | Day       |
|           11 |  111536 | 20131201 |           1 | 16359000 | Morning    | Day       |
|           21 |  111536 | 20131201 |           2 |  8132880 | Morning    | Day       |
|          111 |  111536 | 20131201 |          11 | 10020000 | Morning    | Day       |
|          121 |  111536 | 20131201 |          12 |  1039080 | Morning    | Day       |
|          311 |  111536 | 20131201 |          31 |   554940 | Morning    | Day       |
|          361 |  111536 | 20131201 |          36 | 14264330 | Morning    | Day       |
|          371 |  111536 | 20131201 |          37 |  6634380 | Morning    | Day       |
|           31 |  111537 | 20131201 |           3 |        0 | Morning    | Day       |
|          381 |  111537 | 20131201 |          38 |        0 | Morning    | Day       |
|           11 |  113035 | 20131201 |           1 | 16639440 | Morning    | Day       |
|          131 |  113035 | 20131201 |          13 | 12585600 | Morning    | Day       |
|          301 |  113035 | 20131201 |          30 | 14518610 | Morning    | Day       |
|           21 |  113036 | 20131201 |           2 |  7564320 | Morning    | Day       |
|           31 |  113036 | 20131201 |           3 |        0 | Morning    | Day       |
|           81 |  113036 | 20131201 |           8 | 29904000 | Morning    | Day       |
|           91 |  113036 | 20131201 |           9 | 15552000 | Morning    | Day       |
|          111 |  113036 | 20131201 |          11 |  8542500 | Morning    | Day       |
|          311 |  113036 | 20131201 |          31 |   562430 | Morning    | Day       |
|          361 |  113036 | 20131201 |          36 | 14899510 | Morning    | Day       |
|          121 |  113037 | 20131201 |          12 |  1040760 | Morning    | Day       |
|          371 |  113037 | 20131201 |          37 |  6077100 | Morning    | Day       |
|          381 |  113037 | 20131201 |          38 |        0 | Morning    | Day       |
|          131 |  114535 | 20131201 |          13 | 11995200 | Morning    | Day       |
|          301 |  114535 | 20131201 |          30 | 15361490 | Morning    | Day       |
|           11 |  114536 | 20131201 |           1 | 16374580 | Morning    | Day       |
|           21 |  114536 | 20131201 |           2 |  7440720 | Morning    | Day       |
|           81 |  114536 | 20131201 |           8 | 27392000 | Morning    | Day       |
|           91 |  114536 | 20131201 |           9 | 16592000 | Morning    | Day       |
|          111 |  114536 | 20131201 |          11 |  7815000 | Morning    | Day       |
|          311 |  114536 | 20131201 |          31 |   564100 | Morning    | Day       |
|          361 |  114536 | 20131201 |          36 | 14772470 | Morning    | Day       |
|          371 |  114536 | 20131201 |          37 |  7753070 | Morning    | Day       |
|           31 |  114537 | 20131201 |           3 |  2276000 | Morning    | Day       |
|          121 |  114537 | 20131201 |          12 |  1044960 | Morning    | Day       |
|          381 |  114537 | 20131201 |          38 |        0 | Morning    | Day       |
|          131 |  120035 | 20131201 |          13 | 14769600 | Afternoon  | Day       |
|          301 |  120035 | 20131201 |          30 | 14265740 | Afternoon  | Day       |
|           11 |  120036 | 20131201 |           1 | 15860440 | Afternoon  | Day       |
|           21 |  120036 | 20131201 |           2 |  8145240 | Afternoon  | Day       |
|           81 |  120036 | 20131201 |           8 | 28192000 | Afternoon  | Day       |
|           91 |  120036 | 20131201 |           9 | 17488000 | Afternoon  | Day       |
|          111 |  120036 | 20131201 |          11 |  8677500 | Afternoon  | Day       |
|          121 |  120036 | 20131201 |          12 |  1044960 | Afternoon  | Day       |
|          311 |  120036 | 20131201 |          31 |   563260 | Afternoon  | Day       |
|          361 |  120036 | 20131201 |          36 | 14282480 | Afternoon  | Day       |
|          371 |  120036 | 20131201 |          37 |  5488860 | Afternoon  | Day       |
|           31 |  120037 | 20131201 |           3 |        0 | Afternoon  | Day       |
|          381 |  120037 | 20131201 |          38 |        0 | Afternoon  | Day       |
|           11 |  121535 | 20131201 |           1 | 17792360 | Afternoon  | Day       |
|          131 |  121535 | 20131201 |          13 | 13814400 | Afternoon  | Day       |
|          301 |  121535 | 20131201 |          30 | 14529140 | Afternoon  | Day       |
|          311 |  121535 | 20131201 |          31 |   563260 | Afternoon  | Day       |
|           21 |  121536 | 20131201 |           2 |  7687920 | Afternoon  | Day       |
|           31 |  121536 | 20131201 |           3 |  2298760 | Afternoon  | Day       |
|           81 |  121536 | 20131201 |           8 | 30832000 | Afternoon  | Day       |
|           91 |  121536 | 20131201 |           9 | 15728000 | Afternoon  | Day       |
|          111 |  121536 | 20131201 |          11 | 11175000 | Afternoon  | Day       |
|          361 |  121536 | 20131201 |          36 | 14391360 | Afternoon  | Day       |
|          371 |  121536 | 20131201 |          37 |  6445180 | Afternoon  | Day       |
|          381 |  121536 | 20131201 |          38 |        0 | Afternoon  | Day       |
|          121 |  121537 | 20131201 |          12 |  1042440 | Afternoon  | Day       |
|           11 |  123035 | 20131201 |           1 | 16203200 | Afternoon  | Day       |
|          131 |  123035 | 20131201 |          13 | 13401600 | Afternoon  | Day       |
|           21 |  123036 | 20131201 |           2 |  6971040 | Afternoon  | Day       |
|           31 |  123036 | 20131201 |           3 |        0 | Afternoon  | Day       |
|           81 |  123036 | 20131201 |           8 | 28416000 | Afternoon  | Day       |
|           91 |  123036 | 20131201 |           9 | 15728000 | Afternoon  | Day       |
|          111 |  123036 | 20131201 |          11 |  9330000 | Afternoon  | Day       |
|          121 |  123036 | 20131201 |          12 |  1042440 | Afternoon  | Day       |
|          301 |  123036 | 20131201 |          30 | 14139310 | Afternoon  | Day       |
|          311 |  123036 | 20131201 |          31 |   564100 | Afternoon  | Day       |
|          361 |  123036 | 20131201 |          36 | 14645440 | Afternoon  | Day       |
|          371 |  123037 | 20131201 |          37 |  5276960 | Afternoon  | Day       |
|          381 |  123037 | 20131201 |          38 |        0 | Afternoon  | Day       |
|          131 |  124535 | 20131201 |          13 | 13382400 | Afternoon  | Day       |
|           11 |  124536 | 20131201 |           1 | 19334780 | Afternoon  | Day       |
|           81 |  124536 | 20131201 |           8 | 28800000 | Afternoon  | Day       |
|           91 |  124536 | 20131201 |           9 | 15696000 | Afternoon  | Day       |
|          111 |  124536 | 20131201 |          11 |  8527500 | Afternoon  | Day       |
|          301 |  124536 | 20131201 |          30 | 14402710 | Afternoon  | Day       |
|          311 |  124536 | 20131201 |          31 |   559100 | Afternoon  | Day       |
|          361 |  124536 | 20131201 |          36 | 14427660 | Afternoon  | Day       |
|           21 |  124537 | 20131201 |           2 |  6649680 | Afternoon  | Day       |
|           31 |  124537 | 20131201 |           3 |        0 | Afternoon  | Day       |
|          121 |  124537 | 20131201 |          12 |  1040760 | Afternoon  | Day       |
|          371 |  124537 | 20131201 |          37 |  5712460 | Afternoon  | Day       |
|          381 |  124537 | 20131201 |          38 |        0 | Afternoon  | Day       |
|           81 |  130035 | 20131201 |           8 | 27264000 | Afternoon  | Day       |
|          131 |  130035 | 20131201 |          13 | 12340800 | Afternoon  | Day       |
|           11 |  130036 | 20131201 |           1 | 18493460 | Afternoon  | Day       |
|           21 |  130036 | 20131201 |           2 |  6760920 | Afternoon  | Day       |
|           91 |  130036 | 20131201 |           9 | 15632000 | Afternoon  | Day       |
|          111 |  130036 | 20131201 |          11 |  8565000 | Afternoon  | Day       |
|          301 |  130036 | 20131201 |          30 | 15077020 | Afternoon  | Day       |
|          311 |  130036 | 20131201 |          31 |   561600 | Afternoon  | Day       |
|          361 |  130036 | 20131201 |          36 | 14609140 | Afternoon  | Day       |
|           31 |  130037 | 20131201 |           3 |        0 | Afternoon  | Day       |
|          121 |  130037 | 20131201 |          12 |  1039920 | Afternoon  | Day       |
|          371 |  130037 | 20131201 |          37 |  6693550 | Afternoon  | Day       |
|          381 |  130037 | 20131201 |          38 |        0 | Afternoon  | Day       |
|           81 |  131535 | 20131201 |           8 | 26192000 | Afternoon  | Day       |
|          131 |  131535 | 20131201 |          13 | 12264000 | Afternoon  | Day       |
|          301 |  131535 | 20131201 |          30 | 15888290 | Afternoon  | Day       |
|          311 |  131535 | 20131201 |          31 |   561600 | Afternoon  | Day       |
|           11 |  131536 | 20131201 |           1 | 22996080 | Afternoon  | Day       |
|           21 |  131536 | 20131201 |           2 |  6513720 | Afternoon  | Day       |
|           91 |  131536 | 20131201 |           9 | 17344000 | Afternoon  | Day       |
|          111 |  131536 | 20131201 |          11 |  7702500 | Afternoon  | Day       |
|          121 |  131536 | 20131201 |          12 |  1040760 | Afternoon  | Day       |
|          361 |  131536 | 20131201 |          36 | 14155440 | Afternoon  | Day       |
|          371 |  131536 | 20131201 |          37 |  7735870 | Afternoon  | Day       |
|          381 |  131536 | 20131201 |          38 |        0 | Afternoon  | Day       |
|           31 |  131537 | 20131201 |           3 |        0 | Afternoon  | Day       |
|          301 |  133035 | 20131201 |          30 | 14855760 | Afternoon  | Day       |
|           11 |  133036 | 20131201 |           1 | 21858740 | Afternoon  | Day       |
|           21 |  133036 | 20131201 |           2 |  6785640 | Afternoon  | Day       |
|           81 |  133036 | 20131201 |           8 | 29744000 | Afternoon  | Day       |
|           91 |  133036 | 20131201 |           9 | 15968000 | Afternoon  | Day       |
|          111 |  133036 | 20131201 |          11 | 10132500 | Afternoon  | Day       |
|          131 |  133036 | 20131201 |          13 | 13017600 | Afternoon  | Day       |
|          311 |  133036 | 20131201 |          31 |   561600 | Afternoon  | Day       |
|          361 |  133036 | 20131201 |          36 | 14101000 | Afternoon  | Day       |
|          371 |  133036 | 20131201 |          37 |  6629570 | Afternoon  | Day       |
|           31 |  133037 | 20131201 |           3 |        0 | Afternoon  | Day       |
|          121 |  133037 | 20131201 |          12 |  1042440 | Afternoon  | Day       |
|          381 |  133037 | 20131201 |          38 |        0 | Afternoon  | Day       |
|           11 |  134535 | 20131201 |           1 | 21282280 | Afternoon  | Day       |
|           21 |  134536 | 20131201 |           2 |  6909240 | Afternoon  | Day       |
|           31 |  134536 | 20131201 |           3 |        0 | Afternoon  | Day       |
|           81 |  134536 | 20131201 |           8 | 31744000 | Afternoon  | Day       |
|           91 |  134536 | 20131201 |           9 | 15504000 | Afternoon  | Day       |
|          111 |  134536 | 20131201 |          11 | 11077500 | Afternoon  | Day       |
|          121 |  134536 | 20131201 |          12 |  1042440 | Afternoon  | Day       |
|          131 |  134536 | 20131201 |          13 | 13483200 | Afternoon  | Day       |
|          301 |  134536 | 20131201 |          30 | 14202530 | Afternoon  | Day       |
|          311 |  134536 | 20131201 |          31 |   565760 | Afternoon  | Day       |
|          361 |  134536 | 20131201 |          36 | 14427660 | Afternoon  | Day       |
|          371 |  134537 | 20131201 |          37 |  5830800 | Afternoon  | Day       |
|          381 |  134537 | 20131201 |          38 |        0 | Afternoon  | Day       |
|           11 |  140035 | 20131201 |           1 | 23743920 | Afternoon  | Day       |
|           81 |  140035 | 20131201 |           8 | 28416000 | Afternoon  | Day       |
|          301 |  140035 | 20131201 |          30 | 14149850 | Afternoon  | Day       |
|           21 |  140036 | 20131201 |           2 |  7477800 | Afternoon  | Day       |
|           31 |  140036 | 20131201 |           3 |        0 | Afternoon  | Day       |
|           91 |  140036 | 20131201 |           9 | 16896000 | Afternoon  | Day       |
|          111 |  140036 | 20131201 |          11 |  9127500 | Afternoon  | Day       |
|          121 |  140036 | 20131201 |          12 |  1041600 | Afternoon  | Day       |
|          131 |  140036 | 20131201 |          13 | 13627200 | Afternoon  | Day       |
|          311 |  140036 | 20131201 |          31 |   565760 | Afternoon  | Day       |
|          361 |  140036 | 20131201 |          36 | 14554700 | Afternoon  | Day       |
|          371 |  140036 | 20131201 |          37 |  5264580 | Afternoon  | Day       |
|          381 |  140037 | 20131201 |          38 |        0 | Afternoon  | Day       |
|           11 |  141535 | 20131201 |           1 | 20176100 | Afternoon  | Day       |
|          301 |  141535 | 20131201 |          30 | 15603820 | Afternoon  | Day       |
|           21 |  141536 | 20131201 |           2 |  7885680 | Afternoon  | Day       |
|           31 |  141536 | 20131201 |           3 |        0 | Afternoon  | Day       |
|           81 |  141536 | 20131201 |           8 | 30704000 | Afternoon  | Day       |
|          111 |  141536 | 20131201 |          11 |  9907500 | Afternoon  | Day       |
|          121 |  141536 | 20131201 |          12 |  1040760 | Afternoon  | Day       |
|          131 |  141536 | 20131201 |          13 | 13689600 | Afternoon  | Day       |
|          311 |  141536 | 20131201 |          31 |   568260 | Afternoon  | Day       |
|          361 |  141536 | 20131201 |          36 | 14627290 | Afternoon  | Day       |
|          371 |  141536 | 20131201 |          37 |  7037550 | Afternoon  | Day       |
|           91 |  141537 | 20131201 |           9 | 16000000 | Afternoon  | Day       |
|          381 |  141537 | 20131201 |          38 |        0 | Afternoon  | Day       |
|           11 |  143035 | 20131201 |           1 | 19677540 | Afternoon  | Day       |
|           81 |  143035 | 20131201 |           8 | 33072000 | Afternoon  | Day       |
|          131 |  143035 | 20131201 |          13 | 14203200 | Afternoon  | Day       |
|          301 |  143035 | 20131201 |          30 | 14560750 | Afternoon  | Day       |
|          311 |  143035 | 20131201 |          31 |   566590 | Afternoon  | Day       |
|           21 |  143036 | 20131201 |           2 |  7057560 | Afternoon  | Day       |
|           91 |  143036 | 20131201 |           9 | 17520000 | Afternoon  | Day       |
|          111 |  143036 | 20131201 |          11 | 11715000 | Afternoon  | Day       |
|          361 |  143036 | 20131201 |          36 | 14046550 | Afternoon  | Day       |
|          371 |  143036 | 20131201 |          37 |  6117700 | Afternoon  | Day       |
|           31 |  143037 | 20131201 |           3 |  5098240 | Afternoon  | Day       |
|          121 |  143037 | 20131201 |          12 |  1044120 | Afternoon  | Day       |
|          381 |  143037 | 20131201 |          38 |        0 | Afternoon  | Day       |
|           11 |  144535 | 20131201 |           1 | 17745620 | Afternoon  | Day       |
|          131 |  144535 | 20131201 |          13 | 12561600 | Afternoon  | Day       |
|          301 |  144535 | 20131201 |          30 | 14971660 | Afternoon  | Day       |
|           21 |  144536 | 20131201 |           2 |  6971040 | Afternoon  | Day       |
|           31 |  144536 | 20131201 |           3 |        0 | Afternoon  | Day       |
|           81 |  144536 | 20131201 |           8 | 29952000 | Afternoon  | Day       |
|           91 |  144536 | 20131201 |           9 | 16224000 | Afternoon  | Day       |
|          111 |  144536 | 20131201 |          11 | 10042500 | Afternoon  | Day       |
|          311 |  144536 | 20131201 |          31 |   565760 | Afternoon  | Day       |
|          361 |  144536 | 20131201 |          36 | 14119140 | Afternoon  | Day       |
|          371 |  144536 | 20131201 |          37 |  6585540 | Afternoon  | Day       |
|          121 |  144537 | 20131201 |          12 |  1041600 | Afternoon  | Day       |
|          381 |  144537 | 20131201 |          38 |        0 | Afternoon  | Day       |
|           11 |  150035 | 20131201 |           1 | 19147820 | Afternoon  | Day       |
|           81 |  150035 | 20131201 |           8 | 29392000 | Afternoon  | Day       |
|          301 |  150035 | 20131201 |          30 | 14423780 | Afternoon  | Day       |
|           21 |  150036 | 20131201 |           2 |  7057560 | Afternoon  | Day       |
|           31 |  150036 | 20131201 |           3 |  2276000 | Afternoon  | Day       |
|           91 |  150036 | 20131201 |           9 | 16128000 | Afternoon  | Day       |
|          111 |  150036 | 20131201 |          11 |  9735000 | Afternoon  | Day       |
|          131 |  150036 | 20131201 |          13 | 13022400 | Afternoon  | Day       |
|          311 |  150036 | 20131201 |          31 |   569090 | Afternoon  | Day       |
|          361 |  150036 | 20131201 |          36 | 15552840 | Afternoon  | Day       |
|          371 |  150036 | 20131201 |          37 |  5957390 | Afternoon  | Day       |
|          121 |  150037 | 20131201 |          12 |  1042440 | Afternoon  | Day       |
|          381 |  150037 | 20131201 |          38 |        0 | Afternoon  | Day       |
|          131 |  151535 | 20131201 |          13 | 12542400 | Afternoon  | Day       |
|           11 |  151536 | 20131201 |           1 | 23899720 | Afternoon  | Day       |
|           21 |  151536 | 20131201 |           2 |  7935120 | Afternoon  | Day       |
|           81 |  151536 | 20131201 |           8 | 33680000 | Afternoon  | Day       |
|           91 |  151536 | 20131201 |           9 | 15856000 | Afternoon  | Day       |
|          111 |  151536 | 20131201 |          11 | 11355000 | Afternoon  | Day       |
|          121 |  151536 | 20131201 |          12 |  1044960 | Afternoon  | Day       |
|          301 |  151536 | 20131201 |          30 | 15414170 | Afternoon  | Day       |
|          311 |  151536 | 20131201 |          31 |   570750 | Afternoon  | Day       |
|          361 |  151536 | 20131201 |          36 | 14718030 | Afternoon  | Day       |
|           31 |  151537 | 20131201 |           3 |  2276000 | Afternoon  | Day       |
|          371 |  151537 | 20131201 |          37 |  7111860 | Afternoon  | Day       |
|          381 |  151537 | 20131201 |          38 |  1312000 | Afternoon  | Day       |
|           11 |  153035 | 20131201 |           1 | 20067040 | Afternoon  | Day       |
|           21 |  153036 | 20131201 |           2 |  7453080 | Afternoon  | Day       |
|           31 |  153036 | 20131201 |           3 |        0 | Afternoon  | Day       |
|           81 |  153036 | 20131201 |           8 | 32496000 | Afternoon  | Day       |
|           91 |  153036 | 20131201 |           9 | 17744000 | Afternoon  | Day       |
|          111 |  153036 | 20131201 |          11 | 11767500 | Afternoon  | Day       |
|          121 |  153036 | 20131201 |          12 |  1044120 | Afternoon  | Day       |
|          131 |  153036 | 20131201 |          13 | 15268800 | Afternoon  | Day       |
|          301 |  153036 | 20131201 |          30 | 15972580 | Afternoon  | Day       |
|          311 |  153036 | 20131201 |          31 |   570750 | Afternoon  | Day       |
|          361 |  153036 | 20131201 |          36 | 15335060 | Afternoon  | Day       |
|          371 |  153037 | 20131201 |          37 |  6803630 | Afternoon  | Day       |
|          381 |  153037 | 20131201 |          38 |        0 | Afternoon  | Day       |
|           11 |  154535 | 20131201 |           1 | 20674660 | Afternoon  | Day       |
|          131 |  154535 | 20131201 |          13 | 14169600 | Afternoon  | Day       |
|          301 |  154535 | 20131201 |          30 | 15867220 | Afternoon  | Day       |
|           21 |  154536 | 20131201 |           2 |  7725000 | Afternoon  | Day       |
|           31 |  154536 | 20131201 |           3 |        0 | Afternoon  | Day       |
|           81 |  154536 | 20131201 |           8 | 31248000 | Afternoon  | Day       |
|           91 |  154536 | 20131201 |           9 | 16320000 | Afternoon  | Day       |
|          311 |  154536 | 20131201 |          31 |   570750 | Afternoon  | Day       |
|          361 |  154536 | 20131201 |          36 | 14754320 | Afternoon  | Day       |
|          371 |  154536 | 20131201 |          37 |  7462740 | Afternoon  | Day       |
|          111 |  154537 | 20131201 |          11 | 10245000 | Afternoon  | Day       |
|          121 |  154537 | 20131201 |          12 |  1045800 | Afternoon  | Day       |
|          381 |  154537 | 20131201 |          38 |  1440000 | Afternoon  | Day       |
|           11 |  160035 | 20131201 |           1 | 21219960 | Afternoon  | Day       |
|           81 |  160035 | 20131201 |           8 | 29168000 | Afternoon  | Day       |
|          301 |  160035 | 20131201 |          30 | 16657420 | Afternoon  | Day       |
|           21 |  160036 | 20131201 |           2 |  7539600 | Afternoon  | Day       |
|           31 |  160036 | 20131201 |           3 |        0 | Afternoon  | Day       |
|           91 |  160036 | 20131201 |           9 | 16432000 | Afternoon  | Day       |
|          111 |  160036 | 20131201 |          11 |  9960000 | Afternoon  | Day       |
|          121 |  160036 | 20131201 |          12 |  1043280 | Afternoon  | Day       |
|          131 |  160036 | 20131201 |          13 | 11112000 | Afternoon  | Day       |
|          311 |  160036 | 20131201 |          31 |   567420 | Afternoon  | Day       |
|          361 |  160036 | 20131201 |          36 | 14300620 | Afternoon  | Day       |
|          371 |  160036 | 20131201 |          37 |  8096380 | Afternoon  | Day       |
|          381 |  160037 | 20131201 |          38 |  1384000 | Afternoon  | Day       |
|           81 |  161535 | 20131201 |           8 | 31312000 | Afternoon  | Day       |
|           11 |  161536 | 20131201 |           1 | 21780840 | Afternoon  | Day       |
|           21 |  161536 | 20131201 |           2 |  9171120 | Afternoon  | Day       |
|           91 |  161536 | 20131201 |           9 | 15920000 | Afternoon  | Day       |
|          111 |  161536 | 20131201 |          11 | 10972500 | Afternoon  | Day       |
|          131 |  161536 | 20131201 |          13 | 12662400 | Afternoon  | Day       |
|          301 |  161536 | 20131201 |          30 | 17331720 | Afternoon  | Day       |
|          311 |  161536 | 20131201 |          31 |   567420 | Afternoon  | Day       |
|          361 |  161536 | 20131201 |          36 | 15625430 | Afternoon  | Day       |
|           31 |  161537 | 20131201 |           3 |        0 | Afternoon  | Day       |
|          121 |  161537 | 20131201 |          12 |  1043280 | Afternoon  | Day       |
|          371 |  161537 | 20131201 |          37 | 10139060 | Afternoon  | Day       |
|          381 |  161537 | 20131201 |          38 |  1432000 | Afternoon  | Day       |
|           11 |  163035 | 20131201 |           1 | 24709880 | Afternoon  | Day       |
|           81 |  163035 | 20131201 |           8 | 33248000 | Afternoon  | Day       |
|          111 |  163035 | 20131201 |          11 | 12727500 | Afternoon  | Day       |
|          301 |  163035 | 20131201 |          30 | 15782930 | Afternoon  | Day       |
|          311 |  163035 | 20131201 |          31 |   564930 | Afternoon  | Day       |
|           21 |  163036 | 20131201 |           2 |  7440720 | Afternoon  | Day       |
|           31 |  163036 | 20131201 |           3 |        0 | Afternoon  | Day       |
|           91 |  163036 | 20131201 |           9 | 16224000 | Afternoon  | Day       |
|          121 |  163036 | 20131201 |          12 |  1043280 | Afternoon  | Day       |
|          131 |  163036 | 20131201 |          13 | 13732800 | Afternoon  | Day       |
|          361 |  163036 | 20131201 |          36 | 15008400 | Afternoon  | Day       |
|          371 |  163036 | 20131201 |          37 |  8289710 | Afternoon  | Day       |
|          381 |  163036 | 20131201 |          38 |  1464000 | Afternoon  | Day       |
|          131 |  164535 | 20131201 |          13 | 14116800 | Afternoon  | Day       |
|           11 |  164536 | 20131201 |           1 | 22762380 | Afternoon  | Day       |
|           21 |  164536 | 20131201 |           2 |  8207040 | Afternoon  | Day       |
|           81 |  164536 | 20131201 |           8 | 34224000 | Afternoon  | Day       |
|           91 |  164536 | 20131201 |           9 | 17424000 | Afternoon  | Day       |
|          111 |  164536 | 20131201 |          11 | 10402500 | Afternoon  | Day       |
|          121 |  164536 | 20131201 |          12 |  1040760 | Afternoon  | Day       |
|          301 |  164536 | 20131201 |          30 | 16120080 | Afternoon  | Day       |
|          311 |  164536 | 20131201 |          31 |   559940 | Afternoon  | Day       |
|          361 |  164536 | 20131201 |          36 | 15552840 | Afternoon  | Day       |
|           31 |  164537 | 20131201 |           3 |        0 | Afternoon  | Day       |
|          371 |  164537 | 20131201 |          37 |  7596210 | Afternoon  | Day       |
|          381 |  164537 | 20131201 |          38 |        0 | Afternoon  | Day       |
|           11 |  170035 | 20131201 |           1 | 23977620 | Afternoon  | Day       |
|           81 |  170035 | 20131201 |           8 | 32176000 | Afternoon  | Day       |
|           21 |  170036 | 20131201 |           2 |  7502520 | Afternoon  | Day       |
|           31 |  170036 | 20131201 |           3 |  3709880 | Afternoon  | Day       |
|           91 |  170036 | 20131201 |           9 | 16128000 | Afternoon  | Day       |
|          111 |  170036 | 20131201 |          11 | 11392500 | Afternoon  | Day       |
|          131 |  170036 | 20131201 |          13 | 13540800 | Afternoon  | Day       |
|          301 |  170036 | 20131201 |          30 | 16394020 | Afternoon  | Day       |
|          311 |  170036 | 20131201 |          31 |   574080 | Afternoon  | Day       |
|          361 |  170036 | 20131201 |          36 | 15843200 | Afternoon  | Day       |
|          121 |  170037 | 20131201 |          12 |  1044960 | Afternoon  | Day       |
|          371 |  170037 | 20131201 |          37 |  9476510 | Afternoon  | Day       |
|          381 |  170038 | 20131201 |          38 |        0 | Afternoon  | Day       |
|           11 |  171535 | 20131201 |           1 | 24304800 | Afternoon  | Day       |
|           21 |  171535 | 20131201 |           2 |  7341840 | Afternoon  | Day       |
|          131 |  171535 | 20131201 |          13 | 13713600 | Afternoon  | Day       |
|          301 |  171535 | 20131201 |          30 | 17205290 | Afternoon  | Day       |
|           31 |  171536 | 20131201 |           3 |  3596080 | Afternoon  | Day       |
|           81 |  171536 | 20131201 |           8 | 32080000 | Afternoon  | Day       |
|           91 |  171536 | 20131201 |           9 | 16224000 | Afternoon  | Day       |
|          311 |  171536 | 20131201 |          31 |   574910 | Afternoon  | Day       |
|          361 |  171536 | 20131201 |          36 | 15280620 | Afternoon  | Day       |
|          371 |  171536 | 20131201 |          37 | 10797470 | Afternoon  | Day       |
|          111 |  171537 | 20131201 |          11 | 11197500 | Afternoon  | Day       |
|          121 |  171537 | 20131201 |          12 |  1046640 | Afternoon  | Day       |
|          381 |  171537 | 20131201 |          38 |        0 | Afternoon  | Day       |
|           81 |  173035 | 20131201 |           8 | 32512000 | Afternoon  | Day       |
|          131 |  173035 | 20131201 |          13 | 12686400 | Afternoon  | Day       |
|           11 |  173036 | 20131201 |           1 | 27841460 | Afternoon  | Day       |
|           21 |  173036 | 20131201 |           2 |  8194680 | Afternoon  | Day       |
|           91 |  173036 | 20131201 |           9 | 16416000 | Afternoon  | Day       |
|          111 |  173036 | 20131201 |          11 | 11085000 | Afternoon  | Day       |
|          301 |  173036 | 20131201 |          30 | 17426540 | Afternoon  | Day       |
|          311 |  173036 | 20131201 |          31 |   573250 | Afternoon  | Day       |
|          361 |  173036 | 20131201 |          36 | 15244320 | Afternoon  | Day       |
|           31 |  173037 | 20131201 |           3 |  3573320 | Afternoon  | Day       |
|          121 |  173037 | 20131201 |          12 |  1044960 | Afternoon  | Day       |
|          371 |  173037 | 20131201 |          37 | 10488560 | Afternoon  | Day       |
|          381 |  173037 | 20131201 |          38 |        0 | Afternoon  | Day       |
|          301 |  174535 | 20131201 |          30 | 17605660 | Afternoon  | Day       |
|           11 |  174536 | 20131201 |           1 | 25691420 | Afternoon  | Day       |
|           21 |  174536 | 20131201 |           2 |  7613760 | Afternoon  | Day       |
|           81 |  174536 | 20131201 |           8 | 32608000 | Afternoon  | Day       |
|           91 |  174536 | 20131201 |           9 | 15968000 | Afternoon  | Day       |
|          111 |  174536 | 20131201 |          11 | 11872500 | Afternoon  | Day       |
|          121 |  174536 | 20131201 |          12 |  1044960 | Afternoon  | Day       |
|          131 |  174536 | 20131201 |          13 | 13401600 | Afternoon  | Day       |
|          311 |  174536 | 20131201 |          31 |   570750 | Afternoon  | Day       |
|          361 |  174536 | 20131201 |          36 | 15462100 | Afternoon  | Day       |
|          371 |  174536 | 20131201 |          37 | 10939890 | Afternoon  | Day       |
|           31 |  174537 | 20131201 |           3 |  3550560 | Afternoon  | Day       |
|          381 |  174537 | 20131201 |          38 |        0 | Afternoon  | Day       |
|           11 |  180035 | 20131201 |           1 | 23930880 | Dusk       | Day       |
|          301 |  180035 | 20131201 |          30 | 17869060 | Dusk       | Day       |
|           21 |  180036 | 20131201 |           2 |  7589040 | Dusk       | Day       |
|           31 |  180036 | 20131201 |           3 |  3641600 | Dusk       | Day       |
|           81 |  180036 | 20131201 |           8 | 31568000 | Dusk       | Day       |
|           91 |  180036 | 20131201 |           9 | 18464000 | Dusk       | Day       |
|          111 |  180036 | 20131201 |          11 | 11737500 | Dusk       | Day       |
|          131 |  180036 | 20131201 |          13 | 14995200 | Dusk       | Day       |
|          311 |  180036 | 20131201 |          31 |   567420 | Dusk       | Day       |
|          361 |  180036 | 20131201 |          36 | 14972100 | Dusk       | Day       |
|          371 |  180036 | 20131201 |          37 |  9889310 | Dusk       | Day       |
|          121 |  180037 | 20131201 |          12 |  1061760 | Dusk       | Day       |
|          381 |  180037 | 20131201 |          38 |        0 | Dusk       | Day       |
|           81 |  181535 | 20131201 |           8 | 32864000 | Dusk       | Day       |
|          131 |  181535 | 20131201 |          13 | 14107200 | Dusk       | Day       |
|           11 |  181536 | 20131201 |           1 | 24678720 | Dusk       | Day       |
|           21 |  181536 | 20131201 |           2 |  7317120 | Dusk       | Day       |
|           91 |  181536 | 20131201 |           9 | 16336000 | Dusk       | Day       |
|          111 |  181536 | 20131201 |          11 | 11745000 | Dusk       | Day       |
|          301 |  181536 | 20131201 |          30 | 17574050 | Dusk       | Day       |
|          311 |  181536 | 20131201 |          31 |   574080 | Dusk       | Day       |
|          361 |  181536 | 20131201 |          36 | 15080990 | Dusk       | Day       |
|           31 |  181537 | 20131201 |           3 |  3778160 | Dusk       | Day       |
|          121 |  181537 | 20131201 |          12 |  1053360 | Dusk       | Day       |
|          371 |  181537 | 20131201 |          37 | 11280450 | Dusk       | Day       |
|          381 |  181537 | 20131201 |          38 |        0 | Dusk       | Day       |
|          131 |  183035 | 20131201 |          13 | 14107200 | Dusk       | Day       |
|          301 |  183035 | 20131201 |          30 | 17047250 | Dusk       | Day       |
|           11 |  183036 | 20131201 |           1 | 26859920 | Dusk       | Day       |
|           21 |  183036 | 20131201 |           2 |  7873320 | Dusk       | Day       |
|           81 |  183036 | 20131201 |           8 | 31552000 | Dusk       | Day       |
|           91 |  183036 | 20131201 |           9 | 17152000 | Dusk       | Day       |
|          111 |  183036 | 20131201 |          11 | 10470000 | Dusk       | Day       |
|          121 |  183036 | 20131201 |          12 |  1048320 | Dusk       | Day       |
|          311 |  183036 | 20131201 |          31 |   573250 | Dusk       | Day       |
|          361 |  183036 | 20131201 |          36 | 16823200 | Dusk       | Day       |
|          371 |  183036 | 20131201 |          37 | 10562180 | Dusk       | Day       |
|           31 |  183037 | 20131201 |           3 |  3664360 | Dusk       | Day       |
|          381 |  183037 | 20131201 |          38 |        0 | Dusk       | Day       |
|          131 |  184535 | 20131201 |          13 | 14270400 | Dusk       | Day       |
|           11 |  184536 | 20131201 |           1 | 23743920 | Dusk       | Day       |
|           21 |  184536 | 20131201 |           2 |  8800320 | Dusk       | Day       |
|           81 |  184536 | 20131201 |           8 | 32560000 | Dusk       | Day       |
|           91 |  184536 | 20131201 |           9 | 17344000 | Dusk       | Day       |
|          111 |  184536 | 20131201 |          11 | 11932500 | Dusk       | Day       |
|          301 |  184536 | 20131201 |          30 | 16499380 | Dusk       | Day       |
|          311 |  184536 | 20131201 |          31 |   570750 | Dusk       | Day       |
|          361 |  184536 | 20131201 |          36 | 15643580 | Dusk       | Day       |
|           31 |  184537 | 20131201 |           3 |  3709880 | Dusk       | Day       |
|          121 |  184537 | 20131201 |          12 |  1050000 | Dusk       | Day       |
|          371 |  184537 | 20131201 |          37 |  9559760 | Dusk       | Day       |
|          381 |  184537 | 20131201 |          38 |        0 | Dusk       | Day       |
|           81 |  190035 | 20131201 |           8 | 35840000 | Dusk       | Day       |
|          301 |  190035 | 20131201 |          30 | 16246510 | Dusk       | Day       |
|           11 |  190036 | 20131201 |           1 | 22528680 | Dusk       | Day       |
|           21 |  190036 | 20131201 |           2 |  6946320 | Dusk       | Day       |
|           91 |  190036 | 20131201 |           9 | 16960000 | Dusk       | Day       |
|          111 |  190036 | 20131201 |          11 | 13950000 | Dusk       | Day       |
|          131 |  190036 | 20131201 |          13 | 14476800 | Dusk       | Day       |
|          311 |  190036 | 20131201 |          31 |   568260 | Dusk       | Day       |
|          361 |  190036 | 20131201 |          36 | 14718030 | Dusk       | Day       |
|           31 |  190037 | 20131201 |           3 |  3755400 | Dusk       | Day       |
|          121 |  190037 | 20131201 |          12 |  1045800 | Dusk       | Day       |
|          371 |  190037 | 20131201 |          37 |  9219200 | Dusk       | Day       |
|          381 |  190037 | 20131201 |          38 |        0 | Dusk       | Day       |
|           11 |  191535 | 20131201 |           1 | 22544260 | Dusk       | Day       |
|          131 |  191535 | 20131201 |          13 | 13814400 | Dusk       | Day       |
|           21 |  191536 | 20131201 |           2 |  6723840 | Dusk       | Day       |
|           31 |  191536 | 20131201 |           3 |  2276000 | Dusk       | Day       |
|           81 |  191536 | 20131201 |           8 | 36256000 | Dusk       | Day       |
|           91 |  191536 | 20131201 |           9 | 15632000 | Dusk       | Day       |
|          111 |  191536 | 20131201 |          11 | 11730000 | Dusk       | Day       |
|          301 |  191536 | 20131201 |          30 | 15888290 | Dusk       | Day       |
|          311 |  191536 | 20131201 |          31 |   571580 | Dusk       | Day       |
|          361 |  191536 | 20131201 |          36 | 16151720 | Dusk       | Day       |
|          121 |  191537 | 20131201 |          12 |  1047480 | Dusk       | Day       |
|          371 |  191537 | 20131201 |          37 |  9259790 | Dusk       | Day       |
|          381 |  191537 | 20131201 |          38 |        0 | Dusk       | Day       |
|           11 |  193035 | 20131201 |           1 | 24086680 | Dusk       | Day       |
|           81 |  193035 | 20131201 |           8 | 35280000 | Dusk       | Day       |
|          131 |  193035 | 20131201 |          13 | 14044800 | Dusk       | Day       |
|           21 |  193036 | 20131201 |           2 |  6872160 | Dusk       | Day       |
|           31 |  193036 | 20131201 |           3 |        0 | Dusk       | Day       |
|           91 |  193036 | 20131201 |           9 | 18448000 | Dusk       | Day       |
|          111 |  193036 | 20131201 |          11 | 11550000 | Dusk       | Day       |
|          121 |  193036 | 20131201 |          12 |  1047480 | Dusk       | Day       |
|          301 |  193036 | 20131201 |          30 | 15972580 | Dusk       | Day       |
|          311 |  193036 | 20131201 |          31 |   568260 | Dusk       | Day       |
|          361 |  193036 | 20131201 |          36 | 15516540 | Dusk       | Day       |
|          371 |  193037 | 20131201 |          37 |  9467570 | Dusk       | Day       |
|          381 |  193037 | 20131201 |          38 |        0 | Dusk       | Day       |
|           11 |  194535 | 20131201 |           1 | 27202680 | Dusk       | Day       |
|           81 |  194535 | 20131201 |           8 | 36384000 | Dusk       | Day       |
|          131 |  194535 | 20131201 |          13 | 14404800 | Dusk       | Day       |
|          301 |  194535 | 20131201 |          30 | 16394020 | Dusk       | Day       |
|           21 |  194536 | 20131201 |           2 |  8095800 | Dusk       | Day       |
|           31 |  194536 | 20131201 |           3 |  2321520 | Dusk       | Day       |
|           91 |  194536 | 20131201 |           9 | 16736000 | Dusk       | Day       |
|          111 |  194536 | 20131201 |          11 | 12105000 | Dusk       | Day       |
|          121 |  194536 | 20131201 |          12 |  1047480 | Dusk       | Day       |
|          311 |  194536 | 20131201 |          31 |   570750 | Dusk       | Day       |
|          361 |  194536 | 20131201 |          36 | 14536550 | Dusk       | Day       |
|          371 |  194536 | 20131201 |          37 |  9356110 | Dusk       | Day       |
|          381 |  194537 | 20131201 |          38 |        0 | Dusk       | Day       |
|           11 |  200036 | 20131201 |           1 | 25878380 | Dusk       | Night     |
|           21 |  200036 | 20131201 |           2 |  7304760 | Dusk       | Night     |
|           81 |  200036 | 20131201 |           8 | 36256000 | Dusk       | Night     |
|           91 |  200036 | 20131201 |           9 | 15520000 | Dusk       | Night     |
|          111 |  200036 | 20131201 |          11 | 12127500 | Dusk       | Night     |
|          131 |  200036 | 20131201 |          13 | 12331200 | Dusk       | Night     |
|          301 |  200036 | 20131201 |          30 | 16362410 | Dusk       | Night     |
|          311 |  200036 | 20131201 |          31 |   569920 | Dusk       | Night     |
|          361 |  200036 | 20131201 |          36 | 15335060 | Dusk       | Night     |
|           31 |  200037 | 20131201 |           3 |        0 | Dusk       | Night     |
|          121 |  200037 | 20131201 |          12 |  1049160 | Dusk       | Night     |
|          371 |  200037 | 20131201 |          37 |  9553570 | Dusk       | Night     |
|          381 |  200037 | 20131201 |          38 |        0 | Dusk       | Night     |
|           81 |  201535 | 20131201 |           8 | 36912000 | Dusk       | Night     |
|          131 |  201535 | 20131201 |          13 | 13910400 | Dusk       | Night     |
|           11 |  201536 | 20131201 |           1 | 24585240 | Dusk       | Night     |
|           21 |  201536 | 20131201 |           2 |  8639640 | Dusk       | Night     |
|           91 |  201536 | 20131201 |           9 | 16768000 | Dusk       | Night     |
|          111 |  201536 | 20131201 |          11 | 12967500 | Dusk       | Night     |
|          301 |  201536 | 20131201 |          30 | 15730250 | Dusk       | Night     |
|          311 |  201536 | 20131201 |          31 |   573250 | Dusk       | Night     |
|          361 |  201536 | 20131201 |          36 | 14917660 | Dusk       | Night     |
|           31 |  201537 | 20131201 |           3 |  2321520 | Dusk       | Night     |
|          121 |  201537 | 20131201 |          12 |  1047480 | Dusk       | Night     |
|          371 |  201537 | 20131201 |          37 |  8571790 | Dusk       | Night     |
|          381 |  201537 | 20131201 |          38 |        0 | Dusk       | Night     |
|           11 |  203035 | 20131201 |           1 | 21033000 | Dusk       | Night     |
|           81 |  203035 | 20131201 |           8 | 33648000 | Dusk       | Night     |
|           21 |  203036 | 20131201 |           2 |  7045200 | Dusk       | Night     |
|           31 |  203036 | 20131201 |           3 |        0 | Dusk       | Night     |
|           91 |  203036 | 20131201 |           9 | 15984000 | Dusk       | Night     |
|          111 |  203036 | 20131201 |          11 | 10890000 | Dusk       | Night     |
|          131 |  203036 | 20131201 |          13 | 14347200 | Dusk       | Night     |
|          301 |  203036 | 20131201 |          30 | 14897900 | Dusk       | Night     |
|          311 |  203036 | 20131201 |          31 |   572420 | Dusk       | Night     |
|          361 |  203036 | 20131201 |          36 | 15008400 | Dusk       | Night     |
|          121 |  203037 | 20131201 |          12 |  1045800 | Dusk       | Night     |
|          371 |  203037 | 20131201 |          37 |  8347500 | Dusk       | Night     |
|          381 |  203037 | 20131201 |          38 |        0 | Dusk       | Night     |
|          131 |  204535 | 20131201 |          13 | 13224000 | Dusk       | Night     |
|          301 |  204535 | 20131201 |          30 | 14539680 | Dusk       | Night     |
|           11 |  204536 | 20131201 |           1 | 21391340 | Dusk       | Night     |
|           21 |  204536 | 20131201 |           2 |  8145240 | Dusk       | Night     |
|           81 |  204536 | 20131201 |           8 | 32400000 | Dusk       | Night     |
|           91 |  204536 | 20131201 |           9 | 16048000 | Dusk       | Night     |
|          111 |  204536 | 20131201 |          11 |  9892500 | Dusk       | Night     |
|          311 |  204536 | 20131201 |          31 |   571580 | Dusk       | Night     |
|          361 |  204536 | 20131201 |          36 | 14246180 | Dusk       | Night     |
|          371 |  204536 | 20131201 |          37 |  7690460 | Dusk       | Night     |
|           31 |  204537 | 20131201 |           3 |        0 | Dusk       | Night     |
|          121 |  204537 | 20131201 |          12 |  1048320 | Dusk       | Night     |
|          381 |  204537 | 20131201 |          38 |        0 | Dusk       | Night     |
|           11 |  210035 | 20131201 |           1 | 20612340 | Dusk       | Night     |
|           81 |  210035 | 20131201 |           8 | 32608000 | Dusk       | Night     |
|          111 |  210035 | 20131201 |          11 | 11130000 | Dusk       | Night     |
|          131 |  210035 | 20131201 |          13 | 14976000 | Dusk       | Night     |
|          301 |  210035 | 20131201 |          30 | 15919900 | Dusk       | Night     |
|           21 |  210036 | 20131201 |           2 |  7539600 | Dusk       | Night     |
|           31 |  210036 | 20131201 |           3 |        0 | Dusk       | Night     |
|           91 |  210036 | 20131201 |           9 | 17360000 | Dusk       | Night     |
|          121 |  210036 | 20131201 |          12 |  1050000 | Dusk       | Night     |
|          311 |  210036 | 20131201 |          31 |   571580 | Dusk       | Night     |
|          361 |  210036 | 20131201 |          36 | 14663580 | Dusk       | Night     |
|          371 |  210036 | 20131201 |          37 |  8357140 | Dusk       | Night     |
|          381 |  210037 | 20131201 |          38 |        0 | Dusk       | Night     |
|           11 |  211535 | 20131201 |           1 | 22248240 | Dusk       | Night     |
|          301 |  211535 | 20131201 |          30 | 15108620 | Dusk       | Night     |
|           21 |  211536 | 20131201 |           2 |  9047520 | Dusk       | Night     |
|           31 |  211536 | 20131201 |           3 |        0 | Dusk       | Night     |
|           81 |  211536 | 20131201 |           8 | 33920000 | Dusk       | Night     |
|           91 |  211536 | 20131201 |           9 | 17952000 | Dusk       | Night     |
|          111 |  211536 | 20131201 |          11 | 13267500 | Dusk       | Night     |
|          131 |  211536 | 20131201 |          13 | 15859200 | Dusk       | Night     |
|          311 |  211536 | 20131201 |          31 |   577410 | Dusk       | Night     |
|          361 |  211536 | 20131201 |          36 | 14409510 | Dusk       | Night     |
|          371 |  211536 | 20131201 |          37 |  8641280 | Dusk       | Night     |
|          121 |  211537 | 20131201 |          12 |  1048320 | Dusk       | Night     |
+--------------+---------+----------+-------------+----------+------------+-----------+
1000 rows in set (0.01 sec)


###################################################################################





			→ → → → Querying the data warehouse  ← ← ← ←


We now get to the main goal of this lab: to explore the data stored in the data warehouse.
For this purpose, have in mind the following principles:




→ When we want to analyze the data according to multiple dimensions, we have to join
the fact table (meter_readings) with the corresponding dimension tables. You can use
NATURAL JOIN for this purpose.

→ In most cases, we will be interested in average readings (e.g average energy
consumption by building, or average energy consumption by day). For this purpose,
you can use the AVG aggregate function.

→ When using multiple dimensions to analyze the data (e.g. average reading per building
and per day) you have to GROUP BY all those dimensions.

→ In some queries we will be experimenting the option WITH ROLLUP to aggregate the
overall results (MySQL only).
You are now asked to carry out the following analysis on your own:



###################################################################################
%%% Pergunta

15. Write a query to compute the average energy consumption by week day (use
week_day_name). Based on these results, identify the weekdays of highest and lowest
consumption.
Note: After the GROUP BY include WITH ROLLUP to aggregate the overall results.

%%% Resposta

select week_day_name, avg(reading) from date_dimension NATURAL JOIN meter_readings GROUP BY week_day_name WITH ROLLUP;

###################################################################################



###################################################################################
%%% Pergunta

16. Write a query to determine the average consumption by week, but only during the last
three weeks of the year (use week_number). Based on these results, you can confirm
that energy consumption decreases in the last weeks of December.
Note: After the GROUP BY include WITH ROLLUP to aggregate the overall results.

%%% Resposta

select week_number, avg(reading) from meter_readings NATURAL JOIN date_dimension where week_number> 49 GROUP BY week_number WITH ROLLUP;

###################################################################################



###################################################################################
%%% Pergunta

17. Write a query to determine the average consumption by building name and by week,
but only during the last three weeks of the year.
Note: After the GROUP BY include WITH ROLLUP to aggregate the overall results.

%%% Resposta

select building_name, week_number, avg(reading) from meter_readings
NATURAL JOIN building_dimension
NATURAL JOIN date_dimension where week_number> 49
GROUP BY building_name, week_number WITH ROLLUP;

###################################################################################



###################################################################################
%%% Pergunta

18. Write a query to determine the average consumption by building name. Use an
ORDER BY in the query, so that the building that consumes the most energy appears
at the top.

%%% Resposta

select building_name, avg(reading) from meter_readings
NATURAL JOIN building_dimension
NATURAL JOIN date_dimension
GROUP BY building_name ORDER BY avg(reading) desc;

###################################################################################



###################################################################################
%%% Pergunta

19. Write a query to determine the average consumption by building name and by day
period (in the time dimension). The results should be sorted by building name in
alphabetical order and by average consumption in decreasing order.

%%% Resposta

select building_name, day_period, avg(reading) from meter_readings
NATURAL JOIN building_dimension
NATURAL JOIN date_dimension
NATURAL JOIN time_dimension
GROUP BY building_name, day_period ORDER BY building_name, avg(reading) desc;

%%% Pergunta

19. Is it true that all
buildings have the highest consumption in the afternoon?

%%% Resposta

It is true!

###################################################################################



###################################################################################
%%% Pergunta

20. Change the previous query to include, besides the day period, also the hour of day.
Hint: You have to change the query in two places.
This is a drill-down into a more fine-grained level of detail.

%%% Resposta

select building_name, day_period, hour_of_day ,avg(reading) from meter_readings
NATURAL JOIN building_dimension
NATURAL JOIN date_dimension
NATURAL JOIN time_dimension
GROUP BY building_name, day_period, hour_of_day ORDER BY building_name, avg(reading) desc;

###################################################################################



###################################################################################
%%% Pergunta

21. Check the results of the previous query. It appears that building C now has its highest
consumption in the morning. Why? Isn’t this inconsistent with the previous results?
Hint: the results have been generated at different levels of detail.

%%% Resposta

É verdade que o edificío C agora tem maior consumo de manhã do que à tarde. No entanto,
na alínea 20 estamos a fazer um drill-down que não fizemos na alínea 19.
Ou seja, na alínea 19, vamos apenas ao detalhe de "em que altura do dia temos a maior média de consumo"
e todos os edifício revelam maior indice de consumo à tarde. No entanto, quando entramos no detalhe das horas (drill-down)
percebemos que às "11 horas da manhã" o edifício C atinge o máximo de consumo do dia.

###################################################################################