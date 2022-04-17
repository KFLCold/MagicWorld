pragma solidity 0.5.8;

import "./Address.sol";
import "./SafeMath.sol";

library SafeERC721 {
    using SafeMath for uint256;
    using Address for address;

    function sunshineTransferFrom(ERC721 token, address from,address to, uint256 tokenId) internal {
        callOptionalReturn(token, abi.encodeWithSelector(token.transferFrom.selector, from, to, tokenId));
    }

    function sunshineSafeTransferFrom(ERC721 token, address from,address to, uint256 tokenId) internal {
        callOptionalReturn(token, abi.encodeWithSelector(token.safeTransferFrom.selector, from, to, tokenId));
    }

    function callOptionalReturn(ERC721 token, bytes memory data) private {
        require(address(token).isContract(), "SafeERC721: call to non-contract");
        (bool success, bytes memory returndata) = address(token).call(data);
        require(success, "SafeERC721: low-level call failed");
        if (returndata.length > 0) {
            require(abi.decode(returndata, (bool)), "SafeERC721: ERC721 operation did not succeed");
        }
    }
}

interface ERC721 {

    event Transfer(address indexed _from, address indexed _to, uint256 indexed _tokenId);
    event Approval(address indexed _owner, address indexed _approved, uint256 indexed _tokenId);
    event ApprovalForAll(address indexed _owner, address indexed _operator, bool _approved);

    function balanceOf(address _owner) external view returns (uint256 balance);
    function ownerOf(uint256 _tokenId) external view returns (address owner);
    function tokenOfOwnerByIndex(address owner,uint256 index) external view returns (uint256 tokenId);

    function approve(address _to, uint256 _tokenId) external;
    function getApproved(uint256 _tokenId) external view returns (address operator);
    function setApprovalForAll(address _operator, bool _approved) external;
    function isApprovedForAll(address _owner, address _operator) external view returns (bool);

    function safeTransferFrom(address _from, address _to, uint256 _tokenId) external;
    function transferFrom(address _from, address _to, uint256 _tokenId) external;
}
