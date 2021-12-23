----Cleaning DIM_Date Tables----
SELECT
[DateKey]
      ,[FullDateAlternateKey] As Date
      --,----[DayNumberOfWeek]---
      ,[EnglishDayNameOfWeek] As Day
     ---- ,[SpanishDayNameOfWeek]
     ---- ,[FrenchDayNameOfWeek]
     --- ,[DayNumberOfMonth]
      ----,[DayNumberOfYear]
      ,[WeekNumberOfYear] As WeekNr
      ,[EnglishMonthName] As Month,
	 Left( [EnglishMonthName], 3) AS MonthShort,
     ---- ,[SpanishMonthName]
     --- ,[FrenchMonthName]
      [MonthNumberOfYear] AS MonthNo,
      [CalendarQuarter] As Quarter
      ,[CalendarYear] AS Year ---{Calender Semester],
     -- ,[CalendarSemester]
     -- ,[FiscalQuarter]
     -- ,[FiscalYear]
     -- ,[FiscalSemester]
	 From 
	 [dbo].[DimDate]
 Where
 CalendarYear >= 2014