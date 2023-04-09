// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Payable{
    // Payable addres can receive ether
    address payable  public owner;

    // Payable constructor can also receive ether
    constructor() payable {
        owner = payable(msg.sender);
    }

    // Function to deposit Ether into this contract
    // Call the function along with with some Ether
    // The balance of this contract will be automatically updated

    function deposit() public payable {}

    // Call this function along with some ether
    // The function will throw an error since this function is not payable

    function notPayable() public{}

    // FUnction to withdraw all ether from this contract
    function withdraw()public{
        // get the amount of ether stored in this contract
        uint amount = address(this).balance;

        //send all ether to owner
        (bool success, ) = owner.call{value: amount}("");
        require(success, "Failed to send Ether"); 
    }

    // Function to transfer ether from this contract to address from input
    function transfer(address payable _to, uint _amount) public {
        (bool success,) = _to.call{value: _amount}("");
        require(success,  "Failed to send Ether");
    }
}