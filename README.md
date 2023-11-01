# myToken

## Description

`myToken` is an ERC20 token with additional features like burning and minting. It also includes an ownership structure where only the owner can perform certain operations.

## Features

- Minting new tokens.
- Burning existing tokens.
- Transferring tokens between addresses.
- Ownership control.

## Getting Started

### Prerequisites

- Node.js and npm installed.
- Truffle (a development framework for Ethereum) installed.

## Contract Details

- Name: myToken
- Symbol: MYT
- Initial Supply: 1000000
- Decimals: 18

## Functions

- `mint(address account, uint256 amount)` - Mint new tokens.
- `burnFrom(address account, uint256 amount)` - Burn existing tokens.
- `transfer(address recipient, uint256 amount)` - Transfer tokens to another address.

## Ownership

The contract has an ownership structure where only the owner (deployer) can mint new tokens and burn existing ones.
