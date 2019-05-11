
--/*	195	181	172 146 250 161 151 210 178 167 153 160 170 292	256 229 231 258 294 227 259 277 194 163

declare @up			int = 48
declare @down		int = 22
declare @cc			int = CAST(RAND() * 1000 + 1000 AS INT)

drop table #temp	

select top  (@cc) ID into #temp
from [DataMakerDB].[dbo].[SaleData] a
where 
		1=1
		and MasterDate/10000=1397
		--and MasterDate/100 = @MaxMonth
		--and MasterDate/100 between 139612 AND 139612
		and ProductID=@down 
		--and MasterDate/100%100=1
		--and MasterDate>=13930631
		--and ProductID > 15
order by NEWID()
------------------------------------
update a set ProductID=@up from [DataMakerDB].[dbo].[SaleData] a where ID IN (select ID from #temp)
------------------------------------
--SELECT		 MasterDate/100
--			,FORMAT(COUNT(*),'#,###') CountStar
--			,FORMAT(SUM([Weight]),'#,###') [Weight]
--			,FORMAT(COUNT(DISTINCT CustomerCode),'#,###') CustomerCount
--FROM [DataMakerDB].[dbo].[SaleData]  
--WHERE 
--		1=1
--		AND CustomerCode<>-614
--		AND MasterDate/100 BETWEEN 139701 and @MaxMonth
--GROUP BY MasterDate/100
--ORDER BY 1

--*/




/*	195	181	172 146 250 161 151 210 178 167 153 160 170 292	256 229 231 258 294 227 259 277 194 163

declare @down		int = 89
declare @up			int = 172
declare @cc			int = CAST(RAND() * 5000 + 300 AS INT)
declare @MaxMonth	int = 139712

drop table #temp	

select top  (@cc) ID into #temp
from [DataMakerDB].[dbo].[SaleData] a
where 
		1=1
		--and MasterDate/10000=1396
		--and MasterDate/100 = @MaxMonth
		--and MasterDate/100 between 139612 AND 139612
		and CustomerCode=@down 
		--and MasterDate/100%100=1
		--and MasterDate>=13930631
		--and ProductID > 15
order by NEWID()
------------------------------------
update a set CustomerCode=@up from [DataMakerDB].[dbo].[SaleData] a where ID IN (select ID from #temp)
------------------------------------
--SELECT		 MasterDate/100
--			,FORMAT(COUNT(*),'#,###') CountStar
--			,FORMAT(SUM([Weight]),'#,###') [Weight]
--			,FORMAT(COUNT(DISTINCT CustomerCode),'#,###') CustomerCount
--FROM [DataMakerDB].[dbo].[SaleData]  
--WHERE 
--		1=1
--		AND CustomerCode<>-614
--		AND MasterDate/100 BETWEEN 139701 and @MaxMonth
--GROUP BY MasterDate/100
--ORDER BY 1

--*/






/*
declare @down int = 12
declare @up	  int = 4
declare @cc   int = CAST(RAND() * 400 + 300 AS INT)

drop table #temp	

select top  (@cc) ID into #temp
from [DataMakerDB].[dbo].[SaleData] a
where MasterDate/10000=1393 and ProductID=@down --and MasterDate/100%100=1
		--and MasterDate>=13930631
order by NEWID()

------------------------------------

update a set ProductID=@up from [DataMakerDB].[dbo].[SaleData] a where ID IN (select ID from #temp)

--*/
