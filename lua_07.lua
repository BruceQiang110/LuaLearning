-->>> Lua �ַ���

--�ַ������ߴ���String���������֡���ĸ���»�����ɵ�һ���ַ���
--Lua�������ַ�������ʹ��һ�����ַ�ʽ����ʾ��
--A.�����ŵ�һ���ַ�
--B.˫���ŵ�һ���ַ�
--C.[[]]֮���һ���ַ�
--ʾ�����£�
-- str1='Hello World 1';
-- str2="Hello World 2";
-- str3=[[Hell World 3]];
-- print(str1,str2,str3);

--1.�ַ���ת���ַ�
--ת���ַ����ڱ�ʾ����ֱ����ʾ���ַ���������˼����س�����
--Lua�����е�ת���ַ����£�
--\a    ���壨BEL��
--\b    �˸�BS��,����ǰλ���ƶ�ǰһ��
--\f    ��ҳ��FF��,����ǰλ���Ƶ���ҳ��ͷ
--\n    ���У�LF��,����ǰλ���Ƶ���һ�п�ͷ
--\r    �س���CR��������ǰλ���Ƶ����п�ͷ
--\t    ˮƽ�Ʊ�HT)��������һ��TABλ��
--\v    ��ֱ�Ʊ�VT����
--\\    ����һ����б���ַ���\��
--\`    ����һ����Ʋ���ַ�
--\"    ����һ��˫����
--\0    ����һ�����ַ���Null��
--\ddd  ����1��3λ�˽���������������ַ�
--\xhh  ����1��2λʮ������������������ַ�

--2.�ַ�������

--2.1-string.upper(argument):�ַ���ȫ��תΪ��д��ĸ
--print(string.upper("hello"));

--2.2-string.lower(argument):�ַ���ȫ��תΪСд��ĸ
--print(string.lower("HELLO"));

--2.3-string.gsub(mainString,findString,replaceString,num):
--���ַ������滻��mainstringΪҪ�滻���ַ�����findStringΪ���滻���ַ���replaceStringΪҪ�滻���ַ�
--numΪҪ�滻�Ĵ������ɺ��ԣ������ȫ���滻��
-- str=string.gsub("www.baidu.com","w","-",2)      --��ƥ�䵽��w�ַ���ǰ2���滻Ϊ-�ַ�
-- print(str);

--2.4-string.find(str,substr,[init,[end]])
--��һ��ָ����Ŀ���ַ�����������ָ��������(����������Ϊ����)�����ؾ����λ�á����������򷵻�nil
-- str_target="Hello Lua";
-- str_find="Lua";
-- result=string.find(str_target,str_find,1);
-- print(result);

--2.5-string.reverse(arg):�ַ�����ת
-- print(string.reverse("Lua"))    -->auL

--2.6-string.format(...):����һ������printf�ĸ�ʽ���ַ���
--print(string.format("the value is:%d",4));

--2.7-string.char(arg)��string.byte(arg[,int])
--char�ǽ���������(��ӦASCII)ת�����ַ��������ӣ�byte�ǽ��ַ�(��ӦASCII��)ת��������(����ָ��ĳ���ַ���Ĭ��Ϊ��һ���ַ�)
-- print(string.char(97,98,99));       -->abc
-- print(string.byte("ABCD",2));       -->66 (A-65,B-66,C-67,D-68)

--2.8-string.len(arg):�����ַ����ĳ���
-- print(string.len("Hello"));
-- print(#"Hello");        -->#ͬ��Ҳ�������������ַ�������

--2.9-string.rep(string,n):�����ַ���string��n������
--print(string.rep("Hello",2));       -->HelloHello

--2.10-..���������ַ���
--print("www.baidu"..".com");     -->www.baidu.com

--2.11-string.gmatch(str,pattern)
--������������ÿһ�ε����������������һ�����ַ���str�ҵ�����һ������pattern�������Ӵ���
--�������pattern�������ַ���û���ҵ���������������nil
-- for word in string.gmatch("Hello Lua user","%a+") do
--     print(word)
-- end

--2.12-string.match(str,pattern,init)
--string.match()ֻѰ��Դ�ִ�str�еĵ�һ����ԣ�����init��ѡ��ָ����Ѱ���̵���㣬Ĭ��Ϊ1
--�ڳɹ����ʱ��������������Ա��ʽ�е����еĲ����������û�����ò����ǣ��򷵻���������ַ�������û�гɹ����ʱ������nil
-- print(string.match("I have 2 questions for you.","%d+ %a+"));

--3.�ַ�����Сдת��
-- str1="Lua";
-- print(string.upper(str1));
-- print(string.lower(str1));

--4.�ַ��������뷴ת
-- str="Lua Tutorial";
-- --�����ַ���
-- print(string.find(str,"Tutorial"));
-- print(string.reverse(str));

--5.�ַ�����ʽ��
--Lua �ṩ��string.format()���������ɾ��������ʽ���ַ������������Ķ���һ�������Ǹ�ʽ��֮���Ƕ�Ӧ��ʽ��ÿ������ĸ������ݡ�
--���ڸ�ʽ�ַ����Ĵ��ڣ�ʹ�ò����ĳ��ַ����ɶ��Դ������ˡ���������ĸ�ʽ����c�����е�printf()
--��ʽ���ַ������ܰ�����ת�������£�





