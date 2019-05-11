
SELECT	 1 as [1]
		--,MasterDate/10000
		,FORMAT(COUNT(*),'#,###')						[CountStar]
		,FORMAT(SUM(Weight),'#,###')					[Weight]
		,FORMAT(COUNT(distinct CustomerCode),'#,###')	[CustomerCount]
FROM 
		[DataMakerDB].[dbo].[SaleData]  
WHERE 
		1=1
		and CustomerCode<>-614
--GROUP BY 
--		MasterDate/10000
ORDER BY 2

--	============================================

SELECT	 1 as [1]
		,MasterDate/10000
		,FORMAT(COUNT(*),'#,###')						[CountStar]
		,FORMAT(SUM(Weight),'#,###')					[Weight]
		,FORMAT(COUNT(distinct CustomerCode),'#,###')	[CustomerCount]
FROM 
		[DataMakerDB].[dbo].[SaleData]  
WHERE 
		1=1
		and CustomerCode<>-614
GROUP BY 
		MasterDate/10000
ORDER BY 2
		--and MasterDate/10000>=1398
--*/



--select *
--into [DataMakerDB].[dbo].[SaleData1397]  
--delete from [DataMakerDB].[dbo].[SaleData]  
--where MasterDate/10000=1397
--			select distinct ProductID from [DataMakerDB].[dbo].[SaleData]  

