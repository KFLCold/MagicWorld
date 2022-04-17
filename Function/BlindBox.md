## Contract Function

【读取函数】

owner;                         //查询合约所有权账户地址

getBoxBasic;                   //查询盲盒基础信息

boxAccountOf;                  //查询某个地址对应的盲盒订单信息

boxOrdersOf;                   //查询某个下标对应的盲盒订单明细


【写入函数】

transferOwnership;             //转移合约所有权到新地址

getSedimentToken;              //owner可提取合约Token余额

setAddressList;                //设置地址集合

setBoxSwitchState;             //设置挖矿开关状态

setBoxOpenPayAmount;           //设置开启盒子支付金额

openBox;                       //打开盒子
