// Setup: npm install alchemy-sdk
const { Network, Alchemy } = require("alchemy-sdk");

// Optional Config object, but defaults to demo api-key and eth-mainnet.
const settings = {
    apiKey: "API KEY",
    network: Network.ETH_GOERLI,
};

const alchemy = new Alchemy(settings);

async function main() {
    const latestBlock = await alchemy.core.getBlockNumber();
    console.log("The latest block number is", latestBlock);
}

main();