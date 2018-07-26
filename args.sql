-- the purpose of this example is to put argument on top of your SQL queries to make it more readable
-- to achieve this, you could declare using simple SELECT and then do CROSS JOIN

WITH args AS (
  SELECT 
    TIMESTAMP('2018-01-01') AS cut_off_start,
    TIMESTAMP('2018-07-20') AS cut_off_end
),

t AS (
  SELECT *
  FROM table_something
    CROSS JOIN args
  WHERE table_something.timestamp BETWEEN args.cut_off_start AND args.cut_off_end
)
