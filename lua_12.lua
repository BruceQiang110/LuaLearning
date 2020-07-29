-->>>Lua Ԫ��(Metatable)

--��Lua table�����ǿ��Է��ʶ�Ӧ��key���õ�valueֵ������ȴû�а취������table���в�����
--���Lua�ṩ��Ԫ��(matetable),�������Ǹı�table����Ϊ��ÿ����Ϊ�����˶�Ӧ��Ԫ������
--���磺ʹ��Ԫ�����ǿ��Զ���Lua��μ�������table���໥����a+b
--��Lua��ͼ��������������ʱ���ȼ������֮һ�Ƿ���Ԫ��֮������=�Ƿ���һ����"__add"���ֶΣ�
--���ҵ�������ö�Ӧ��ֵ��"__add"�ȼ�ʹ�ֶΣ����Ӧ��ֵ(������һ����������table)����Ԫ������
--����������Ҫ�ĺ���������Ԫ��
--setmetatable(table,metatable)����ָ����table����Ԫ��(metatable)�����Ԫ��(metatable)�д���_metatable��ֵ��setmetatable��ʧ�ܡ�
--getmetatable(table):���ض����Ԫ��(metatable)
--����ʾ����ʾ����ζ�ָ���ı�����Ԫ��
--mytable={};         -->��ͨ��
--mymetatable={};     -->Ԫ��
--setmetatable(mytable,mymetatable)       -->��mytmetatable��Ϊmytable��Ԫ��
--���ϴ���Ҳ����ֱ��д��һ�У�
--mytable=setmetatable({},{});
--����Ϊ���ض���Ԫ��
--getmetatable(mytable);          -->����mymetatable

--1.__indexԪ����
--����metatable��õļ�
--����ͨ����������table��ʱ����������û��ֵ����ôLua�ͻ�Ѱ�Ҹ�table�ĵ�metatable(�ٶ���metatable)�е�__index����
--���__index����һ�����Lua���ڱ���в�����Ӧ�ļ���
--���ǿ�����ʹ��lua������뽻��ģʽ�鿴��
-- other={foo=3};
-- t=setmetatable({},{__index=other})
-- print(t.foo);
--���__index����һ�������Ļ���Lua�ͻ�����Ǹ�������table�ͼ�����Ϊ�������ݸ�������
--*�ص����*��__indexԪ�����鿴����Ԫ���Ƿ���ڣ���������ڣ����ؽ��nil�������������__index���ؽ����
-- mytable=setmetatable({key1="value1"},{__index=function(mytable,key)
--     if(key=="key2") then
--         return "metatablevalue";
--     else
--         return nil;
--     end
-- end
-- })
-- print(mytable.key1,mytable.key2);
--ʵ��������
--mytable ��ֵΪ{key1="value1"}
--mytable ������Ԫ��Ԫ����Ϊ__index
--��mytable���в���key1,����ҵ������ظ�Ԫ�أ��Ҳ��������
--��mytable���в���key2.����ҵ�������metatablevalue,�Ҳ��������
--�ж�Ԫ������û��__index���������__index����ʱһ������������øú���
--Ԫ�����в鿴�Ƿ���"key2"���Ĳ���(mytable.key2������)���������"key2"��������"metatablevalue",���򷵻�mytable��Ӧ�ļ�ֵ
--���ǿ��Խ����Ϸ�����дΪ��
-- mytable=setmetatable({key1="value1"},{__index={key2="metatblevalue"}});
-- print(mytable.key1)
-- print(mytable.key2)
--*__indexԪ�����ܽ�*��
--Lua�в���һ����Ԫ�صĹ�����ʵ���������������裺
--(1)�ڱ��в��ң�����ҵ������ظ�Ԫ�أ��Ҳ��������
--(2)�жϸñ��Ƿ���Ԫ�أ����û��Ԫ�أ�����nil,��Ԫ�������
--(3)�ж�Ԫ����û��__index���������__index����Ϊnil,�򷵻�nil;
-----���__index������һ�������ظ�(1)(2)(3);
-----���__index������һ���������򷵻ظú����ķ���ֵ��


--2.__newindexԪ����
--*******__newindexԪ���������Ա���£�__index�������Ա����******
--��������һ��ȱ�ٵ�������ֵ���������ͻ����__newindexԪ������
--��������������������������и�ֵ������
--����ʵ����ʾ��__newindexԪ������Ӧ�ã�
--[[
mymetatable={};
mytable=setmetatable({key1="value1"},{__newindex=mymetatable});
print(mytable.key1)
mytable.newkey="��ֵ2";
print(mytable.newkey,mymetatable.newkey);
mytable.key="��ֵ1";
print(mytable.key1,mymetatable.key1)
]]
--����ʵ���б�������Ԫ����__newindex,�ڶ���������(newkey)��ֵʱ(mytable.newkey="��ֵ2")�������Ԫ������
--�������и�ֵ����������Ѵ��ڵ���������key1),�������и�ֵ����������Ԫ����__newindex.
--���˼���⣺
--�����������Ԫ����Ա��в����ڵ�������ֵʱ�����Ԫ����__newindex�����µĽ��ʱ��ͨ��Ԫ����������������ڸ�ֵ�Ľ������ͨ�����в����ڵ�����������᷵��nil
--�����������Ԫ����Ա��д��ڵ�������ֵʱ�����ֱ�ӽ��и�ֵ����������Ԫ���Ԫ���������µĽ���Ǳ��еĶ�Ӧ��������ֵ�ᱻ���ģ���ͨ��Ԫ����ʶ�Ӧ�������᷵��nil

--����ʵ��ͨ��rawset������ʵ�ָ��±�
-- mytable=setmetatable({key1="value1"},{
--     __newindex=function(mytable,key,value)
--         rawset(mytable,key,"\""..value.."\"")
--     end
-- })
-- mytable.key1="new value1";
-- mytable.key2=4;
-- print(mytable.key1,mytable.key2);
-- --ʹ��rawset�Ա���и�ֵ��������д������������ֱ�Ӹ���������Ӧ��ֵ�������в�������������ᴴ����������������Ӧ��ֵ���и�ֵ
-- for i,v in pairs(mytable) do
--     print(i,v);
-- end

