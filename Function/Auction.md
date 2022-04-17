## Contract Function

【读取函数】

owner;                         //查询合约所有权账户地址

getAuctionBasic;               //查询拍卖基础信息

auctionAccountOf;              //查询某个地址对应的拍卖订单信息

auctionOrdersOf;               //查询某个下标对应的拍卖订单明细


【写入函数】

transferOwnership;             //转移合约所有权到新地址

getSedimentToken;              //owner可提取合约Token余额

setAddressList;                //设置地址集合

setAuctionSwitchState;         //设置拍卖开关状态

setAuctionFee;                 //设置拍卖官方收取手续费(/1000)

joinAuction;                   //上架拍卖NFT

exitAuction;                   //领取退出NFT

auctionShop;                   //参与竞价NFT
