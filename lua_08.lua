-->>>Lua ����

--���������ͬ�������͵�Ԫ�ذ���һ����˳�����еļ��ϣ�������һά����Ͷ�ά���顣
--Lua�����������ֵ����ʹ��������ʾ������Ĵ�С���ǹ̶���

--1.һά����
--һά��������򵥵����飬���߼��ṹ�����Ա�һά�������forѭ�����������е�Ԫ�أ�����ʾ����
--array={"Lua","Python","CSharp"};
-- for i,v in ipairs(array) do
--     print(i,v);
-- end

-- for i=1,#array do
--     print(array[i]);
-- end
--ע�⣺lua������ֵ�Ǵ�1��ʼ�ģ����Ǵ�0��ʼ��


--2.��ά����
--��ά���鼴�����а��������һά�������������Ӧ��һ������
--���磬������һ���������е����ж�Ϊ����
-- array={};       -->��ʼ������
-- for i=1,3 do
--     array[i]={};
--     for j=1,3 do
--         array[i][j]=i*j;
--     end
-- end
-- --������ά����
-- for i=1,#array do
--     for j=1,#array[i] do
--         print(i,j,array[i][j]);
--     end
-- end
--��ͬ�������������������ж�ά���飺
-- array={};
-- maxRows=3;
-- maxColums=3;
-- for row=1,maxRows do
--     for col=1,maxColums do
--         array[row*maxColums+col]=row*col;
--     end
-- end
-- --������ά����
-- for row=1,maxRows do
--     for col=1,maxColums do
--         print(row,col,array[row*maxColums+col]);
--     end
-- end



    