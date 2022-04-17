## Contract Function

【读取函数】

owner;                         //查询合约所有权账户地址

getConvertBasic;               //查询商城基础信息

convertAccountOf;              //查询某个地址对应的商城订单信息

convertOrdersOf;               //查询某个下标对应的商城订单明细


【写入函数】

transferOwnership;             //转移合约所有权到新地址

getSedimentToken;              //owner可提取合约Token余额

setAddressList;                //设置地址集合

setConvertSwitchState;         //设置商城开关状态

setConvertFee;                 //设置商城官方收取手续费(/1000)

joinShop;                      //上架NFT

exitShop;                      //下架NFT

convertShop;                   //购买NFT
