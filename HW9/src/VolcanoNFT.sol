// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";


contract VolcanoNFT is ERC721 {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIdCount;

    constructor() ERC721("VolcanoNFT", "LAVA") {}

    function mintNFT(address recipient) public returns (uint256) {
        _tokenIdCount.increment();
        uint256 newItemId = _tokenIdCount.current();
        _mint(recipient, newItemId);
        return newItemId;
    }
}