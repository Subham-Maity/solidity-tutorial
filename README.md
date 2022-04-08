# BlockChain A-Z Part 3
## You Can Follow My Own All Research About Blockchain If You Are A Complete Beginner

# Writer Intro
I am **Subham Maity**
I love Programming. One of the aims I had when I started ```CodeXam``` was to make learning programming easy.

Actually, I was working on this project then I did research and made many projects, and then I thought why not make a detailed documentary on it then I started making the documentary which is completely free .
## Help us improve this guide - **Fork, Pull Requests, Shares and Likes are recommended**!

## Chapter List
*******
* [**Solidity Fundamentals**](#solidity-fundamentals)


[**What is Solidity?**](#what-is-solidity)

[**Remix IDE**](#remix-ide)

[**Solidity Compilation Process**](#solidity-compilation-process)


*******
# Solidity Fundamentals

## What is Solidity? 
```javascript
1. Solidity is an object-oriented programming language for implementing smart
contracts.

2. High-level statically typed programming language.

3. Case-sensitive.

4. With Solidity, you can create contracts for uses such as voting, crowdfunding,
blind auctions, and multi-signature wallets.
```
### note
```javascript
You should follow established -
development best-practices when writing your smart contracts.
```
# Remix Ide 
You can use it as an online and offline both type of version 

#### for offline download [here](https://github.com/ethereum/remix-desktop/releases)

#### for online visit [here](https://remix.ethereum.org/)

### Introduction to Remix for beginners [here](https://www.youtube.com/watch?v=WmeWbo7wzGI&t=385s&ab_channel=EatTheBlocks) [Guide Video]

# Solidity Compilation Process 

<p align="center">
        <img src="https://github.com/Subham-Maity/solidity-tutorial/blob/master/Image(ignore)/compilation.png?raw=true"/>
        </p>


### ABI
```javascript
The Contract Application Binary Interface (ABI) 
is the standard way to interact with contracts 
in the Ethereum ecosystem, both from outside the 
blockchain and for contract-to-contract interaction. 
Data is encoded according to its type, 
as described in this specification.
```
#### ABI is a bridge between an application and sol file ( to communicate source.sol file ) without ABI of our solidity file communication is impossible 

### Byte Code

Smart contract code is usually written in a high level programming language such as Solidity. This code gets compiled to something called the EVM bytecode which gets deployed to the Ethereum blockchain. This is very similar to a programming language like Java where the code gets converted to JVM Byte code.


### Example 
<p align="center">
        <img src="https://github.com/Subham-Maity/solidity-tutorial/blob/master/Image(ignore)/ss1.png?raw=true"/>
        </p>

<p align="center">
        <img src="https://github.com/Subham-Maity/solidity-tutorial/blob/master/Image(ignore)/ss2.png?raw=true"/>
        </p>

<p align="center">
        <img src="https://github.com/Subham-Maity/solidity-tutorial/blob/master/Image(ignore)/ss3.png?raw=true"/>
        </p>

<p align="center">
        <img src="https://github.com/Subham-Maity/solidity-tutorial/blob/master/Image(ignore)/ss4.png?raw=true"/>
        </p>

**Code in the Image**
```sol
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 */
contract Storage {

    uint256 number;

    /**
     * @dev Store value in variable
     * @param num value to store
     */
    function store(uint256 num) public {
        number = num;
    }

    /**
     * @dev Return value 
     * @return value of 'number'
     */
    function retrieve() public view returns (uint256){
        return number;
    }
}
```

**Byte Code**
```javascript
{
	"functionDebugData": {},
	"generatedSources": [],
	"linkReferences": {},
	"object": "608060405234801561001057600080fd5b50610150806100206000396000f3fe608060405234801561001057600080fd5b50600436106100365760003560e01c80632e64cec11461003b5780636057361d14610059575b600080fd5b610043610075565b60405161005091906100d9565b60405180910390f35b610073600480360381019061006e919061009d565b61007e565b005b60008054905090565b8060008190555050565b60008135905061009781610103565b92915050565b6000602082840312156100b3576100b26100fe565b5b60006100c184828501610088565b91505092915050565b6100d3816100f4565b82525050565b60006020820190506100ee60008301846100ca565b92915050565b6000819050919050565b600080fd5b61010c816100f4565b811461011757600080fd5b5056fea2646970667358221220404e37f487a89a932dca5e77faaf6ca2de3b991f93d230604b1b8daaef64766264736f6c63430008070033",
	"opcodes": "PUSH1 0x80 PUSH1 0x40 MSTORE CALLVALUE DUP1 ISZERO PUSH2 0x10 JUMPI PUSH1 0x0 DUP1 REVERT JUMPDEST POP PUSH2 0x150 DUP1 PUSH2 0x20 PUSH1 0x0 CODECOPY PUSH1 0x0 RETURN INVALID PUSH1 0x80 PUSH1 0x40 MSTORE CALLVALUE DUP1 ISZERO PUSH2 0x10 JUMPI PUSH1 0x0 DUP1 REVERT JUMPDEST POP PUSH1 0x4 CALLDATASIZE LT PUSH2 0x36 JUMPI PUSH1 0x0 CALLDATALOAD PUSH1 0xE0 SHR DUP1 PUSH4 0x2E64CEC1 EQ PUSH2 0x3B JUMPI DUP1 PUSH4 0x6057361D EQ PUSH2 0x59 JUMPI JUMPDEST PUSH1 0x0 DUP1 REVERT JUMPDEST PUSH2 0x43 PUSH2 0x75 JUMP JUMPDEST PUSH1 0x40 MLOAD PUSH2 0x50 SWAP2 SWAP1 PUSH2 0xD9 JUMP JUMPDEST PUSH1 0x40 MLOAD DUP1 SWAP2 SUB SWAP1 RETURN JUMPDEST PUSH2 0x73 PUSH1 0x4 DUP1 CALLDATASIZE SUB DUP2 ADD SWAP1 PUSH2 0x6E SWAP2 SWAP1 PUSH2 0x9D JUMP JUMPDEST PUSH2 0x7E JUMP JUMPDEST STOP JUMPDEST PUSH1 0x0 DUP1 SLOAD SWAP1 POP SWAP1 JUMP JUMPDEST DUP1 PUSH1 0x0 DUP2 SWAP1 SSTORE POP POP JUMP JUMPDEST PUSH1 0x0 DUP2 CALLDATALOAD SWAP1 POP PUSH2 0x97 DUP2 PUSH2 0x103 JUMP JUMPDEST SWAP3 SWAP2 POP POP JUMP JUMPDEST PUSH1 0x0 PUSH1 0x20 DUP3 DUP5 SUB SLT ISZERO PUSH2 0xB3 JUMPI PUSH2 0xB2 PUSH2 0xFE JUMP JUMPDEST JUMPDEST PUSH1 0x0 PUSH2 0xC1 DUP5 DUP3 DUP6 ADD PUSH2 0x88 JUMP JUMPDEST SWAP2 POP POP SWAP3 SWAP2 POP POP JUMP JUMPDEST PUSH2 0xD3 DUP2 PUSH2 0xF4 JUMP JUMPDEST DUP3 MSTORE POP POP JUMP JUMPDEST PUSH1 0x0 PUSH1 0x20 DUP3 ADD SWAP1 POP PUSH2 0xEE PUSH1 0x0 DUP4 ADD DUP5 PUSH2 0xCA JUMP JUMPDEST SWAP3 SWAP2 POP POP JUMP JUMPDEST PUSH1 0x0 DUP2 SWAP1 POP SWAP2 SWAP1 POP JUMP JUMPDEST PUSH1 0x0 DUP1 REVERT JUMPDEST PUSH2 0x10C DUP2 PUSH2 0xF4 JUMP JUMPDEST DUP2 EQ PUSH2 0x117 JUMPI PUSH1 0x0 DUP1 REVERT JUMPDEST POP JUMP INVALID LOG2 PUSH5 0x6970667358 0x22 SLT KECCAK256 BLOCKHASH 0x4E CALLDATACOPY DELEGATECALL DUP8 0xA8 SWAP11 SWAP4 0x2D 0xCA 0x5E PUSH24 0xFAAF6CA2DE3B991F93D230604B1B8DAAEF64766264736F6C PUSH4 0x43000807 STOP CALLER ",
	"sourceMap": "141:356:0:-:0;;;;;;;;;;;;;;;;;;;"
}
```
### Understand bytecode 

#### When we compile the solidity code using the sol compiler, it will translate our code into bytecode, something only the EVM can understand.
```javascript
"object": "608060405234801561001057600080fd5b50610150806100206000396000f3fe608060405234801561001057600080fd5b50600436106100365760003560e01c80632e64cec11461003b5780636057361d14610059575b600080fd5b610043610075565b60405161005091906100d9565b60405180910390f35b610073600480360381019061006e919061009d565b61007e565b005b60008054905090565b8060008190555050565b60008135905061009781610103565b92915050565b6000602082840312156100b3576100b26100fe565b5b60006100c184828501610088565b91505092915050565b6100d3816100f4565b82525050565b60006020820190506100ee60008301846100ca565b92915050565b6000819050919050565b600080fd5b61010c816100f4565b811461011757600080fd5b5056fea2646970667358221220404e37f487a89a932dca5e77faaf6ca2de3b991f93d230604b1b8daaef64766264736f6c63430008070033",
```
These long values are hexadecimal representation of the final contract, also known as bytecode. Under the “Web3 Deploy” section of the remix browser
In short, this means that when we deploy the contract, we need to pass the compiled hexadecimal code as data, and the recommended gas is 4700000.

Anything that starts with “0x” indicates that the value is in hexadecimal format. The “0x” before hexadecimal is not mandatory because EVM treats any value as hexadecimal.

### Understand opcode

#### Opcodes are low-level readable instructions of programs. All opcodes have corresponding hexadecimal values, for example, “mstore” is “0x52”, and “sstore” is “0x55” wait.

```javascript
"opcodes": "PUSH1 0x80 PUSH1 0x40 MSTORE CALLVALUE DUP1 ISZERO PUSH2 0x10 JUMPI PUSH1 0x0 DUP1 REVERT JUMPDEST POP PUSH2 0x150 DUP1 PUSH2 0x20 PUSH1 0x0 CODECOPY PUSH1 0x0 RETURN INVALID PUSH1 0x80 PUSH1 0x40 MSTORE CALLVALUE DUP1 ISZERO PUSH2 0x10 JUMPI PUSH1 0x0 DUP1 REVERT JUMPDEST POP PUSH1 0x4 CALLDATASIZE LT PUSH2 0x36 JUMPI PUSH1 0x0 CALLDATALOAD PUSH1 0xE0 SHR DUP1 PUSH4 0x2E64CEC1 EQ PUSH2 0x3B JUMPI DUP1 PUSH4 0x6057361D EQ PUSH2 0x59 JUMPI JUMPDEST PUSH1 0x0 DUP1 REVERT JUMPDEST PUSH2 0x43 PUSH2 0x75 JUMP JUMPDEST PUSH1 0x40 MLOAD PUSH2 0x50 SWAP2 SWAP1 PUSH2 0xD9 JUMP JUMPDEST PUSH1 0x40 MLOAD DUP1 SWAP2 SUB SWAP1 RETURN JUMPDEST PUSH2 0x73 PUSH1 0x4 DUP1 CALLDATASIZE SUB DUP2 ADD SWAP1 PUSH2 0x6E SWAP2 SWAP1 PUSH2 0x9D JUMP JUMPDEST PUSH2 0x7E JUMP JUMPDEST STOP JUMPDEST PUSH1 0x0 DUP1 SLOAD SWAP1 POP SWAP1 JUMP JUMPDEST DUP1 PUSH1 0x0 DUP2 SWAP1 SSTORE POP POP JUMP JUMPDEST PUSH1 0x0 DUP2 CALLDATALOAD SWAP1 POP PUSH2 0x97 DUP2 PUSH2 0x103 JUMP JUMPDEST SWAP3 SWAP2 POP POP JUMP JUMPDEST PUSH1 0x0 PUSH1 0x20 DUP3 DUP5 SUB SLT ISZERO PUSH2 0xB3 JUMPI PUSH2 0xB2 PUSH2 0xFE JUMP JUMPDEST JUMPDEST PUSH1 0x0 PUSH2 0xC1 DUP5 DUP3 DUP6 ADD PUSH2 0x88 JUMP JUMPDEST SWAP2 POP POP SWAP3 SWAP2 POP POP JUMP JUMPDEST PUSH2 0xD3 DUP2 PUSH2 0xF4 JUMP JUMPDEST DUP3 MSTORE POP POP JUMP JUMPDEST PUSH1 0x0 PUSH1 0x20 DUP3 ADD SWAP1 POP PUSH2 0xEE PUSH1 0x0 DUP4 ADD DUP5 PUSH2 0xCA JUMP JUMPDEST SWAP3 SWAP2 POP POP JUMP JUMPDEST PUSH1 0x0 DUP2 SWAP1 POP SWAP2 SWAP1 POP JUMP JUMPDEST PUSH1 0x0 DUP1 REVERT JUMPDEST PUSH2 0x10C DUP2 PUSH2 0xF4 JUMP JUMPDEST DUP2 EQ PUSH2 0x117 JUMPI PUSH1 0x0 DUP1 REVERT JUMPDEST POP JUMP INVALID LOG2 PUSH5 0x6970667358 0x22 SLT KECCAK256 BLOCKHASH 0x4E CALLDATACOPY DELEGATECALL DUP8 0xA8 SWAP11 SWAP4 0x2D 0xCA 0x5E PUSH24 0xFAAF6CA2DE3B991F93D230604B1B8DAAEF64766264736F6C PUSH4 0x43000807 STOP CALLER ",
```
### Bytecode to Opcode
Opcode converted by the help of Bytecode
#### 1. Just Copy Bytecode 
```javascript
608060405234801561001057600080fd5b50610150806100206000396000f3fe608060405234801561001057600080fd5b50600436106100365760003560e01c80632e64cec11461003b5780636057361d14610059575b600080fd5b610043610075565b60405161005091906100d9565b60405180910390f35b610073600480360381019061006e919061009d565b61007e565b005b60008054905090565b8060008190555050565b60008135905061009781610103565b92915050565b6000602082840312156100b3576100b26100fe565b5b60006100c184828501610088565b91505092915050565b6100d3816100f4565b82525050565b60006020820190506100ee60008301846100ca565b92915050565b6000819050919050565b600080fd5b61010c816100f4565b811461011757600080fd5b5056fea2646970667358221220404e37f487a89a932dca5e77faaf6ca2de3b991f93d230604b1b8daaef64766264736f6c63430008070033
```
#### 2. Now go to this website 

https://etherscan.io/opcode-tool

now add 0x before the number like this
<p align="center">
        <img src="https://github.com/Subham-Maity/solidity-tutorial/blob/master/Image(ignore)/ss5.png?raw=true"/>
        </p>

```javascript
Ox608060405234801561001057600080fd5b50610150806100206000396000f3fe608060405234801561001057600080fd5b50600436106100365760003560e01c80632e64cec11461003b5780636057361d14610059575b600080fd5b610043610075565b60405161005091906100d9565b60405180910390f35b610073600480360381019061006e919061009d565b61007e565b005b60008054905090565b8060008190555050565b60008135905061009781610103565b92915050565b6000602082840312156100b3576100b26100fe565b5b60006100c184828501610088565b91505092915050565b6100d3816100f4565b82525050565b60006020820190506100ee60008301846100ca565b92915050565b6000819050919050565b600080fd5b61010c816100f4565b811461011757600080fd5b5056fea2646970667358221220404e37f487a89a932dca5e77faaf6ca2de3b991f93d230604b1b8daaef64766264736f6c63430008070033
```

now you can see our opCode
<p align="center">
        <img src="https://github.com/Subham-Maity/solidity-tutorial/blob/master/Image(ignore)/ss6.png?raw=true"/>
        </p>