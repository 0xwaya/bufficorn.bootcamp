// SPDX-License-Identifier: MIT 
////Experimental token created for ethdenver bootcamp by @cavetorch

pragma solidity ^0.8.0;

    import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";
    import "hardhat/console.sol";

contract VolcanoCoin is Ownable {
     
    uint16 totalSupply = 10000;
    mapping(address => uint)  balances;
    mapping(address => Payment[]) PaymentRecords;

    constructor() ERC20 ("VolcanoCoin", "HOT") {
        balances[owner()] = totalSupply;
    }

    struct Payment {
        address to;
        uint amount;
    }

    event supplyIncreased(uint);
    event paymentTransferComplete(address, uint);

    function getTotalSupply() public view returns (uint){
        return totalSupply;
    }

    function increaseTotalSupply() public onlyOwner() {
      totalSupply += 1000;
      emit supplyIncreased(totalSupply);
    }

    function transfer(address _to, uint _amount) public {
        uint balance = balances[msg.sender];
        require(balance >= _amount);
        balances[msg.sender] -= _amount;
        balances[_to] += _amount;
        PaymentRecords[msg.sender].push(Payment({to: _to, amount: _amount}));
        // adds payment to msg.sender's array of payments
        emit paymentTransferComplete(_to, _amount);
    }

    function getPaymentRecords(address userAddress) public view returns (Payment[] memory) {
        return PaymentRecords[userAddress];
        //print the array of payments made by a specific address
    }
}