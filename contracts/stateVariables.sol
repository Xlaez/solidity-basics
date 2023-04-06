// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract StateVariable{
    string public myStr;
    string public myStr2;

    string public myStr3 = "default Text";
    bytes public defByte = "default byte";

    uint256[] public unsignedNumbers;

    constructor(string memory _myStr, string memory _myStr2){
        myStr = _myStr;
        myStr2 = _myStr2;
    }
}