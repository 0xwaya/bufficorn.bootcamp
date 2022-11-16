/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.17",
  hardhat: {
    forking: {
      url: "https://eth-mainnet.alchemyapi.io/v2/()",
    }

  }
}
