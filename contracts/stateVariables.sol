// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract StateVariable{
    string public myStr;
    string public myStr2;

    string public myStr3 = "default Text";
    bytes public defByte = "default byte";

    uint256[] public unsignedNumbers;
}