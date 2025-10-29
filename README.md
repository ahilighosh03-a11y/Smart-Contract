

# 📚 LibraryRecords <img width="1920" height="1080" alt="Screenshot (101)" src="https://github.com/user-attachments/assets/8201b0cf-1edc-4020-9f84-fdc726f2984a" />
Smart Contract

A simple and transparent **blockchain-based library checkout system** built with Solidity.  
This project demonstrates how to record book checkouts and returns **on-chain**, making the process transparent, verifiable, and decentralized.

---

## 🧾 Project Description

**LibraryRecords** is a beginner-friendly Ethereum smart contract that manages a digital record of books in a library.  
It allows the library owner to add new books, while users can check out and return books transparently.  
All actions are permanently stored on the blockchain, ensuring open access to records without centralized control.

---

## ⚙️ What It Does

- The **library owner** can add books to the system.  
- **Users** can:
  - View all available books.
  - Check out books that are available.
  - Return books they have borrowed.  
- Every action (add, checkout, return) emits an **event**, providing a transparent and immutable activity log.

---

## 🌟 Features

✅ **Add New Books** — Only the contract owner can add books to the library.  
✅ **Transparent Checkouts** — Anyone can verify who checked out which book.  
✅ **Secure Returns** — Only the user who borrowed a book can return it.  
✅ **Public Records** — All data and events are visible on-chain.  
✅ **Fully Decentralized** — No central database; records live on the blockchain.  

---

## 🔗 Deployed Smart Contract

- **Network:** Ethereum / Testnet (e.g., Sepolia, Base Sepolia, etc.)  
- **Contract Address:** `XXX`  
- **Block Explorer Link:** [View on Etherscan](XXX)

---

## 🧠 Smart Contract Details

- **Language:** Solidity `^0.8.20`  
- **License:** MIT  
- **Contract Name:** `LibraryRecords`  

---

## 🚀 How to Use (Remix IDE)

1. Open [Remix IDE](https://remix.ethereum.org)  
2. Create a new file: `LibraryRecords.sol`  
3. Paste the contract code.  
4. Compile using Solidity version `0.8.20`.  
5. Deploy the contract using the “Deploy & Run” tab.  
6. Interact with:
   - `addBook("Book Title")` — add new books (owner only)
   - `checkoutBook(bookId)` — check out an available book
   - `returnBook(bookId)` — return a checked-out book
   - `getBookHolder(bookId)` — see who currently holds a book

---

## 📜 Example Events (from Etherscan)

- `BookAdded(uint256 bookId, string title)`  
- `BookCheckedOut(uint256 bookId, address indexed user)`  
- `BookReturned(uint256 bookId, address indexed user)`  

---

## 👨‍💻 Author

Developed by AHILI GHOSH  
A beginner-friendly Solidity project demonstrating transparent record-keeping on Ethereum.

---

# Smart-Contract
a  simple beginner SOLDIITY smart contract, my idea is to build a records book checkouts and return transparently  
