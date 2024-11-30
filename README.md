# Project: Degen Token (ERC-20)

This project is an assessment in the Metacrafters Avalanche Course - ETH + AVAX PROOF: Intermediate EVM Course `Module: Building on Avalanche - ETH + AVAX`

This is a Solidity smart contract for an ERC20 token called **Degen (DGN)** and was deployed on the Avalanche Fuji C-Chain Testnet.

## Getting Started

### Requirements
* [Metamask Wallet](https://metamask.io/download/)
* [Remix IDE](https://remix.ethereum.org/)
* [Snowtrace Testnet](https://testnet.snowtrace.io/)

### Setup
* Create a Metamask wallet account.
* Claim a Fuji (C-Chain) AVAX token from the [Avalanche Testnet Faucet](https://core.app/tools/testnet-faucet/?subnet=c&token=c) for the Metamask address.
  * For the coupon code, please proceed to the [Avalanche](https://guild.xyz/avalanche) website for more details.
* Go to Snowtrace Testnet and sign in using the Metamask wallet.

### Deployment of the Contract
* Proceed to [Remix](https://remix.ethereum.org/).
* Create a new file and save it as `DegenToken.sol`. Copy the [code]() from this repository and proceed to paste it to the newly created file.
* Select `Deploy & run transactions` tab and change the **ENVIRONMENT** to `Injected Provider - Metamask`.
* Copy and **ACCOUNT** address in Remix and paste it on the input field beside the `Deploy` to mark it as the contract owner and proceed to click `Deploy`.
* To view the transactions of the smart contract on [Snowtrace Testnet](https://testnet.snowtrace.io/), copy the contract address available and proceed to search it on the site.

### Contract Functionalities

`mint`: Only the contract owner has the permission to mint tokens to any accounts.

`burn`: Players can destroy their own tokens.

`transfer`: Players can transfer their tokens to another address.

`checkBalance`: Players can check their token balance.

`showStore`: This will display the ID, Model, and Cost of the Rackets available in the store.

`redeem`: Players will redeem tokens for a racket by entering the ID of a racket.

`getMyRackets`: Players will be able to see the ID of the racket that they possess.

## Author/s

Dana Rivera

## License

This project is licensed under the MIT License - see LICENSE for details
