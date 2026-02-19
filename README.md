# 🔥 CryptoEOBurnable: ERC-20 Deflationary Token

---

## 🧾 Overview

Built with **Solidity** and **OpenZeppelin**, this contract serves as a template for deploying **fungible, deflationary tokens**. It mints a **fixed initial supply** of **1000 tokens** at deployment, and features integrated **burn mechanics** using OpenZeppelin’s `ERC20Burnable` extension.

---

## 🚀 Features

| Feature | Description |
|--------|-------------|
| ERC-20 Standard | Built on OpenZeppelin libraries — for proven reliability, and maximum wallet and exchange compatibility. |
| Fixed Supply | Ensures a capped total supply by minting all tokens to the deployer address at genesis. |
| Burnable Extension | Enables supply reduction via `burn()` and `burnFrom()` functions — allowing transparent, deflationary tokenomics |

---

## 🪙 Tokenomics and Use Cases

CryptoEOBurnable employs a **deflationary economic model**. Token holders can actively burn tokens to manage inflation, or increase value through scarcity.

This template is designed for projects requiring a transparent, diminishing supply model, such as:
-  **Milestone Rewards:** Long-term holders will enjoy a higher token value through scarcity.
-  **Access Tokens:** One-time use tickets where tokens are burned upon redemption for a service or digital good.
-  **Governance:** Enhances relative voting power for remaining token holders by reducing overall circulating supply.
  
---

## 📌 Tech Stack

| Components | Details | 
|--------|-------------|
| Contract Name | `CryptoEOBurnable` | 
| Solidity Version |  `0.8.33` |
| Library |  OpenZeppelin Contracts (`ERC20`, `ERC20Burnable`) |
| IDE | Remix IDE |
| Initial Supply | 1000 Tokens (Fixed) |
| Decimals | 18 |
| Initial Recipient | Deployer address (`msg.sender`) |

---

## 🧠 Key Functions

**Standard ERC-20:** Supports all standard transfers, allowances and balance queries.

**Burnable Mechanics:** 
- `burn()`: Destroys tokens from your own balance.
- `burnFrom()`: Destroys tokens from another account if they have granted you allowance.

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
