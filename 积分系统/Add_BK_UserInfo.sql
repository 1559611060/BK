
--转到数据库
use BK
go


--开始添加十条测试用户信息表数据
insert into UserInfo values('15282144522','Admin','123456')
insert into UserInfo values('15282144523','Admin2','123456')
insert into UserInfo values('15282144524','Admin3','123456')
insert into UserInfo values('15282144525','Admin4','123456')
insert into UserInfo values('15282144526','Admin5','123456')
insert into UserInfo values('15282144527','Admin6','123456')
insert into UserInfo values('15282144528','Admin7','123456')
insert into UserInfo values('15282144529','Admin8','123456')
insert into UserInfo values('15282144532','Admin9','123456')
insert into UserInfo values('15282144533','Admin10','123456')
go

--查询用户信息表数据
select * from UserInfo


--删除表数据
--truncate table UserInfo

