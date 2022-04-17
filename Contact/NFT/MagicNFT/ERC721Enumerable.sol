pragma solidity ^0.5.8;

import { IERC721 } from "./IERC721.sol" ;
import { ERC721 } from "./ERC721.sol" ;
import { ERC165 } from "./ERC165.sol" ;

contract IERC721Enumerable is IERC721 {
  function totalSupply() public view returns (uint256);
  function tokenOfOwnerByIndex(address owner,uint256 index) public view returns (uint256 tokenId);
  function tokenByIndex(uint256 index) public view returns (uint256);
}

contract ERC721Enumerable is ERC165, ERC721, IERC721Enumerable {
    mapping(address => uint256[]) private _ownedTokens;
    mapping(uint256 => uint256) private _ownedTokensIndex;
    uint256[] private _allTokens;
    mapping(uint256 => uint256) private _allTokensIndex;

    bytes4 private constant _InterfaceId_ERC721Enumerable = 0x780e9d63;

    constructor() public {
        _registerInterface(_InterfaceId_ERC721Enumerable);
    }

    function tokenOfOwnerByIndex(address owner,uint256 index) public view returns (uint256) {
        require(index < balanceOf(owner));
        return _ownedTokens[owner][index];
    }

    function totalSupply() public view returns (uint256) {
        return _allTokens.length;
    }

    function tokenByIndex(uint256 index) public view returns (uint256) {
        require(index < totalSupply());
        return _allTokens[index];
    }

    function _addTokenTo(address to, uint256 tokenId) internal {
        super._addTokenTo(to, tokenId);
        uint256 length = _ownedTokens[to].length;
        _ownedTokens[to].push(tokenId);
        _ownedTokensIndex[tokenId] = length;
    }

    function _removeTokenFrom(address from, uint256 tokenId) internal {
        super._removeTokenFrom(from, tokenId);

        uint256 tokenIndex = _ownedTokensIndex[tokenId];
        uint256 lastTokenIndex = _ownedTokens[from].length.sub(1);
        uint256 lastToken = _ownedTokens[from][lastTokenIndex];

        _ownedTokens[from][tokenIndex] = lastToken;
        _ownedTokens[from].length--;

        _ownedTokensIndex[tokenId] = 0;
        _ownedTokensIndex[lastToken] = tokenIndex;
    }

    function _mint(address to, uint256 tokenId) internal {
        super._mint(to, tokenId);

        _allTokensIndex[tokenId] = _allTokens.length;
        _allTokens.push(tokenId);
    }

    function _burn(address owner, uint256 tokenId) internal {
        super._burn(owner, tokenId);

        uint256 tokenIndex = _allTokensIndex[tokenId];
        uint256 lastTokenIndex = _allTokens.length.sub(1);
        uint256 lastToken = _allTokens[lastTokenIndex];

        _allTokens[tokenIndex] = lastToken;
        _allTokens[lastTokenIndex] = 0;

        _allTokens.length--;
        _allTokensIndex[tokenId] = 0;
        _allTokensIndex[lastToken] = tokenIndex;
    }
}
