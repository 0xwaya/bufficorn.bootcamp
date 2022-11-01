// SPDX-License-Identifier: MIT License 

pragma solidity 0.8.17;

import "https://docs.openzeppelin.com/contracts/2.x/api/token/erc721#ERC721Full";


import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol";

contract volcanoNFT is ERC721 {
   

    constructor() public ERC721("VolcanoNFT", "Boom") {}

    function awardItem(address player, string memory tokenURI)
        public
        returns (uint256)
    {
        _tokenIds.increment();

        uint256 newItemId = _tokenIds.current();
        _mint(player, newItemId);
        _setTokenURI(newItemId, tokenURI);

        return newItemId;
    }
}
