// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

// THREE types- storgae, memory and calldata

// Data defined on the storage would be stored on the blockchain
// Data defined on the memory would exist within the functions
// Data defined as a calldata would be an argument

contract DataLocations{
    uint[] public arr;
    mapping(uint => address)map;
    struct MyStruct{
        uint foo;
    }
    mapping (uint => MyStruct) myStructs;

}