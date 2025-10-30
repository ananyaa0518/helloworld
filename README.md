# 🪙 Aptos HelloWorld Smart Contract

🔗 **Deployed Contract**  
**Transaction Link:** [View on Aptos Explorer →](https://explorer.aptoslabs.com/account/0xbf920a07ed4907f1afdd1412b1c9daadd89bbe445dfa9cbb2ce56b13087c9f5c/modules?network=testnet)

---

## 📜 Overview
This **HelloWorld** smart contract demonstrates a simple on-chain message storage and retrieval system on the **Aptos blockchain**.  

It allows users to:
- Initialize a custom message linked to their account.  
- Update or change their stored message anytime.  
- Retrieve messages directly from the blockchain.  

This contract is ideal for learning Move basics — such as resources, entry functions, and account storage.

---

## ⚙️ Features
✅ **Initialize Message** – Set a default or custom message in your account.  
✅ **Update Message** – Modify your message anytime with a new string.  
✅ **Read Message** – View your on-chain message publicly.  
✅ **On-Chain Storage** – Each account securely holds its own `Message` resource.  

---

## 🧠 Smart Contract Functions

| Function | Description |
|-----------|-------------|
| `init(account: &signer, initial_message: string::String)` | Initializes a `Message` resource with a custom string for the account. |
| `update_message(account: &signer, new_message: string::String)` | Updates the existing message associated with the account. |
| `get_message(account: address): string::String` | Returns the stored message for a given account address. |

---

## 🧩 Data Structure

| Struct | Description |
|---------|--------------|
| `Message` | A resource struct containing a single field `value: string::String`, representing the user’s stored message. |

---

## 🧰 Tech Stack

| Component | Details |
|------------|----------|
| **Language** | Move |
| **Network** | Aptos Testnet |
| **Module Address** | `0xbf920a07ed4907f1afdd1412b1c9daadd89bbe445dfa9cbb2ce56b13087c9f5c` |
| **Coin Type** | `AptosCoin (0x1::aptos_coin::AptosCoin)` |

---

## 🚀 How to Use

1. **Deploy the Contract**  
   Upload the module to the Aptos Testnet at your account address.

2. **Initialize Message**  
   ```move
   entry fun init(account: &signer, initial_message: string::String) {
       move_to(account, Message { value: initial_message });
   }


## 🧾 License

This project is open-source and available under the MIT License.
