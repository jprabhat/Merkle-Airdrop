# Merkle Airdrop Project

Welcome to the Merkle Airdrop Project! This repository contains Solidity smart contracts and supporting scripts for implementing efficient and secure airdrop mechanisms on the Ethereum blockchain. Leveraging Merkle Trees, cryptographic signatures, and Foundry for testing and deployment, this project is ideal for developers exploring blockchain-based airdrop solutions.

## Key Features
- **Efficient Airdrops**: Utilize Merkle Trees to verify data inclusion in a large dataset without iterating through all elements.
- **Cryptographic Signatures**: Ensure transaction authenticity and integrity using `vm.sign`, `cast wallet sign`, and OpenZeppelin's `ECDSA` library.
- **Multi-Platform Deployment**: Scripts for deploying and interacting with smart contracts on platforms like Anvil, ZKsync local node, and ZKsync Sepolia.
- **Comprehensive Testing**: Includes unit tests to validate contract functionality and security mechanisms.

## Project Structure
- **Contracts**: Solidity files for implementing Merkle Tree-based verification, cryptographic signatures, and airdrop logic.
- **Scripts**: Deployment and interaction scripts for Ethereum testnets and local environments.
- **Tests**: Unit tests and invariant checks to ensure contract reliability and efficiency.

## Getting Started

### Prerequisites
- **Foundry**: Ensure Foundry is installed. If not, install it by running:
   ```bash
   curl -L https://foundry.paradigm.xyz | bash
   foundryup

### Installation
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/jprabhat/Merkle-Airdrop.git
   cd Merkle-Airdrop

2. **Run Project**:
    ```bash
    make install
    make build
    make test
    
## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
