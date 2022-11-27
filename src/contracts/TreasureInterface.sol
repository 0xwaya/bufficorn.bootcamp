// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

interface ITreasureChest {
    function GetTreasure(address) external;
}

contract ClaimTreasure {

	function callTreasureContract(address _address) external {
		ITreasureChest(_address).GetTreasure(msg.sender);
	}
}
