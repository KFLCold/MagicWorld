## Contract Function

【读取函数】

owner;                         //查询合约所有权账户地址

getFarmBasic;                  //查询挖矿基础信息

farmAccountOf;                 //查询某个地址对应的挖矿订单信息

farmOrdersOf;                  //查询某个下标对应的挖矿订单明细

inviterAddressOf;              //查询某个地址的推荐人信息

inviterRewards;                //查询推荐人奖励开关

accountInviterV1RewardAmount;  //查询某个地址的直推推荐收益

accountInviterV1RewardAmount;  //查询某个地址的间推推荐收益

profitAmountOf;                //查询某个订单的实时收益


【写入函数】

transferOwnership;             //转移合约所有权到新地址

getSedimentToken;              //owner可提取合约Token余额

setAddressList;                //设置地址集合

setFarmSwitchState;            //设置挖矿开关状态

setInviterRewards;             //设置推荐人奖励开关状态

joinFarm;                      //加入挖矿

exitFarm;                      //退出挖矿

claim;                         //提取挖矿收益
