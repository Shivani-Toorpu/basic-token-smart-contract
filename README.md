# 📄 Basic Smart Contract Development

This project demonstrates the creation and deployment of a simple smart contract using **Solidity** for a **token transfer system**. The goal is to help developers understand the fundamentals of Ethereum smart contracts and how to deploy them on a **test Ethereum network** such as Sepolia or Goerli.

---

## 🔧 What You’ll Learn

- ✅ How to write a basic ERC-20 style token contract.
- ✅ How to implement token transfers between addresses.
- ✅ How to deploy a Solidity smart contract using **Hardhat** and **Ethers.js**.
- ✅ How to interact with the contract on a testnet.

---

## 🚀 Deliverables

- 📁 Solidity smart contract code.
- 📜 Deployment scripts using Hardhat.
- 🧾 Step-by-step instructions to deploy on an Ethereum testnet.

---

---

## 📌 Requirements

- Node.js
- Hardhat
- MetaMask Wallet
- Infura or Alchemy RPC URL

---

## ⚙️ Setup Instructions

1. **Clone the repo**
   ```bash
   git clone https://github.com/yourusername/basic-smart-contract.git
   cd basic-smart-contract

2. **install dependencies**
   '''bash
   npm install
3. **Create .env file**
   '''ini
    SEPOLIA_RPC_URL=https://sepolia.infura.io/v3/YOUR_INFURA_PROJECT_ID
    PRIVATE_KEY=your_wallet_private_key
4. **Compile the contract**
   '''bash
    npx hardhat compile
5. **Deploy to Sepolia**
   '''bash
    npx hardhat run scripts/deploy.js --network sepolia
