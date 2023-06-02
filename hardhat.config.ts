import { HardhatUserConfig } from "hardhat/config";
import {HardhatNetworkAccountUserConfig} from "hardhat/types/config";
import "@nomicfoundation/hardhat-toolbox";
import "@nomicfoundation/hardhat-foundry";
import "@nomiclabs/hardhat-ethers";
import { config as dotEnvConfig} from "dotenv";

dotEnvConfig();

const deployerAccount: HardhatNetworkAccountUserConfig = {
  privateKey: process.env.DEPLOYER_PRIVATE_KEY || "0x12345121545454455",
  balance: ""
};

const { DEPLOYER_PRIVATE_KEY } = process.env

const config: HardhatUserConfig = {
  solidity: "0.8.17",
  networks: {
    localhost: {
      chainId: 1337,
      url: "http://127.0.0.1:8545",
      accounts: [deployerAccount.privateKey || ""]
    },
    sepolia: {
      chainId: 11155111,
      url: "https://rpc.sepolia.org",
      accounts: [deployerAccount.privateKey]
    }
  }
};

export default config;
