# Welcome to BlockChain A-Z eBook Vol 3
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

[**Mainnet vs Testnet**](#mainnet-vs-testnet)

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

like this 
```javascript
[1] PUSH1 0x80
[3] PUSH1 0x40
[4] MSTORE
[5] CALLVALUE
[6] DUP1
[7] ISZERO
[10] PUSH2 0x0010
[11] JUMPI
[13] PUSH1 0x00
[14] DUP1
[15] REVERT
[16] JUMPDEST
[17] POP
[20] PUSH2 0x0150
[21] DUP1
[24] PUSH2 0x0020
[26] PUSH1 0x00
[27] CODECOPY
[29] PUSH1 0x00
[30] RETURN
[31] 'fe'(Unknown Opcode)
[33] PUSH1 0x80
[35] PUSH1 0x40
[36] MSTORE
[37] CALLVALUE
[38] DUP1
[39] ISZERO
[42] PUSH2 0x0010
[43] JUMPI
[45] PUSH1 0x00
[46] DUP1
[47] REVERT
[48] JUMPDEST
[49] POP
[51] PUSH1 0x04
[52] CALLDATASIZE
[53] LT
[56] PUSH2 0x0036
[57] JUMPI
[59] PUSH1 0x00
[60] CALLDATALOAD
[62] PUSH1 0xe0
[63] SHR
[64] DUP1
[69] PUSH4 0x2e64cec1
[70] EQ
[73] PUSH2 0x003b
[74] JUMPI
[75] DUP1
[80] PUSH4 0x6057361d
[81] EQ
[84] PUSH2 0x0059
[85] JUMPI
[86] JUMPDEST
[88] PUSH1 0x00
[89] DUP1
[90] REVERT
[91] JUMPDEST
[94] PUSH2 0x0043
[97] PUSH2 0x0075
[98] JUMP
[99] JUMPDEST
[101] PUSH1 0x40
[102] MLOAD
[105] PUSH2 0x0050
[106] SWAP2
[107] SWAP1
[110] PUSH2 0x00d9
[111] JUMP
[112] JUMPDEST
[114] PUSH1 0x40
[115] MLOAD
[116] DUP1
[117] SWAP2
[118] SUB
[119] SWAP1
[120] RETURN
[121] JUMPDEST
[124] PUSH2 0x0073
[126] PUSH1 0x04
[127] DUP1
[128] CALLDATASIZE
[129] SUB
[130] DUP2
[131] ADD
[132] SWAP1
[135] PUSH2 0x006e
[136] SWAP2
[137] SWAP1
[140] PUSH2 0x009d
[141] JUMP
[142] JUMPDEST
[145] PUSH2 0x007e
[146] JUMP
[147] JUMPDEST
[148] STOP
[149] JUMPDEST
[151] PUSH1 0x00
[152] DUP1
[153] SLOAD
[154] SWAP1
[155] POP
[156] SWAP1
[157] JUMP
[158] JUMPDEST
[159] DUP1
[161] PUSH1 0x00
[162] DUP2
[163] SWAP1
[164] SSTORE
[165] POP
[166] POP
[167] JUMP
[168] JUMPDEST
[170] PUSH1 0x00
[171] DUP2
[172] CALLDATALOAD
[173] SWAP1
[174] POP
[177] PUSH2 0x0097
[178] DUP2
[181] PUSH2 0x0103
[182] JUMP
[183] JUMPDEST
[184] SWAP3
[185] SWAP2
[186] POP
[187] POP
[188] JUMP
[189] JUMPDEST
[191] PUSH1 0x00
[193] PUSH1 0x20
[194] DUP3
[195] DUP5
[196] SUB
[197] SLT
[198] ISZERO
[201] PUSH2 0x00b3
[202] JUMPI
[205] PUSH2 0x00b2
[208] PUSH2 0x00fe
[209] JUMP
[210] JUMPDEST
[211] JUMPDEST
[213] PUSH1 0x00
[216] PUSH2 0x00c1
[217] DUP5
[218] DUP3
[219] DUP6
[220] ADD
[223] PUSH2 0x0088
[224] JUMP
[225] JUMPDEST
[226] SWAP2
[227] POP
[228] POP
[229] SWAP3
[230] SWAP2
[231] POP
[232] POP
[233] JUMP
[234] JUMPDEST
[237] PUSH2 0x00d3
[238] DUP2
[241] PUSH2 0x00f4
[242] JUMP
[243] JUMPDEST
[244] DUP3
[245] MSTORE
[246] POP
[247] POP
[248] JUMP
[249] JUMPDEST
[251] PUSH1 0x00
[253] PUSH1 0x20
[254] DUP3
[255] ADD
[256] SWAP1
[257] POP
[260] PUSH2 0x00ee
[262] PUSH1 0x00
[263] DUP4
[264] ADD
[265] DUP5
[268] PUSH2 0x00ca
[269] JUMP
[270] JUMPDEST
[271] SWAP3
[272] SWAP2
[273] POP
[274] POP
[275] JUMP
[276] JUMPDEST
[278] PUSH1 0x00
[279] DUP2
[280] SWAP1
[281] POP
[282] SWAP2
[283] SWAP1
[284] POP
[285] JUMP
[286] JUMPDEST
[288] PUSH1 0x00
[289] DUP1
[290] REVERT
[291] JUMPDEST
[294] PUSH2 0x010c
[295] DUP2
[298] PUSH2 0x00f4
[299] JUMP
[300] JUMPDEST
[301] DUP2
[302] EQ
[305] PUSH2 0x0117
[306] JUMPI
[308] PUSH1 0x00
[309] DUP1
[310] REVERT
[311] JUMPDEST
[312] POP
[313] JUMP
[314] 'fe'(Unknown Opcode)
[315] LOG2
[321] PUSH5 0x6970667358
[322] '22'(Unknown Opcode)
[323] SLT
[324] SHA3
[325] BLOCKHASH
[326] '4e'(Unknown Opcode)
[327] CALLDATACOPY
[328] DELEGATECALL
[329] DUP8
[330] 'a8'(Unknown Opcode)
[331] SWAP11
[332] SWAP4
[333] '2d'(Unknown Opcode)
[334] 'ca'(Unknown Opcode)
[335] '5e'(Unknown Opcode)
[360] PUSH24 0xfaaf6ca2de3b991f93d230604b1b8daaef64766264736f6c
[365] PUSH4 0x43000807
[366] STOP
[367] CALLER
```

### ABI Example 

<p align="center">
        <img src="https://github.com/Subham-Maity/solidity-tutorial/blob/master/Image(ignore)/ss7.png?raw=true"/>
        </p>

Image ABI
```sol
[
	{
		"inputs": [],
		"name": "retrieve",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "num",
				"type": "uint256"
			}
		],
		"name": "store",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	}
]
```

You can find every OpCode here

https://github.com/Subham-Maity/evm-opcodes

### Node

Some important points to note-:

• Contract bytecode is public in readable form.

• Contract doesn't have to be public.

• Bytecode is immutable.

• ABI act as a bridge between applications and smart contract.

• ABI and Bytecode cannot be generated without source code.


**Q: Solidity code get split into ____ and ____ after compilation.**
- [ ] 1. Opcode and Bytecode
- [ ] 2. ABI and Bytecode
- [ ] 3. Opcode and ABI

Answer
```javascript
2. ABI and Bytecode
```


# Mainnet vs Testnet 

## Mainnet - 
Mainnet is best described as a blockchain that has been fully tested, developed, deployed, and is running its own network with its own technology and protocol. This means that all transactions are actively being broadcasted, verified, and recorded on a digital public ledger (blockchain).

The tokens on a mainnet have monetary value, whereas the tokens on a testnet do not.

## Testnet - 
In blockchain technology, a testnet is an instance of a blockchain powered by the same or a newer version of the underlying software, to be used for testing and experimentation without risk to real funds or the main chain.

A testnet only exists as a working prototype for a blockchain project, while a mainnet is a completely developed blockchain platform for users to send and receive cryptocurrency transactions (or any other kind of digital data that is recorded on a distributed ledger).



| **Mainnet**                                | **Testnet**                                 |
|--------------------------------------------|---------------------------------------------|
| Used for actual transactions with value.   | Used for testing smart contracts and dapps. |
| Mainnet's network id is 1.                 | Testnet network id can 3,4 or 42.           |
| Example - Ethereum mainnet                 | Example – Rinkeby , Ropsten etc.            |



### Learn More from [here](https://masterthecrypto.com/mainnet-vs-testnet-whats-the-difference/)

## Transaction Websites 

### Mainnet Transactions are [here](https://etherscan.io/)
### Testnet Transactions are [here](https://rinkeby.etherscan.io/)