--->>>Lua Э��(coroutine)���Խű�

--1.�����͵���Э��

--����Э�̺�����Э��
-- co=coroutine.create(
--     function(i)
--         print(i);
--     end
-- );
-- coroutine.resume(co,1)      -->1
-- print("���Э��״̬��"..coroutine.status(co))
--����һ�ַ�������Э�̺͵���Э��,coroutine.wrap����Э�̷��ص���һ����������
-- co=coroutine.wrap(
--     function(i)
--         print(i);
--     end
-- )
-- co(1);
-- print("���coroutine.wrap����Э�̷��ص����ͣ�"..type(co))       -->function

-- co2=coroutine.create(
--     function()
--         for i=1,10 do
--             print(i);
--             if i==3 then
--                 print(coroutine.status(co2))
--                 print(coroutine.runing())
--             end
--             coroutine.yield();
--         end
--     end   
-- )
-- coroutine.resume(co2)       -->1
-- coroutine.resume(co2)       -->2
-- coroutine.resume(co2)       -->3
-- print(coroutine.status(co2))

--coroutine.runing �Ϳ��Կ�����coroutine�ڵײ�ʵ����һ���߳�
--��crateһ��coroutine��ʱ����������߳���ע����һ���¼�
--��ʹ��corutine�����¼���ʱ��crate��coroutine�����ͱ�ִ���ˣ�������yield��ʱ��ʹ��������˵�ǰ�̣߳��ȴ��ٴ�resume�����¼���
function foo(a)
    print("foo ���������"..a);
    return coroutine.yield(2*a);        -->����2*a��ֵ
end
co=coroutine.create(
    function(a,b)
        print("��һ��Э�������",a,b);
        local r=foo(a+1);
        print("�ڶ���Э�����:",r);
        local r,s=coroutine.yield(a+b,a-b);     -->a,b��ֵΪ��һ�ε���Э��ʱ����
        print("������Э�������",r,s);
        return b,"Э�̽���";                     -->bΪ�ڶ��ε���Э���´���
    end
)
print("main",coroutine.resume(co,1,10))     
print("--------1---------")
print("main",coroutine.resume(co,"r"))
print("---------2--------")
print("main",coroutine.resume(co,"x","y"))
print("---------3--------")
print("main",coroutine.resume(co,"x","y"))
print("---------4--------")