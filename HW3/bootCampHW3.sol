// SPDX-License-Identifier: MIT 
pragma solidity 0.8.17;

contract BootcampHW3 {
     uint256 number;
     address dev;
     address returnVal = 0x000000000000000000000000000000000000dEaD;


    constructor() {
        dev = msg.sender;
    }

    function store(uint256 num) public {
        number = num;
    }

    function retrieve() public view returns (uint256){
        return number;
    }

    function onlyDev() public view returns (address){
        if (msg.sender == dev) {
            return returnVal;
        } else {
            return msg.sender;
        }
    }
}