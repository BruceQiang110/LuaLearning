-->>>lua����

--��lua�У�����ʱ�����ͱ��ʽ���г������Ҫ�������ȿ�����������һЩ����Ĺ����У�Ҳ������������һЩֵ
--lua�ṩ�������ڽ�����������Ժܷ�����ڳ����е������ǣ���print()�������Խ�����Ĳ�����ӡ�ڿ���̨�ϡ�
--lua��������Ҫ��;��
--A.���ָ���������������������Ϊ�������ʹ�ã�
--B.���㲢����ֵ����������º�����Ϊ��ֵ���ı��ʽʹ�ã�

--1.�����Ķ��壺
--lua������Ժ��������ʽ���£�
-- optional_function_scope function function_name(argument1,argument2,argument3...,argumentn)
--     function_body
--     return result_params_comma_separated
-- end
--������
--optional_function_scope���ò���ʱ��ѡ���ƶ�������ȫ�ֺ������Ǿֲ�������
---------------------------δ���øò�����Ĭ��Ϊȫ�ֺ��������������Ҫ���ú���Ϊ�ֲ�������Ҫʹ�ùؼ���local
--function_name:ָ��������
--argument1,argument2,argument3...,argumentn:��������������Ͳ����Զ��ŷֿ�������Ҳ���Բ�������
--function_body:�����壬��������Ҫִ�еĴ������顣
--result_params_comma_separated:��������ֵ��lua���Ժ������Է��ض��ֵ��ÿ��ֵ�Զ��Ÿ�����
--����ʾ�����Ƚϲ���num1,num2��Ĵ�С�����������ֵ
-- function max(num1,num2)
--     if(num1>num2) then
--         result=num1;
--     else 
--         result=num2;
--     end
--     return result;
-- end
-- print("�Ƚ�����ֵ�Ĵ�С��",max(10,3));
-- print("��ֵ�Ƚ����ֵΪ��",max(5,25));
--ע�⣺lua�����ǿ��Խ�������Ϊ�������ݸ�������ʾ�����£�
-- myprint=function(param)
--     print("�����Զ����ӡ����:"..param);
-- end

-- function add(num1,num2,functionPrint)
--     result=num1+num2;
--     functionPrint(result);      --���ô��ݵĺ�������
-- end

-- myprint(10);
-- add(3,6,myprint);

--2.�෵��ֵ
--lua�������Է��ض�����ֵ������string.find,���з���ƥ�䴮����ʼ�ͽ������±ꡯ������㲻����ƥ�䷵��nil��
--lua�������У���return���г�Ҫ���ص�ֵ���б���ɷ��ض�ֵ��ʾ���磺
-- function maxinum(a)
--     local index=1;          --�������ֵ
--     local m=a[index];       --���ֵ
--     for k,v in ipairs(a) do
--         if(v>m) then
--             index=k;
--             m=v;
--         end
--     end
--     return index,m;
-- end
-- print(maxinum({5,7,78,56,24}));


--3.�ɱ����
--lua�������Խ��ܿɱ���Ŀ�Ĳ�������C�������ƣ��ڹ��������б���ʹ������...��ʾ�����пɱ�Ĳ���
-- function add(...)
--     local s=0;
--     for i,v in ipairs{...} do        --ע�⣺{...} ��ʾһ�������б䳤�������ɵ�����
--         s=s+v;
--     end
--     return s;
-- end
-- print(add(3,4,5,6,7));
--���ڿɱ���������ǿ��Խ��ɱ������ֵ��һ��������
--���磬���㼸������ƽ��ֵ��
-- function average(...)
--     result=0;
--     local arg={...};        -->arg Ϊһ�����ֲ�����
--     for i,v in ipairs(arg) do
--         result=result+v;
--     end
--     print("�ܹ�����Ĳ�������Ϊ��"..#arg)
--     return result/#arg;      -->#arg��ȡ�ɱ����arg������
-- end
-- print("��ƽ������",average(3,4,5,6,7));

--ע�⣺lua��Ҳ����ʹ��select("#",...)����ȡ�ɱ����������
-- function average(...)
--     result=0;
--     local arg={...};        -->arg Ϊһ�����ֲ�����
--     for i,v in ipairs(arg) do
--         result=result+v;
--     end
--     print("�ܹ�����Ĳ�������Ϊ��"..select("#",...))   -->select("#",...)�����ȡ�ɱ�����ĳ���
--     return result/select("#",...);      
-- end
-- print("��ƽ������",average(3,4,5,6,7));

--ע�⣺��ʱ��������Ҫ�����̶��������Ͽɱ�������̶��������뷽�ڿɱ����֮ǰ��
-- function fwrite(fmt,...)        -->�̶�����fmt
--     return io.write(string.format(fmt,...))
-- end
-- fwrite("pxq\n")          -->fmt=pxq,û�пɱ����
-- fwrite("%d%d\n",1,2)        -->fmt=��%d%d��,�䳤����Ϊ1��2

--ͨ���ڱ����䳤������ʱ��ֻ��Ҫʹ��{...}��Ȼ���䳤�������ܻ����һЩnil���͵�ֵ����ô�Ϳ�����
--select���������ʱ䳤��������select("#",...)����select(n,...)
--selct("#",...) ���ؿɱ�����ĳ���
--select(n,...) ���ڷ���n��slect("#",...)�Ĳ���
--ע�⣺����selectʱ�����봫��һ���̶��Ĳ���selector(ѡ�񿪹�)��һϵ�б䳤���������slectorΪ����n,��ôselect�������ĵ�n����ѡ������
-------����ֻ��Ϊ�ַ�����#��,����select�᷵�ر䳤���������������磺
-- do
--     function foo(...)
--         for i=1,select("#",...) do      -->select("#",...) �����ȡ��������
--             local arg=select(i,...);     -->��ȡ����
--             print("arg:",arg);
--         end
--     end
--     foo(1,2,3,4,5);
-- end
           


