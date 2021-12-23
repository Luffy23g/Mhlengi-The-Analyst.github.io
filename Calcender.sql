-----Cleaning Dim_Calcender Table
Select  
        [DateKey],
      [FullDateAlternateKey] As Date ,
      ---,[DayNumberOfWeek]
      [EnglishDayNameOfWeek] As day ,
     --- ,[SpanishDayNameOfWeek]
     --- ,[FrenchDayNameOfWeek]
     --- ,[DayNumberOfMonth]
     --- ,[DayNumberOfYear]
      [WeekNumberOfYear] As WeekNr,
      [EnglishMonthName] As Month,
	  Left ((EnglishMonthName), 3 ) As MonthShort,
    ---  ,[SpanishMonthName]
    ----  ,[FrenchMonthName]
      [MonthNumberOfYear] As MonthNo,
      [CalendarQuarter] As Quarter,
     [CalendarYear] As Year 
     --- ,[CalendarSemester]
    ---  ,[FiscalQuarter]
     --- ,[FiscalYear]
     --- ,[FiscalSemester]
  FROM [AdventureWorksDW2012].[dbo].[DimDate]
  Where CalendarYear >= 2014