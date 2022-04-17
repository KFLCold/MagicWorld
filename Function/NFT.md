## Contract Function

【读取函数】

supportsInterface;             //查询实现的接口

name;                          //NFT全称

symbol;                        //NFT简称

tokenURI;                      //一个给定资产的唯一的统一资源标识符(URI)

tokenOfOwnerByIndex;           //枚举索引某个所有者的 NFTs

totalSupply;                   //NFTs 计数

tokenByIndex;                  //枚举索引NFT

balanceOf;                     //统计所持有的NFTs数量

ownerOf;                       //返回所有者

getApproved;                   //获取单个NFT的授权地址

isApprovedForAll;              //查询一个地址是否是另一个地址的授权操作员

isMinter;                      //是否为铸造者


【写入函数】

approve;                       //更改或确认NFT的授权地址

transferFrom;                  //转移所有权 -- 调用者负责确认`_to`是否有能力接收NFTs，否则可能永久丢失

safeTransferFrom;              //将NFT的所有权从一个地址转移到另一个地址

safeTransferFrom;              //将NFT的所有权从一个地址转移到另一个地址，功能同上，不带data参数

setApprovalForAll;             //启用或禁用第三方（操作员）管理 `msg.sender` 所有资产

addMinter;                     //添加铸造者

renounceMinter;                //销毁铸造者

mintToken;                     //铸造NFTs

burnToken;                     //销毁NFTs

mint;                          //铸造NFTs(onlyMinter)
