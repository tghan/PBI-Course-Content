declare @tid int, @date int, @ccount int, @tid2 int, @pcount int, @tid3 int
declare @cid int, @CustomerCount int, @ProductCount int, @ProductIDRange int, @QTY int
declare @CustomerMin int, @ProductMin int, @CustomerIDRange int, @QTYMin int

--		CREATE TABLE #CPIDs (CID INT, PID INT, QTY INT, [Date] INT)
--		TRUNCATE TABLE [SaleData]

SET @CustomerCount	 = 370
SET @CustomerMin	 = 60
SET @CustomerIDRange = 550

SET @ProductCount	 = 45
SET @ProductMin		 = 25
SET @ProductIDRange	 = 85

SET @QTY			 = 60
SET @QTYMin			 = 20

set @tid= 2101
while @tid <= 2191					--	2191
begin
	--	MasterDate
	select @date=MasterDate from TimeTable where id=@tid
	--	CUSTOMERS
	set @ccount = CAST(RAND() * @CustomerCount + @CustomerMin AS INT)
	set @tid2 = 1
	while @tid2 <= @ccount
	begin
		SELECT @cid = CAST(RAND() * @CustomerIDRange + 1 AS INT)
		set @tid2 = @tid2 + 1
		
		set @pcount = CAST(RAND() * @ProductCount + @ProductMin AS INT)
		set @tid3 = 1
		while @tid3 <= @pcount
		begin
				--INSERT INTO #CPIDs(CID,PID,QTY,[Date]) 
				INSERT INTO [dbo].[SaleData]([CustomerCode],[ProductID],[Weight],[MasterDate]) 
				SELECT @cid,CAST(RAND() * @ProductIDRange + 1 AS INT) PID,CAST(RAND() * @QTY + @QTYMin AS INT) QTY, @date
				set @tid3 = @tid3 + 1
		end

	end

	set @tid = @tid + 1
end

--select * from #CPIDs

select ID,MasterDate
from  TimeTable
where MasterDate = (select max(masterdate) from SaleData)