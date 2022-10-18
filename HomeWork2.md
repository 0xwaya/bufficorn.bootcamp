# Homework 2


##  1.  Using a blockchain explorer, have a look at the following transactions,  what do they do? 
    
   ### * 0x0ec3f2488a93839524add10ea229e773f6bc891b4eb4794c3337d4495263790b


   > looks like a token distribution manager smart contract for a DAO. ultimately tokens were sent to a NULL wallet.
   >
   > #TheDAOToken #DaoManaged #TheDarkDAO


   ### * 0x4fc1580e7f66c58b7c26881cce0aab9c3509afe6e507527f30566fbf8039bcd0


> Token swap (buy) with  WETH/WCP  World CUP Protocol tokens via UNISWAP V2 
> 
> From 0x108d76d92e9bb4a6c049bd723dd5527ce8cfda88 To Uniswap V2: WCP 5 For 0.05 ($65.48)(WETH)
>
> From Uniswap V2: WCP 5To 0xc3860a4e8ef54048a8ed354e056499cc13cb3d96 For 200,444.882157124104505944 (WCP)
> 
> From Uniswap V2: WCP 5To 0x108d76d92e9bb4a6c049bd723dd5527ce8cfda88 For 9,821,799.225699081120791268 (WCP)



   ### * 0x552bc0322d78c5648c5efa21d2daa2d0f14901ad4b15531f1ab5bbe5674de34f




   ### * 0x7a026bf79b36580bf7ef174711a3de823ff3c93c65304c3acc0323c77d62d0ed




   ### * 0x814e6a21c8eb34b62a05c1d0b14ee932873c62ef3c8575dc49bcf12004714eda



## What is the largest account balance you can find ?



## What is special about these accounts :

    * 0x1db3439a222c519ab44bb1144fc28167b4fa6ee6

    * 0x000000000000000000000000000000000000dEaD

## Using remix add this contract as a source file:
 ```
 
 // SPDX-License-Identifier: None

pragma solidity 0.8.17;


contract BootcampContract {

    uint256 number;


    function store(uint256 num) public {
        number = num;
    }


    function retrieve() public view returns (uint256){
        return number;
    }
}
```

  ## Compile &  Deploy the contract to the Remix VM environment

  [Deployment by wayaman#6613 screenshot](https://github.com/cavetorch/ETHDenver_Bootcamp_22/blob/main/images/DAY2_RemixHW.png)
