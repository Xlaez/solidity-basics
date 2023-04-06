// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

// GLOBAL VARIABLES
contract GlobalVariables{
    address public owner;
    address public MyBlockHash;
    uint256 public difficulty;
    uint256 public gasLimit;
    uint256 public number;
    uint256 public timestamp;
    uint256 public value;
    uint256 public nowOn;
    address public origin;
    uint256 public gasPrice;
    byte public callData;
    bytes4 public Firstfour;

    constructor(){
        // NOTE: msg.sender is the account address of the executer of the function
        owner = msg.sender;
        MyBlockHash = block.coinbase;
        difficulty = block.difficulty;
        gasLimit = block.gaslimit;
        number = block.number;
        timestamp = block.timestamp;
        gasPrice = tx.gasprice;
        origin = tx.origin;
        callData = msg.data;
        Firstfour = msg.sig; 
    }
}