-->Lua ����ģ��moduel�����ļ�
--�ļ���Ϊmodule.lua
module={};
--����һ������
module.constant="����һ������";
--����һ������
function module.func1()
    io.write("����һ�����к���func1\n")
end
local function func2()
    print("����һ��˽�к���func2")
end
function module.func3()
    print("����˽�к���");
    func2();
end
return module;