/****** Script for SelectTopNRows command from SSMS  ******/
SELECT E.[BusinessEntityID],FirstName+ ' ' + MiddleName+ ' ' + UPPER(LastName) AS FullName
      ,[PersonType]
      ,[NameStyle]
      ,[Title]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
      ,[Suffix]
      ,[EmailPromotion]
      ,[AdditionalContactInfo]
      ,[Demographics]
      ,E.[rowguid]
      ,E.[ModifiedDate]
  FROM [AdventureWorks2019].[Person].[Person] AS E
LEFT JOIN Sales.SalesPerson AS S
ON E.BusinessEntityID = S.BusinessEntityID
WHERE E.PersonType = 'SP';