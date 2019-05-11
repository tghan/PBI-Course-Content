
/*						FIRST NAME
declare @n int = 1

select count(*), count(distinct FirstName) from [JarfaDB].[dbo].[Customers*]

truncate table [JarfaDB].[dbo].[Customers*]

while @n<=4096
begin

--select cast(rand() * 200 + 1 as int)

INSERT INTO [JarfaDB].[dbo].[Customers*](FirstName,Gender)
	select [FirstName],[Gender]
	from [DataMakerDB].[dbo].[FirstName]
	where ID = CAST(RAND() * 2015 + 1 AS INT)

set @n=@n+1

end

select count(*), count(distinct FirstName) from [JarfaDB].[dbo].[Customers*]
--*/


/*
declare @n int = 1

while @n<=4096
begin

--select cast(rand() * 200 + 1 as int)

update [JarfaDB].[dbo].[Customers*]
set LastName = (select [LastName]
					from [DataMakerDB].[dbo].[LastName]
					where ID = CAST(RAND() * 200 + 1 AS INT))
WHERE ID =@n

set @n=@n+1

end

--*/


/*			NATIONAL CODE

declare @n int = 1


while @n<=1000
begin

insert into #temp (NationalCode)
select CAST(RAND() * 8888888888 + 1111111111 AS BIGINT)


set @n=@n+1
end

--INSERT INTO [DataMakerDB].[dbo].[NationalCode]([NationalCode])
--select distinct NationalCode from #temp

--*/

/*			FILL NATIONAL CODE


declare @n int = 1
while @n<=4096
begin

update [JarfaDB].[dbo].[Customers*]
set NationalCode = (select [NationalCode]
					from [DataMakerDB].[dbo].[NationalCode]
					where ID = @n)
WHERE ID =@n

set @n=@n+1
end

--*/

/*					CITIES

INSERT INTO [dbo].[Cities]
           ([CityTitle]
           ,[ProvinceID])

SELECT	 c.NameCity
		--,p.ProvinceName
		,pp.ID
		--,pp.ProvinceTitle
FROM		[PosDB].[dbo].[city] c 
			join [PosDB].[dbo].[Province] p on c.CodeState=p.ProvinceCode
			join [JarfaDB].[dbo].[Provinces] pp on p.ProvinceName=pp.ProvinceTitle collate Arabic_CI_AS
--*/


/*			FILL CITIES

declare @n int = 1
while @n<=4096
begin

	update [JarfaDB].[dbo].[Customers*]
	set CityCode = CAST(RAND() * 1799 + 1 AS INT)
	WHERE ID =@n

set @n=@n+1
end





--*/



