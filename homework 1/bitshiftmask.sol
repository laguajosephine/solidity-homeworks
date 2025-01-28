// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract BitShiftedMask {
    function GrabBit(uint8 input) public pure returns (uint[] memory) {
        // specify variables
        uint[] memory result = new uint[](8); // Array to store the result for 8 bits
        uint8 mask = 1; 

        // loop through all 8 bits of the uint8 input
        for (uint8 i = 0; i < 8; i++) {
            uint8 grabbedBit = input & mask;
            if (grabbedBit != 0){
                result[i] = 2**i;
            } else {
                result[i] = 0;
            }
            // shift the mask to the left
            mask <<= 1;
        }
        // return the array containing the extracted bit values
        return result;
    }
}