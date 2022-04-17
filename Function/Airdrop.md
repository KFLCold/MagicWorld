## Contract Function

【读取函数】

owner;                         //查询合约所有权账户地址

getAirdropBasic;               //查询挖矿基础信息

airdropAccountOf;              //查询某个地址对应的空投订单信息


【写入函数】

transferOwnership;             //转移合约所有权到新地址

getSedimentToken;              //owner可提取合约Token余额

setAddressList;                //设置地址集合

setAirdropSwitchState;         //设置空投开关状态

setAirdropRewardMacAmount;     //设置空投奖励基数

joinAirdrop;                   //领取空投
