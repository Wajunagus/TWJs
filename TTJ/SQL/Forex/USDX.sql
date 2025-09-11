-- MT5

-- USDX_D1
--Insert Into MT5..USDX_D1 Values


-- USDX_W1
--Insert Into MT5..USDX_W1 Values


-- USDX_MN
--Insert Into MT5..USDX_MN Values


------------------------------------------------------------------------------------

-- USDX_D1
Select
	Date,
	OpenPrice,
	High,
	Low,
	ClosePrice,
	Volume As [Volume(Market activity)]
From MT5..USDX_D1
/*Where Date = '2025-04-14'*/
/*Where Date = '2025-01-02' Or Date = '2025-03-31'*/
Where Date Between '2025-04-25' And '2025-05-02'
/*Where (High-Low)/0.0001 > 100*/
/*Where (ClosePrice-OpenPrice)/0.0001 > 100*/
/*Where Volume > 200000*/
Order By Date

------------------------------------------------------------------------------------

-- USDX_W1
Select
	WeekStarting,
	OpenPrice,
	High,
	Low,
	ClosePrice,
	Volume As [Volume(Market activity)]
From MT5..USDX_W1
/*Where WeekStarting = '2025-04-20'*/
/*Where WeekStarting Between
	'2025-03-30' And
	'2025-04-20'*/
Order By WeekStarting

------------------------------------------------------------------------------------

-- USDX_MN
Select
	MonthStarting,
	OpenPrice,
	High,
	Low,
	ClosePrice,
	Volume As [Volume(Market activity)]
From MT5..USDX_MN
Order By MonthStarting

------------------------------------------------------------------------------------

-- Create table for daily USDX data
/*
DROP TABLE IF EXISTS MT5..USDX_D1; -- Drop the table if it exists to avoid conflicts
CREATE TABLE MT5..USDX_D1 (
    Date DATE,					   -- Date and time
    OpenPrice DECIMAL(10, 3),      -- Open price with up to 3 decimal places
    High DECIMAL(10, 3),		   -- High price with up to 3 decimal places
    Low DECIMAL(10, 3),			   -- Low price with up to 3 decimal places
    ClosePrice DECIMAL(10, 3),	   -- Close price with up to 3 decimal places
    Volume FLOAT				   -- Volume as a floating-point number
);

-- Create table for weekly USDX data
DROP TABLE IF EXISTS MT5..USDX_W1 -- Drop the table if it exists to avoid conflicts
CREATE TABLE MT5..USDX_W1 (
    WeekStarting DATE,			  -- Date of the week starting
    OpenPrice DECIMAL(10, 3),	  -- Open price with up to 3 decimal places
    High DECIMAL(10, 3),		  -- High price with up to 3 decimal places
    Low DECIMAL(10, 3),			  -- Low price with up to 3 decimal places
    ClosePrice DECIMAL(10, 3),	  -- Close price with up to 3 decimal places
    Volume FLOAT				  -- Volume as a floating-point number
);

-- Create table for monthly USDX data
DROP TABLE IF EXISTS MT5..USDX_MN -- Drop the table if it exists to avoid conflicts
CREATE TABLE MT5..USDX_MN (
    MonthStarting DATE,			  -- Date in YYYY-MM-DD format of the month starting
    OpenPrice DECIMAL(10, 3),	  -- Open price with up to 3 decimal places
    High DECIMAL(10, 3),		  -- High price with up to 3 decimal places
    Low DECIMAL(10, 3),			  -- Low price with up to 3 decimal places
    ClosePrice DECIMAL(10, 3),	  -- Close price with up to 3 decimal places
    Volume FLOAT				  -- Volume as a floating-point number
);
*/