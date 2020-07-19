-->>>lua ��������


--lua �Ƕ�̬�������ԣ�������Ҫ���Ͷ��壬ֻ��ҪΪ������ֵ��ֵ���Դ洢�ٱ����У���Ϊ�������ݻ�������
--lua ����8�������������ͷֱ�Ϊ��nil/boolean/number/string/userdata/function/thread/table"
--nil:������Чֵ
--boolean:������ֵfalse��true  
--number:����˫�������͵�ʵ������
--function:������c��lua��д�ĺ���
--userdata:��������洢�ڱ����е�c���ݽṹ
--thread������ִ�еĶ�����¯������ִ��Э������
--table:������lua�еı���ʵ��һ�ֹ������飬������������������ֻ����ַ�������lua �У�table�Ĵ���ʱͨ����������ʽ������ɵģ���򵥵Ĺ�����ʽʱ��{}������������һ���ձ�
--ע�⣺һ��Լ�������»��߿�ͷ����һ����д��ĸ�ı��������磺_VERSION��������Ϊlua�ڲ���ȫ������

--����ע�ͣ���������ʱ����ע��--
--����ע�ͣ�--[[����ע�͵�����--]]

--ʾ����������type�������Ը�����������ָ������
--[[
print(type("Hello World"));     --string
print(type(10.4*3));            --number
print(type(print));             --function
print(type(true));              --boolean
print(type(nil));               --nil
print(type(type(x)));           --string
--]]

--1.ȫ�ֱ���
--ע�⣺��Ĭ������£�����������Ϊ��ȫ�ֱ���
--ȫ�ֱ�������Ҫ��������һ��ȫ�ֱ�����ֵ�󼴴��������ȫ�ֱ���������һ��û�г�ʼ����ȫ�ֱ�����Ҳ���ᱨ��
--ֻ����������Ϊ��nil ʾ�����£�
--[[
print(b);       --nil
b=10;
print(b);       --10
--]]

--2.nil ���ա���Чֵ��
--nil ���ͱ�ʾһ��û���κ���Чֵ����ֻ��һ��ֵ--nil,�����ӡһ��û�и�ֵ�ı�����������һ��nilֵ��
--print(type(a));     --nil

--ע�⣺����ȫ�ֱ�����table��nil����һ����ɾ�������ã���ȫ�ֱ�������table����ı�����ֵΪnilֵ����ͬ��
--������ɾ����ʾ�����£�
--[[
table1={key1="value1",key2="table2","value3"}
for k,v in pairs(table1) do
    print(k.."-"..v);
end
table1.key1=nil;
for k,v in pairs(table1) do
    print(k.."-"..v);
end
--]]

--nil ���Ƚ�ʱӦ�ü���˫���š�nil��
--[[
print(type(x));         --nil
print(type(x)==nil);    --false �Ƚϲ���ȵ�ԭ���ǣ�type(x)==null �൱��type(type(x))==string 
print(type(x)=="nil");  --true
--]]

--3.boolean (����ֵ)����������������������ѡֵ��true���棩��false���٣� ,ע�⣺lua ��false��nil�������ǡ��١���������Ϊ���桯
--[[
print(type(true));
print(type(false));
print(type(nil))
if false or nil then
    print("����һ����true");
else
    print("false �� nil ����false");
end
--]]

--4.number(����)
--lua Ĭ��ֻ��һ��number���ͣ�double ˫�������ͣ�Ĭ�����Ϳ���ϵӦ��luaconf.h��Ķ��壩
--���¼���д��������Ϊ��number ����
--[[
print(type(2))
print(type(2.2))
print(type(0.2))
print(type(2e+1))
print(type(0.2e-1))
print(type(7.898002-06))
--]]

--5.string(�ַ���)
--�ַ�������һ��˫���Ż��ߵ���������ʾ��
--str1="this is string 1";
--str2="this is string 2";
--ע��:Ҳ������2���������š�[[]]������ʾ��һ�顱�ַ���
--���磺
--[[
html=[[
<html>
<head></head>
<body>
    <a href="www.baidu.com">�ٶ�һ�£����֪��</a>
</body>
</html>
]]
--]]
--print(html);
--ע�⣺�ڶ�һ�������ַ������������������ʱ��lua �᳢�Խ���������ַ���ת����һ������:
--[[
print("2"+6);
print("6"-"2");
print("3"*"4");
print(8/"2");
--]]
--ע�⣺lua���ַ���֮�������ʹ�÷��š�..��;�����ǡ�+������+������Ӻŵ���˼
--print("a".."b".."c");
--lua ��ʹ��#���������ַ����ĳ��ȣ�ʹ��ʱ�����ַ�����ǰ�档���磺
--print(#"HelloWorld");


--6.table(��)
--��lua�У�table�Ĵ���ʱͨ����������ʽ������ɵġ���򵥵Ĺ�����ʽʱ{}����������һ���ձ�Ҳ�����ڱ��������һЩ������ֱ�ӳ�ʼ����
--lua�еı���һ���������飬������������������ֻ����ַ���
--���紴��һ���ձ�
-- local table={};
-- print(table);
--����ֱ�ӳ�ʼ����
--local tbl2={"apple","orange","grape"};
-- local tbl3={};
-- tbl3["key"]="value";
-- key=10;
-- tbl3[key]=22;
-- tbl3[key]=tbl3[key]+11;
-- for k,v in pairs(tbl3) do
--     print(k..":"..v);
-- end
--ע��:��ͬ���������Ե������0��Ϊ����ĳ�ʼ��������lua�еı�ĳ�ʼ����һ����1��ʼ
-- local tbl4={"apple","pear","orange","grape"}
-- for k,v in pairs(tbl4) do
--     print("key:"..k);
-- end
--ע�⣺lua��table����̶����ȣ����������ʱtable���Ȼ��Զ�������û��ʼ����table����nil
-- local tbl5={};
-- for i=1,10 do
--     tbl5[i]=i;
-- end
-- tbl5["key"]="val";
-- print(tbl5["key"]);
-- print(tbl5[9]);
-- print(tbl5["none"]);        --û�г�ʼ����table����nil

--7.function(����)
--��lua�У������������ǡ���һ����ֵ�����������Դ��ڱ�����
-- function factoriall(n)
--     if n==0 then
--         return 1;
--     else 
--         return n*factoriall(n-1);
--     end
-- end
-- print(factoriall(5));
-- factoriall2=factoriall;
-- print(factoriall2(5));
--ע�⣺function���������������ķ�ʽͨ�����������
-- function testFunc(tbl,func)
--     for k,v in pairs(tbl) do
--         print(func(k,v));
--     end
-- end
-- tab={key1="value1",key2="value2"};
-- testFunc(tab,
--     function(key,value)     --��������
--         return key.."="..value;
--     end
-- );

--8.thread(�߳�)
--��lua�У�����Ҫ���߳���Эͬ����coroutine��.�����̣߳�thread����࣬ӵ���Լ��Ķ���ջ���ֲ�������ָ�룬���Ը�����Эͬ������ȫ�ֱ����������󲿷ֶ�����
--�̺߳�Э�̵������߳��ǿ���ͬʱ���ж������Э������ʱ��ֻ������һ�������Ҵ�������״̬��Э��ֻ�б�����ʱ�Ż���ͣ

--9.userdata(�Զ�������)
--userdata��һ���û��Զ�������ݣ����ڱ�ʾһ����Ӧ�ó����c/c++���Կ������������ͣ����Խ�����c/c++�������������͵����ݣ�ͨ����stuct��ָ�룩�洢��lua�����е���

