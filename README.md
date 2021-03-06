# Project 6B Supply Chain

## Truffle Version

>

    Truffle v5.0.21

>

## Node Version

>

    node v8.11.3

>

## web3 Version

>

    web3.js@0.20.6

>

## Contract Address

>

    0x0F703CCe03c49281E267f0d13f219e42BFEe7063

>

## Transaction ID

>

    0x03e1c409bafa41143fd066ecb246dbec7842a9227bff70ca4210ce81578bda39

>

## Requirement 1: Project write-up - UML

### Activity Diagram

![Activity Diagram](images/activity-diagram.png)

### Sequence Diagram

![Sequence Diagram](images/sequence-diagram.png)

### State Diagram

![State Diagram](images/state-diagram.png)

### Class Diagram (Data Model)

![Class Diagram](images/class-diagram.png)

## Requirement 2: Project write-up - Libraries

The following libraries were used:

- **truffle** _[5.0.21]_ - A development environment, testing framework and asset pipeline for blockchains using the Ethereum Virtual Machine (EVM).
- **web3.js** _[0.20.6]_ - A collection of libraries that allow you to interact with a local or remote ethereum node using HTTP, IPC or WebSocket.
- The Roles library that was part of the starter was very useful in managing the different roles - Farmer, Distributor, Retailer, Consumer.

## Requirement 3: Project write-up - IPFS

IPFS was NOT used to deploy the app.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

Please make sure you've already installed ganache-cli, Truffle and enabled MetaMask extension in your browser.

### Installing

A step by step series of examples that tell you have to get a development env running

Clone this repository:

```
git clone https://github.com/git-sid-go/udacity-3-supply-chain.git
```

Change directory to `project-6` folder and install all requisite npm packages (as listed in `package.json`):

```
cd project-6
npm install
```

Launch Ganache:

```
ganache-cli -m "spirit supply whale amount human item harsh scare congress discover talent hamster"
```

In a separate terminal window, Compile smart contracts:

```
truffle compile
```

This will create the smart contract artifacts in folder `build\contracts`.

Migrate smart contracts to the locally running blockchain, ganache-cli:

```
truffle migrate
```

Test smart contracts:

```
truffle test
```

All 10 tests should pass.

In a separate terminal window, launch the DApp:

```
npm run dev
```
