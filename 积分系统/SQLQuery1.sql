use  master
---创建数据库 B2CSystem
if exists(select 1 from sys.databases where name='BK')
begin
	drop database BK
end
create database BK
go
use BK
go



--Integral : 积分表
if exists (select 1 from sys.objects where name='Integral')
begin
    drop table Integral
end
create table Integral (
Iid int primary key identity,
[Uid] int,                  --用户id
oldTotal int default(0),    --历史累计总积分 
newTotal int default(0),    --当前总积分
Consumption int default(0), --当前消费总积分
) 
go


--ConsumptionType:积分消费类型表
if exists (select 1 from sys.objects where name='ConsumptionType')
begin
    drop table ConsumptionType
end
create table ConsumptionType(
 CTid int primary key identity,
 CTnamr varchar(20),   --消费类型
)
go


--IntegralRecord :积分消费记录表
if exists (select 1 from sys.objects where name='IntegralRecord')
begin
    drop table IntegralRecord
end
create table IntegralRecord (
 IRid int primary key identity, 
 CTid int,                --消费类型id   
 Expenditure_id int,      --支出积分id
 Income_id int ,           --收入积分id 
 Transac int ,             --交易积分数额 
 IRtime  datetime default(GETDATE())   --交易时间 
)
go

--添加  基础数据
insert into ConsumptionType values('充值')
insert into ConsumptionType values('问答')
insert into ConsumptionType values('资源下载')

insert into Integral values(1001,100,25,75)
insert into Integral values(2,502,502,0)
insert into Integral values(3,250,0,250)
insert into Integral values(4,0,0,325)


insert into IntegralRecord values(1,null,1,100)
insert into IntegralRecord values(1,null,2,502)
insert into IntegralRecord values(1,null,3,250)
insert into IntegralRecord values(3,1,4,75)
insert into IntegralRecord values(2,3,4,250)










select * from Integral          --查询积分表
select * from ConsumptionType   --查询积分消费类型表
select * from IntegralRecord    --查询积分消费记录表
