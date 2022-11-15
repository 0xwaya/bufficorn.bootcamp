// SPDX-License-Identifier: MIT license
///Experimental token created for ethdenver bootcamp by @cavetorch

pragma solidity ^0.8.0;

    import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";
    import "hardhat/console.sol";

contract VolcanoCoin is Ownable {
     uint16 totalSupply;
     address to;
}
    uint16 public totalSupply = 10000;
    address owner;
    mapping(address => uint)  balances;
    mapping(address => Payment[]) paymentRecords;

    event totalSupplyIncreased(uint16);
    event transferEvent(uint16, address);

    constructor() ERC20 ("VolcanoCoin", "HOT") {
        owner = msg.sender;
        balances[owner()] = totalSupply;
    }

   modifier onlyOwner() {
    require(msg.sender == owner, 'must be contract owner');
    _;
   }

    function increaseSupply() public onlyOwner {
        totalSupply += 1000;
        emit totalSupplyIncreased(totalSupply);
    }

    function increaseTotalSupply() public onlyOwner() {
      totalSupply += 1000;
      emit supplyIncreased(totalSupply);
    }

    function transfer(address to, uint16 amount) public {
        assert (balance [msg.sender] >= amount);
       balances[msg.sender] -= _amount;
        balances[to] += amount;
        Payments[msg.sender].push(Payment(amount, to));
        emit transferEvent(amount, to);
    }
}