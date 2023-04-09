// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Foo{
    address public owner;

    constructor(address _owner){
        require(_owner != address(0), "Invalid Address");
        assert(owner != 0x000000000000000000000000000000000000001);
        owner = _owner;
    }

    function myFunc(uint x)public pure returns(string memory){
        require(x != 0, "require failed");
        return "my func was called";
    }
}

contract Bar{
    event Log(string message);
    event LogBytes(bytes data);
    Foo public foo;

    constructor(){
        foo = new Foo(msg.sender);
    }

    function tryCatchExternalCall(uint _i)public {
        try foo.myFunc(_i) returns (string memory result){
            emit Log(result);
        } catch{
            emit Log("external call failed");
        }
    }

}