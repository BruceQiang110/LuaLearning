-- >>>Lua table(表)

-- table是Lua中的一种数据结构，用来帮助我们创建不同的数据类型，如数组、字典等
-- Lua table使用关联型数组。你可以用任意了可行的值来作为数组的索引，但这个值不能是nil
-- Lua table是不固定大小的，你可以根据自己需要的内容进行扩容
-- Lua也是通过table来解决模块(module)、包(package)和对象(object)的。例如string.format表示使用"format"来索引table string

-- 1.table(表)的构造
-- 构造器是创建和初始化表的表达式。表是lua特有的功能强大的东西，最简单的构造函数时{},用来创建一个空表。
-- mytable = {};           -- 初始化表
-- mytable[1] = "Lua";     --指定值
-- mytable[1]=nil;         --移除引用
--Lua 垃圾回收会释放内存
--当我们为table a并设置元素，然后将a赋值给b,则a与b都指向同一内存。如果a设置为nil,则b同样能访问table的元素，如果没有指定的变量指向a,Lua的垃圾回收机制会清理对应的内存
-- mytable={};         -->简单的table
-- print("mytable的类型时："..type(mytable))
-- mytable[1]="Lua";
-- mytable["wow"]="修改前";
-- print("mytable[1]的元素是："..mytable[1]);
-- print("mytable['wow']的元素是："..mytable["wow"]);
-- alternatetable=mytable;         -->alternatetable和mytable指向同一table
-- print("alternatetable[1]的元素是："..alternatetable[1]);
-- print("alternatetable['wow']的元素是："..alternatetable["wow"]);
-- alternatetable["wow"]="修改后";
-- print("alternatetable['wow']的元素是："..alternatetable["wow"]);
-- alternatetable=nil;                 -->释放变量
-- print("alternatetable is:",alternatetable)
-- print("mytable is:",mytable)       --释放了alternatetable，但是mytable依然可以访问
-- mytable=nil;        -->释放mytable
-- print("mytable is:",mytable)

--2.table操作
--2.1 table.concat(table[,sep[,start[,end]]])：table连接
--concat 是concatenate(连锁，连接)的缩写，table.concat()函列出参数中指定table的数组部分从start位置到end位置的所有元素，元素间以指定的分隔符sep隔开
-- fruits={"banana","orange","apple"}
-- print("连接后的字符串",table.concat(fruits))            -->中间不用字符连接
-- print("连接后的字符串",table.concat(fruits,"-"))            -->中间用指定字符“-”连接
-- print("连接后的字符串：",table.concat(fruits,"-",2,3))      --指定索引之间的元素用指定的字符"-"连接
--2.2 table.insert(table,[pos,]value)
--在table的数组部分指定位置pos插入值为value的一个元素.pos参数可选。默认为数组部分末尾
-- fruits={"banana","orange","apple"};
-- --在末尾插入
-- table.insert(fruits,"mango")
-- --在索引为2的地方插入元素
-- table.insert(fruits,2,"grapes");
-- for k,v in pairs(fruits) do
--     print(k,v);
-- end
--2.3 table.remove(table[,pos])
--返回table数组部分位于pos位置的元素，其后的元素会被前移。pos参数可选，默认长度为table的长度，即从最后一个元素删起
-- table.remove(fruits);       -->默认从最后一个元素开始删除
-- print("remove fruits Later:",fruits[5],"table 长度为：",#fruits);
-- for k,v in pairs(fruits) do
--     print(k,v);
-- end
--2.4 table.maxn(table)
--指定table中所有正数key值中最大的key值，如果不存在key值为整数的元素，则返回0（注意：Lua5.2之后该方法已经不存在啦）
--由于在lua5.2版本以后table.maxn方法已经不存在，故自定义实现对应功能如下：
-- function table_maxn(t)
--     local mn=nil;
--     for k,v in ipairs(t) do
--         if(mn==nil) then
--             mn=v;
--         end
--         if(mn<v) then
--             mn=v;
--         end
--     end
--     return mn;
-- end

-- tal={1,3,9};
-- print(table_maxn(tal))

--注意：当我们遇到获取table的长度时，无论使用#还是table.getn都不会获得table的长度后，我们可以使用以下方法代替：
-- function get_table_len(t)
--     local len=0;
--     for k,v in pairs(t) do
--         len=len+1;
--     end
--     return len;
-- end
-- tbl = {[1] = 2, [2] = 6, [3] = 34, [26] =5}
-- print("tbl的长度是：",#tbl);                --获取有效长度错误
-- print("tbl的长度是：",table.getn(tbl);      --不能获取
-- print("table 自定义获取长度：",get_table_len(tbl));     -->能正确获取长度：

--2.5 table.sort(table,[,comp])
--对指定的table进行升序排序
-- fruits={"apple","orange","banana","mango"};
-- for k,v in pairs(fruits) do
--     print(k,v);
-- end
-- table.sort(fruits);
-- print("排序后---------")  -->如果是字符串类元素，则按照字符串首字母ASCII码对应序列进行排序
-- for k,v in pairs(fruits) do
--     print(k,v);
-- end
