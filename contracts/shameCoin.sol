// SPDX-License-Identifier: MIT License

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

pragma solidity 0.8.17;

contract VolcanoCoin is Ownable, ERC20 {

    uint256 supply = 10000;
    event changeSupply(uint256 indexed);
    event transferbb(address, uint256 address);

    constructor(uint256 innitialSupply) ERC20 ("ShameCoin", "SHAME"){
        
    }



}