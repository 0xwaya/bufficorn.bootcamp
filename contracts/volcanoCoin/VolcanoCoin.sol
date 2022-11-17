// SPDX-License-Identifier: MIT License
////Experimental token created for ethdenver bootcamp by @cavetorch

pragma solidity ^0.8.17;


    contract VolcanoCoin {
        struct Payment {
        uint256 amount;
        address to;
    }
        uint256 public totalSupply = 10000;
        address owner;
        mapping(address => uint256) balances;
        mapping(address => Payment[]) payments;

        event totalSupplyIncreased(uint256);
        event transferEvent(uint256, address); 

     constructor() {
        owner = msg.sender;
        balances[owner] = totalSupply;
    }

        modifier onlyOwner() {
        require(msg.sender == owner, 'must be contract owner');
        _;
    }

        function increaseSupply() public onlyOwner {
        totalSupply += 1000;
        emit totalSupplyIncreased(totalSupply);
    }

        function transfer(address to, uint256 amount) public {
        assert (balances [msg.sender] >= amount);
        balances[msg.sender] -= amount;
        balances[to] += amount;
        payments[msg.sender].push(Payment(amount, to));
        emit transferEvent(amount, to);
    }
}