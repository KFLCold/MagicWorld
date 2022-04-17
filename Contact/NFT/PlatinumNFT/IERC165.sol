pragma solidity ^0.5.8;

// ERC165
interface IERC165 {
  
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}
