// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Sub Contract to be deployed through main contract
import "contracts/SimpleStorage.sol";

contract StorageFactory {
    
    // Type - Visibility - Variable name // Creating a global variable
    // We are creating a new dynamic array called "simpleStorage" that can be turned into filled with contracts
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        // we are taking the array and filling it with the details of the SimpleStorage contracts
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        // Address
        // ABI - Application Binary Interface
    } 

}