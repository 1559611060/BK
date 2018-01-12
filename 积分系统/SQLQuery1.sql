use  master
---�������ݿ� B2CSystem
if exists(select 1 from sys.databases where name='BK')
begin
	drop database BK
end
create database BK
go
use BK
go



--Integral : ���ֱ�
if exists (select 1 from sys.objects where name='Integral')
begin
    drop table Integral
end
create table Integral (
Iid int primary key identity,
[Uid] int,                  --�û�id
oldTotal int default(0),    --��ʷ�ۼ��ܻ��� 
newTotal int default(0),    --��ǰ�ܻ���
Consumption int default(0), --��ǰ�����ܻ���
) 
go


--ConsumptionType:�����������ͱ�
if exists (select 1 from sys.objects where name='ConsumptionType')
begin
    drop table ConsumptionType
end
create table ConsumptionType(
 CTid int primary key identity,
 CTnamr varchar(20),   --��������
)
go


--IntegralRecord :�������Ѽ�¼��
if exists (select 1 from sys.objects where name='IntegralRecord')
begin
    drop table IntegralRecord
end
create table IntegralRecord (
 IRid int primary key identity, 
 CTid int,                --��������id   
 Expenditure_id int,      --֧������id
 Income_id int ,           --�������id 
 Transac int ,             --���׻������� 
 IRtime  datetime default(GETDATE())   --����ʱ�� 
)
go

--���  ��������
insert into ConsumptionType values('��ֵ')
insert into ConsumptionType values('�ʴ�')
insert into ConsumptionType values('��Դ����')

insert into Integral values(1001,100,25,75)
insert into Integral values(2,502,502,0)
insert into Integral values(3,250,0,250)
insert into Integral values(4,0,0,325)


insert into IntegralRecord values(1,null,1,100)
insert into IntegralRecord values(1,null,2,502)
insert into IntegralRecord values(1,null,3,250)
insert into IntegralRecord values(3,1,4,75)
insert into IntegralRecord values(2,3,4,250)










select * from Integral          --��ѯ���ֱ�
select * from ConsumptionType   --��ѯ�����������ͱ�
select * from IntegralRecord    --��ѯ�������Ѽ�¼��
