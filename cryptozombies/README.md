# Lesson 1

## How Zombie DNA Works

The zombie DNA is a 16 digit integer

3827382190284736

Different parts of this number will map to different traits, like head type, eyes, shirt, etc.

The first two digits are 38, and since we only have 7 head types, we do:

38 % 7 = 3 + 1

Meaning this zombie will have the 4th type of head

# Lesson 2

make the app more game-like, making it multi-player, and other ways to create zombies

## Adresses

Ethereum blockchain is made up of accounts, and each accounts as an address.

A unique identifier

## Mappings

mappings are a key-value store for storing and looking up data.

## msg.sender

refers to the address of the person (or smart contract) who called the current function

In Solidity, function execution always needs to start with an external caller.

A contract will just sit on the Blockchain until someone calls one of its functions.

hence, there is always a msg.sender

## Storage vs Memory

### Storage

refers to variables stored permanently on the blockchain

### Memory

variables are temporary, and are erased between external function calls in the contract
