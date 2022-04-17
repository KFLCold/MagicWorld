## Contract Function

【读取函数】

owner;                         //查询合约所有权账户地址

getGameBasic;                  //查询游戏基础信息

gameAccountOf;                 //查询某个地址是否成为游戏用户


【写入函数】

transferOwnership;             //转移合约所有权到新地址

getSedimentToken;              //owner可提取合约Token余额

setAddressList;                //设置地址集合

setGameSwitchState;            //设置加入游戏开关状态

setGameOpenPayAmount;          //设置加入游戏默认手续费金额

joinGame;                      //加入游戏[支付100MAC]

recharge;                      //充值金币[1=MAC;2=MET]
