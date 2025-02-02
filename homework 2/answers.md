# Homework 2
## Exercise 1

Here is the computation of the function selector: 

Function Selector:  bytes4(keccak256(bytes(function_signature))= 0xabcdef12 
uint[] pointer:     0x0000000000000000000000000000000000000000000000000000000000000020  
bool:               0x0000000000000000000000000000000000000000000000000000000000000001  
length of array:    0x0000000000000000000000000000000000000000000000000000000000000002  
1993:               0x00000000000000000000000000000000000000000000000000000000000007c9  
1994:               0x00000000000000000000000000000000000000000000000000000000000007ca

This results in 4 + 32 + 32 + 32 + 2*32 = 164 bytes.

The encodePacked function removes zero-padding and memory offsets, so we get a compact and thus shorter representation, containing the function selector, "7c9" for 1993, "7ca" for 1994 and "01" for true: 0xabcdef127c97ca01.

## Exercise 2
### Part A

The Coinflip code is available on my repository "solidity-coinflip". 
https://github.com/laguajosephine/solidity_coinflip.git

### Part B

The Coinflip code is available on my repository "solidity-coinflip". 
https://github.com/laguajosephine/solidity_upgradable_coinflip.git

### Part C

The Diamond Pattern (EIP-2535) is an upgradeability mechanism that allows a smart contract to delegate function calls to multiple logic contracts, called Facets. Instead of relying on a single implementation contract like in the Transparent Proxy or UUPS models, the Diamond Pattern enables modular upgrades by adding, replacing, or removing Facets dynamically.

In this model, a Diamond Proxy manages function calls and routes them to the appropriate Facet. A special function called FacetCut allows developers to modify the contract’s functionality without redeploying the entire contract. Additionally, the Loupe interface provides visibility into available Facets and functions.

Compared to the Transparent Proxy and UUPS models, the Diamond Pattern offers greater flexibility and scalability. While Transparent and UUPS proxies require upgrading an entire implementation contract, the Diamond Pattern allows selective modifications by upgrading only specific Facets. This reduces gas costs and makes large contracts more manageable.

However, the Diamond Pattern introduces additional complexity, as it requires a more sophisticated function-routing system and careful management of Facet upgrades. Security risks also increase, as improper Facet management can lead to inconsistencies or unauthorized modifications. Despite these challenges, it is a powerful approach for contracts that require frequent or granular upgrades.

## Exercise 3
### Part A
Now, userInput requires an adress parameter to send DAU rewards.

When I deployed the contracts, here is the output I had:
  DauphineToken deployed at: 0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496
  Coinflip contract deployed at: 0x34A1D3fff3958843C43aD80F30b94c510645C316
  CoinflipV2 contract deployed at: 0x90193C961A926261B756D1E5bb255e67ff9498A1

