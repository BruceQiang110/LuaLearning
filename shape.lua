-->>>Lua �����������ϰ
shape={area=0}
--�����෽�� new
function shape:new(o,side)
    o=o or {};
    setmetatable(o,self);
    self.__index=self;
    side=side or 0;
    self.area=side*side;
    return o;
end
--�����෽��printArea
function shape:printArea()
    print("���Ϊ��",self.area)
end
--�����¶���
myshape=shape:new(nil,10)
myshape:printArea();        -->���Ϊ��     100






