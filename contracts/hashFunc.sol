// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract HashFunc{
    function hash(string memory _text, uint _num, address _addr)public pure returns (bytes32){
        return keccak256(abi.encodePacked(_text, _num, _addr));
    }

    function collision(string memory _text, string memory _anotherText)public pure returns(bytes32){
        // encodePacked(AAA, BBB) -> AAABBB
        return keccak256(abi.encodePacked(_text, _anotherText));
    }
}