## Contract Function

【读取函数】

owner;                         //查询合约所有权账户地址

getIdoBasic;                   //查询IDO基础信息

{

  DayTime|uint256 :  120                                                        一天时间戳数(120S即2分钟为1天)

  UsdtTokenContract|address :  0x2700bc595607f154163471ac2bd46ea8987d4cf0       USDT代币合约地址

  MacTokenContract|address :  0xbf496a476e33e1019f87242cb61468de2532a16b        MAC代币合约地址

  OfficialAddress|address :  0x2a90751681279be0cabdc6951d7edb24803de1b4         官方IDO支付归集地址

  OneSwapSwitchState|bool :  True                                               1期开关状态

  TwoSwapSwitchState|bool :  True                                               2期开关状态

  ReleaseOneSwitchState|bool :  True                                            1期释放开关状态

  ReleaseTwoSwitchState|bool :  True                                            2期释放开关状态

  OneNextReleaseTime|uint256 :  1634714116                                      1期下次可释放时间

  TwoNextReleaseTime|uint256 :  1634714116                                      2期下次可释放时间

  OneSwapNowJoinAmount|uint256 :  100                                           当前1期全网参与IDO金额(MAC)

  TwoSwapNowJoinAmount|uint256 :  0                                             当前2期全网参与IDO金额(MAC)

  SwapNowJoinTotalCount|uint256 :  1                                            当前全网加入IDO总订单数量   

}

idoAccountOf;                  //查询某个地址对应的账号信息

{

  TotalJoinOneCount   uint256 :  0                                              账号加入1期IDO订单数量

  TotalJoinTwoCount   uint256 :  1                                              账号加入2期IDO订单数量

  TotalPayUsdtAmount   uint256 :  80                                            账号加入IDO支付USDT金额

  TotalSwapMacAmount   uint256 :  100                                           账号加入IDO可获取MAC金额

  JoinOrdersIndex   uint256[] :  1                                              账号加入IDO订单IDs

}

joinOrdersOf;                  //某个下标对应的加入IDO订单明细

{

  Index   uint256 :  1                                                          加入IDO订单ID

  Account   address :  0x2A90751681279Be0CaBDC6951d7edB24803de1b4               加入IDO订单账号地址

  JoinTime   uint256 :  1634713906                                              加入IDO订单生成时间戳

  SwapId   uint256 :  1                                                         加入IDO期次

  PayUsdtAmount   uint256 :  80                                                 加入IDO该订单支付USDT金额

  SwapMacAmount   uint256 :  100                                                加入IDO该订单可获取MAC金额

}


【写入函数】

transferOwnership;             //转移合约所有权到新地址

getSedimentToken;              //owner可提取合约Token余额

setAddressList;                //设置地址集合

setSwapSwitchState;            //设置开关状态

joinFarm;                      //加入IDO

release;                       //触发IDO释放(每月1/12)
