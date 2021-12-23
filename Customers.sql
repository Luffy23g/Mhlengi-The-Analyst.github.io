----Cleaning Dim_Customer Table---
SELECT 
       c.customerkey As [CustomerKey],
     ---- ,[GeographyKey]
     ---- ,[CustomerAlternateKey]
    -----  ,[Title]
     c.firstname AS [FirstName],
      ----,[MiddleName]
      c.lastname AS [LastName],
     --- ,[NameStyle]
     ---- ,[BirthDate]
     --- ,[MaritalStatus]
     --- ,[Suffix]
      Case c.gender  When 'M' then 'Male' when 'F' then 'Female' End As [Gender],
     ---- ,[EmailAddress]
      ----,[YearlyIncome]
     --- ,[TotalChildren]
     --- ,[NumberChildrenAtHome]
     --- ,[EnglishEducation]
     --- ,[SpanishEducation]
     -- ,[FrenchEducation]
     --- ,[EnglishOccupation]
     --- ,[SpanishOccupation]
     --- ,[FrenchOccupation]
     --- ,[HouseOwnerFlag]
    ---  ,[NumberCarsOwned]
    ---  ,[AddressLine1]
    ---  ,[AddressLine2]
     --- ,[Phone]
      c.DateFirstPurchase AS [DateFirstPurchase],
     ---- ,[CommuteDistance]
	 g.city As [Customer City] ----joined in customer city from Geography Table 
  FROM [dbo].[DimCustomer] As c
  Left join dbo.DimGeography As g On g.geographykey = c.geographykey
  Order by 
  [Customer City] Asc ----order customer list by customerkey