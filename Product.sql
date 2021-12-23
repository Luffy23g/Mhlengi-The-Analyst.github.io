----Cleaning DIM_Product Table

 Select 
 p.[ProductKey],
 p.[ProductAlternateKey] AS ProductItemCode,
     --- ,[ProductSubcategoryKey]
     -- ,[WeightUnitMeasureCode]
     -- ,[SizeUnitMeasureCode],
      p.[EnglishProductName] AS [Product Name,
	  ps.EnglishProductSubcategoryName AS [Sub  Category], ----joined in from sub category table
	  pc.EnglishProductCategoryName AS [Product Category], ----joined in from Category Table
     --- ,[SpanishProductName]
     --- ,[FrenchProductName]
     --- ,[StandardCost]
    ---  ,[FinishedGoodsFlag]
      p.[Color] AS  [Product Color],
    ---  ,[SafetyStockLevel]
     --- ,[ReorderPoint]
     ---- ,[ListPrice]
      p.[Size] AS [Product Color],
      ----,[SizeRange]
     ---- ,[Weight]
      -----,[DaysToManufacture]
      p.[ProductLine] AS [Product line ],
     ---- ,[DealerPrice]
     --- ,[Class]
     ---- ,[Style]
      p.[ModelName] AS [ Product Mode Name],
      ----,[LargePhoto]
      p.[EnglishDescription] AS [Product Description],
     --- ,[FrenchDescription]
     ---- ,[ChineseDescription]
     --- ,[ArabicDescription]
      ----,[HebrewDescription]
     -- ,[ThaiDescription]
     --- ,[GermanDescription]
     -- ,[JapaneseDescription]
     -- ,[TurkishDescription]
    --  ,[StartDate],
     -- ,[EndDate],
 
	 ISNULL (p.Status, 'Outdated') AS [Product Status]
  FROM [dbo].[DimProduct] as p
  Left Join dbo.DimProductSubcategory As ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
  Left join dbo.DimProductCategory AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey
  order by 
   p.ProductKey asc 