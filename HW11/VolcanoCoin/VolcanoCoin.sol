import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract VolcanoCoin is ERC20 {
    constructor(uint256 initialSupply) ERC20("VolcanoCoin", "HOT") {
        _mint(msg.sender, initialSupply);
    }
}