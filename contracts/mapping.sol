// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

// mapping(keyType => valueType)

contract Mapping{
    // mapping from address to uint

    mapping(address => uint) public myMap;

    function get(address _addr)public view returns (uint){
        // Mapping always returns a value
        return myMap[_addr];
    }

    function set(address _addr, uint _id)public{
        // Update the value at this address
        myMap[_addr] = _id;
    } 

    function remove(address _addr) public {
        delete  myMap[_addr];
    }
}

contract Nestedmapping{
    //Nested Mapping (mapping frm address to another mapping)
    mapping(address => mapping(uint => bool)) public nestedMap;

    function get(address _addr, uint _id) public view returns(bool){
        return nestedMap[_addr][_id];
    }

    function set(address _addr, uint _id, bool _boo)public{
        nestedMap[_addr][_id] = _boo;
    }

    function remove(address _addr, uint _id)public{
        delete nestedMap[_addr][_id];
    }
}