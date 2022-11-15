/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.17",
  hardhat: {
    forking: {
      url: "https://eth-mainnet.alchemyapi.io/v2/ERQvSzxxqKh8OqUkeHr3v6vLPzYL2LDc",
    }
    const impersonatedSigner = await ethers.getImpersonatedSigner("0x1234567890123456789012345678901234567890");
    await impersonatedSigner.sendTransaction(...);}
};
