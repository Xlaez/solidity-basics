// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract LocalVariables{
    uint256 public number;

    //FUNCTION FOR LOCAL VARAIBLE

    function local() public returns(uint256){
        // VARAIBLES define inside the function scope
        // NOT stored on the blockchain

        uint256 i = 345;
        number = 1;
        return  number;
    }
}