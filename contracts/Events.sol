// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Event{
    event Log(address indexed sender, string message);
    event Log2();

    function test()public{
        emit Log(msg.sender, "Hello App!");
        emit Log(msg.sender, "Hello EVM");
        emit Log2();    
    }
}