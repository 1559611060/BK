
use BK
go
--------==========  ����ϵͳ  ===============-------------
--���  ��������
insert into ConsumptionType values('��ֵ')
insert into ConsumptionType values('�ʴ�')
insert into ConsumptionType values('��Դ����')

insert into Integral values(1,100,25,75)
insert into Integral values(2,502,502,0)
insert into Integral values(3,250,0,250)
insert into Integral values(4,0,0,325)


insert into IntegralRecord values(1,0,1,100,default)
insert into IntegralRecord values(1,0,2,502,default)
insert into IntegralRecord values(1,0,3,250,default)
insert into IntegralRecord values(3,1,4,75,default)
insert into IntegralRecord values(2,3,4,250,default)






select * from Integral          --��ѯ���ֱ�
select * from ConsumptionType   --��ѯ�����������ͱ�
select * from IntegralRecord    --��ѯ�������Ѽ�¼��