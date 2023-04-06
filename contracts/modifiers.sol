// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

// FUNCTION MODIFIER

// modifiers are functions that can be run before and after function calls
// they are generally used for three reasons
// --- restrict access, validate inputs, guard against reentrancy hack

contract FuncModifyer{
    address public owner;
    uint256 public x = 10;
    bool public locked;

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender == owner, "Not owner");
        _;
    }

    modifier validateAddr(address _addr){
        require(_addr != address(0), "Not a valid address");
        _;
    }

    function changeOwner(address _newOner) public onlyOwner validateAddr(_newOner){
        owner = _newOner;
    }

    modifier noReentrancy(){
        require(!locked, "No reentrancy");
        locked = true;
        _;
        locked = false;
    }

    function decrement(uint256 i)public noReentrancy{
        x -=1;
        if(i > 1){
            decrement(i-1);
        }
    }
}