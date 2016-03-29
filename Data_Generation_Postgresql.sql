--random 1-10 integer
select trunc(random() * 9 + 1);
select cast (random() * 10 as int);

--60 rows with group1 or group2
select cast(random()*10 as int) as n, 
case when cast(random()*10 as int) <8 then 'AAPL' else 'SBT' end, now()::date - generate_series(0, 19);

--60 rows with dates in sequence
select now()::date - generate_series(0, 59)
select '2015-01-01' + generate_series(0, 59)

--60 rows with timestamps in sequence
SELECT current_date + (n || ' days')::interval
from generate_series (1, 60) n

--100 random size 1 to 5 characters in sequence
SELECT substr('abcdefghijklmnopqrstuv',trunc(random()*21+1)::int,5) FROM generate_series(1,100)

--random text geenration
SELECT generate_series(1,10) AS id, md5(random()::text) AS descr;
select generate_series (1,100),'2015-01-01' + (generate_series(1, 100))/10 as audit_date

--Generate 100 numbers 1,1,1,1,2,2,2,2...till 25,25,25,25
SELECT a.n from generate_series(1, 25) as a(n), generate_series(1, 4)