
use BK
go
--------==========  积分系统  ===============-------------
--添加  基础数据
insert into ConsumptionType values('充值')
insert into ConsumptionType values('问答')
insert into ConsumptionType values('资源下载')

insert into Integral values(1,100,25,75)
insert into Integral values(2,502,502,0)
insert into Integral values(3,250,0,250)
insert into Integral values(4,0,0,325)


insert into IntegralRecord values(1,0,1,100,default)
insert into IntegralRecord values(1,0,2,502,default)
insert into IntegralRecord values(1,0,3,250,default)
insert into IntegralRecord values(3,1,4,75,default)
insert into IntegralRecord values(2,3,4,250,default)






select * from Integral          --查询积分表
select * from ConsumptionType   --查询积分消费类型表
select * from IntegralRecord    --查询积分消费记录表