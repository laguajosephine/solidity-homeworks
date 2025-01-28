//SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract BinaryToDecimal {
    function binaryToDecimal(string memory binaryStr) public pure returns (uint256) {
        // converting the string to bytes for the index
        bytes memory binaryBytes = bytes(binaryStr); 
        // fixing the variables
        uint256 decimal = 0;
        uint256 length = binaryBytes.length;

        // loop through the index of the initial string
        for (uint256 i = 0; i < length; i++) {
            // if the character is equal to 1, we compute 2 at the power of the corresponding index
            if (binaryBytes[i] == "1") {
                decimal += 2**(length - 1 - i);
            }
        }

        return decimal;
    }
}
