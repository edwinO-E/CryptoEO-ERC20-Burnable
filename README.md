# 🔥 CryptoEOBurnable (ERC-20 Burnable Token)

---

## 🧾 Overview

**CryptoEOBurnable** is an **ERC-20 token** built with **Solidity** and **OpenZeppelin**.  
It mints a **fixed initial supply** at deployment and adds **burn** functionality using OpenZeppelin’s `ERC20Burnable` extension.

This project is intended to practice:
- Smart contract structure in Solidity
- Imports and inheritance with OpenZeppelin (`ERC20`, `ERC20Burnable`)
- Constructor parameters (`name`, `symbol`)
- Minting tokens at deployment (`_mint`)
- Burning tokens (`burn`, `burnFrom`)
- Deploying and testing in Remix IDE

---

## 🚀 Features

| Feature | Description |
|--------|-------------|
| ERC-20 Standard | Uses OpenZeppelin ERC20 implementation. |
| Fixed Supply | Mints `initialSupply` to the deployer on deployment. |
| Burnable Extension | Adds `burn()` and `burnFrom()` via `ERC20Burnable`. |
| Minimal & Readable | Small codebase focused on learning inheritance + extensions. |
| Industry Library | Uses OpenZeppelin (widely used and audited). |

---

## 📌 Contract Details

- **Contract Name:** `CryptoEOBurnable`
- **Solidity Version:** `0.8.33`
- **Token Standard:** ERC-20 + Burnable (OpenZeppelin)
- **Initial Supply:** `1000 * 1e18` (1000 tokens with 18 decimals)
- **Mint Receiver:** `msg.sender` (the deployer)

---

## 🧬 Contracts & Inheritance

### `CryptoEOBurnable.sol`
- `CryptoEOBurnable` inherits from:
  - `ERC20`
  - `ERC20Burnable`
- The constructor sets `name` and `symbol`
- `_mint(msg.sender, initialSupply)` mints the initial supply to the deployer
- `ERC20Burnable` provides burn functions:
  - `burn(uint256 amount)`
  - `burnFrom(address account, uint256 amount)`

---

## 🧠 Key Functions

### ERC-20 Functions (inherited)
- `totalSupply()`
- `balanceOf(address account)`
- `transfer(address to, uint256 amount)`
- `approve(address spender, uint256 amount)`
- `allowance(address owner, address spender)`
- `transferFrom(address from, address to, uint256 amount)`

### Burnable Functions (inherited from `ERC20Burnable`)
- `burn(uint256 amount)`  
  Burns tokens from the caller (`msg.sender`) and reduces `totalSupply`.

- `burnFrom(address account, uint256 amount)`  
  Burns tokens from `account` if the caller has enough allowance.

---

## 🛠️ Tech Stack

| Component | Details |
|----------|---------|
| Language | Solidity `0.8.33` |
| Library | OpenZeppelin Contracts (`ERC20`, `ERC20Burnable`) |
| IDE | Remix IDE |

---

## 🔗 How to Use

### 🛠️ Prerequisites
- Solidity version: **0.8.33**
- Remix IDE (recommended): https://remix.ethereum.org

### 1) Compile
1. Open Remix IDE: https://remix.ethereum.org
2. Create `CryptoEOBurnable.sol` and paste the contract code
3. Go to **Solidity Compiler**
4. Select compiler version **0.8.33**
5. Click **Compile**

### 2) Deploy
1. Go to **Deploy & Run Transactions**
2. Select contract: **CryptoEOBurnable**
3. Fill constructor parameters:
   - `name_`: e.g. `CryptoEOBurnable`
   - `symbol_`: e.g. `CEOB`
4. Click **Deploy**

### 3) Verify (Quick Checks)
After deployment:

✅ **Check total supply**
- Call `totalSupply()`
- Expected: equals `initialSupply`

✅ **Check deployer balance**
- Call `balanceOf(<deployer_address>)`
- Expected: equals `initialSupply`

✅ **Transfer test**
- Call `transfer(<receiver_address>, 10 * 1e18)`
- Verify receiver balance increased by `10 * 1e18`

✅ **Burn test**
- Call `burn(10 * 1e18)`
- Verify:
  - `totalSupply()` decreased by `10 * 1e18`
  - deployer balance decreased by `10 * 1e18`

---

## 📜 License
LGPL-3.0-only (GNU Lesser General Public License v3.0 only).
