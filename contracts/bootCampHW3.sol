// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;


contract BootcampHW3 {

        uint256 number;
        address public owner;
        
          event OwnerSet(address indexed owner, address indexed Recipient);

        constructor () {
        owner = msg.sender;
        emit OwnerSet(address(0), owner);
        }


    function store(uint256 num) public {
        number = num;
    }


    function retrieve() public view returns (uint256){
        return number;
    }
}
