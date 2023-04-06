// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract NFTCount{
    uint public numberOfNFT;

    // CHECK total number of NFT
    function checkTotalNFT()public view returns(uint256){
        return numberOfNFT;
    }

    // This function would increment the NFT number
    function addNFT()public{
        numberOfNFT += 1;
    }

    // This function would decrement the NFT number
    function decreaseNFT()public{
        numberOfNFT -= 1;
    }
}