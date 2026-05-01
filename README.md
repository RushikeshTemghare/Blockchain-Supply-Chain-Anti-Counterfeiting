# ⛓️ Blockchain Based Anti-Counterfeiting Measures in the Supply Chain

## Blockchain and Digital Futures — MSc Research Paper

![Blockchain](https://img.shields.io/badge/Blockchain-Solidity-blue.svg)
![Smart Contract](https://img.shields.io/badge/Smart%20Contract-Ethereum-purple.svg)
![Status](https://img.shields.io/badge/Status-Completed-green.svg)
![License](https://img.shields.io/badge/License-MIT-yellow.svg)

---

## 📌 Project Overview

This research paper was developed as part of the **MSc Data Science & Artificial Intelligence** 
coursework for the **Blockchain and Digital Futures (COMP7058)** module at Bournemouth University.

The paper proposes a **blockchain-based anti-counterfeiting system** for supply chains that 
integrates Smart Contracts, Decentralised Identities (DIDs), and Internet of Things (IoT) 
devices to guarantee data integrity and authenticity throughout the supply chain lifecycle.

---

## 📂 Repository Structure

Blockchain-Supply-Chain-Anti-Counterfeiting/
│
├── report/
│   └── Blockchain_Report_GitHub.pdf
│
├── smart-contract/
│   └── Smart_Contract.sol
│
├── LICENSE
└── README.md

---

## 🔍 Problem Statement

Counterfeiting causes billions of dollars in losses annually and damages brand reputation 
across industries including luxury goods, pharmaceuticals, and electronics. Traditional 
anti-counterfeiting methods like QR codes and RFID tags are insufficient due to:

- ❌ Vulnerability to replication and database manipulation
- ❌ Centralised administration weaknesses
- ❌ Lack of real-time tracking and transparency
- ❌ Inability to verify product authenticity independently

---

## 💡 Proposed Solution

A blockchain-based system combining:

| Component | Role |
|---|---|
| **Decentralised Identity (DID)** | Unique cryptographic identity for each supply chain participant |
| **IoT Devices** | Real-time data collection — RFID, QR scanners, temperature sensors |
| **Smart Contracts** | Automated data validation and rule enforcement |
| **Proof of Authority (POA)** | Energy-efficient consensus mechanism |
| **Traceability Layer** | Audit trails and cryptographic signatures |

---

## ⚙️ Smart Contract

The smart contract (`Smart_Contract.sol`) is written in **Solidity** and implements:

- ✅ **Node Authorisation** — only approved nodes can submit data
- ✅ **Data Submission** — authorised nodes submit digitally signed data
- ✅ **Validation Logic** — rules to confirm accuracy of submitted data
- ✅ **Immutable Storage** — permanent record of all verified data entries
- ✅ **Full Traceability** — every entry linked to sender's DID and timestamp

---

## 🔄 How the System Works

1. **DID Assignment** — every participant and IoT device gets a unique cryptographic identity
2. **Data Collection** — IoT devices collect and sign real-time data using their private keys
3. **Smart Contract Validation** — data is validated against pre-established rules
4. **Consensus (POA)** — authorised nodes collectively agree on data validity
5. **Immutable Storage** — validated data permanently stored on blockchain
6. **Traceability** — every entry traceable back to its source via audit trails

---

## 📊 Evaluation

### Theoretical Evaluation
- ✅ Strong data authenticity via DIDs and digital signatures
- ✅ Automated validation reduces human bias and fraud risk
- ✅ Immutability ensures tamper-proof records
- ✅ POA consensus is energy-efficient and scalable

### Technical Evaluation
- ✅ Decentralised architecture eliminates single point of failure
- ✅ Real-time IoT integration enhances monitoring accuracy
- ✅ Modular design adaptable to different supply chain sectors

---

## 🛠️ Technologies Used

- **Solidity** — Smart contract development
- **Ethereum Blockchain** — Decentralised ledger
- **Proof of Authority (POA)** — Consensus mechanism
- **Decentralised Identity (DID)** — Cryptographic identity management
- **IoT Devices** — RFID tags, QR scanners, temperature sensors
- **Remix IDE** — Smart contract development and debugging

---

## 🔮 Future Scope

- 🤖 AI/ML integration for enhanced fraud detection
- 🔗 Cross-chain interoperability with other blockchain networks
- 📡 Advanced IoT devices for more precise tracking
- 🔒 Zero-knowledge proofs (ZKPs) for privacy preservation

---

## 👤 Author

**Rushikesh Temghare**
MSc Data Science & Artificial Intelligence
Bournemouth University

---

## 📄 License

This project is licensed under the MIT License.
