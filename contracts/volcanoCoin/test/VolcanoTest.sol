const { loadFixture } = require("@nomicfoundation/hardhat-network-helpers");
const { expect } = require("chai");

describe("Testing VolcanoCoin contract", function () {

  async function deployVolcanoCoinFixture(){
    const [owner, otherAccount] = await ethers.getSigners();
    const VolcanoCoin = await ethers.getContractFactory("VolcanoCoin");
    const volcanoCoin = await VolcanoCoin.deploy();
    return {volcanoCoin, owner, otherAccount};
  }

  describe("Initial supply of Volcano coins", function(){
    it("Should have 10000 as initial supply", async function(){
      const {volcanoCoin} = await loadFixture(deployVolcanoCoinFixture);
      expect(await volcanoCoin.getTotalSupply()).to.equal(10000);
    });
  });

  describe("Increment initial supply of Volcano coins", function(){
    it("should increment by 1000", async function(){
      const {volcanoCoin} = await loadFixture(deployVolcanoCoinFixture);
      value = Number(await volcanoCoin.getTotalSupply());
      value += 1000;
      volcanoCoin.increaseTotalSupply();
      expect(Number(await volcanoCoin.getTotalSupply())).to.equal(value);
    });

    it("should fail if other account increments total supply", async function(){
      const {volcanoCoin, owner, otherAccount} = await loadFixture(deployVolcanoCoinFixture);
      expect(volcanoCoin.connect(otherAccount).increaseTotalSupply()).to.be.revertedWith(
        "only contract owner can change total supply"
        );
    });
  });
});