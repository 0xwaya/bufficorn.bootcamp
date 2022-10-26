// SPDX-License-Identifier: MIT 
////Experimental token created for ethdenver bootcamp by @cavetorch

pragma solidity ^0.8.0;


    // import oppenzepelin library erc20 / ownable
contract VolcanoCoin {
        uint16 public totalSupply;
        address public owner;

          // use ownable function on erc20 oppenzepelin and integrate into volcano coin

        mapping(address => uint256) public balanceOf;

        event supplyIncrease(uint16);

        modifier onlyOwner{
            if (msg.sender == owner) {
                _;
            }
        }
        constructor() {
        owner = msg.sender;
        balanceOf[msg.sender] = totalSupply; 
        totalSupply = 10000;    
        }

        function increaseSupply(uint16 newSupply) public  onlyOwner {
        totalSupply = newSupply;
        emit supplyIncrease(newSupply);
        }

        function GetSupply() public view returns (uint16 value) {
        return totalSupply;
        }

        function balance(uint256 ) public view  returns (uint256)  {
        return balanceOf[msg.sender];
        }
}
