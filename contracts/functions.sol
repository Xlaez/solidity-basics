// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

// TYPES OF FUNCTIONS
// - Declaring functions
// - Non-declaring functions
// function function_name(paramter_list)scope returns(return_type){}

contract NewFunction{
    uint256 greet;

    // get data with the help of function
    function getGreeting() public view returns(uint256){
        return greet;
    }

    function updateData(uint256 _greet) public {
        greet = _greet;
    }

    function add(uint256 _a, uint256 _b) public returns(uint256){
        uint256 newNum = _a+_b;
        greet = newNum;
        return greet;
    }    
}    
