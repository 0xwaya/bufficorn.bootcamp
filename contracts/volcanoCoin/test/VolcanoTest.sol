const { loadFixture } = require("@nomicfoundation/hardhat-network-helpers");
const { expect } = require("chai");

describe("Testing VolcanoCoin contract", function () {

  async function deployVolcanoCoinFixture(){
    // Contracts are deployed using the first signer/account by default
    const [owner, otherAccount] = await ethers.getSigners();
    // Obtain the descriptor (ABI etc.) of the VolcanoCoin contract
    const VolcanoCoin = await ethers.getContractFactory("VolcanoCoin");
    const volcanoCoin = await VolcanoCoin.deploy();
    // return contract address and private key of other account than owner
    return {volcanoCoin, owner, otherAccount};
  }

// The total supply is initially 10000
// That the total supply can be increased in 1000 token steps
// Only the owner of the contract can increase the supply

  // Tests starts here
  describe("Initial supply of Volcano coins", function(){
  // test that initial supply is 10000
    it("Should have 10000 as initial supply", async function(){
      const {volcanoCoin} = await loadFixture(deployVolcanoCoinFixture);
      expect(await volcanoCoin.getTotalSupply()).to.equal(10000);
    });
  });

  describe("Increment initial supply of Volcano coins", function(){
    // test that total supply can be incremented by steps of 1000
    it("should increment by 1000", async function(){
      const {volcanoCoin} = await loadFixture(deployVolcanoCoinFixture);
      value = Number(await volcanoCoin.getTotalSupply());
      value += 1000;
      volcanoCoin.increaseTotalSupply();
      expect(Number(await volcanoCoin.getTotalSupply())).to.equal(value);
    });

  // test that the "require" condition reverts the transaction
    it("should fail if other account increments total supply", async function(){
      const {volcanoCoin, owner, otherAccount} = await loadFixture(deployVolcanoCoinFixture);
      // change signer of transaction to otherAccount by connect(otherAccount)
      expect(volcanoCoin.connect(otherAccount).increaseTotalSupply()).to.be.revertedWith(
        "only owner can change total supply"
        );
    });
  });
});