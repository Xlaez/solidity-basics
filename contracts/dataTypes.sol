// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract DataTypes{

    // bool public isMale;
    // bool public isHuman = true;

    // uint8 num; // ranges from 2**8 - 1 //255
    // uint16 num2; // ranges from 2 ** 16 -1 // 65535

    // uint8 public u8 = 1;
    // uint8 public u16 = 212;

    // HOW TO DETERMINE MIN AND MAX INTEGERS

    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    //---fixed size byte array
    //--dynamix type byte array
    bytes1 public a = "A";
    bytes1 public b;

    //ADDRESS TYPES
    address public key;
    address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    //DEFAULTS VALUE
    bool public defaultBool; //false
    uint public number; // 0
    int public num; // 0
    address public addr2; // 0x000000000

}