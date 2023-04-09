// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract ReceiveEther{
    // There are three methods for sending ether in solidity:
    // - transfer(2300 gas, throws error)
    // - send(2300 gas, returns bool)
    // - call(forwards all gas or set gas, returns bool)

    // Function to receive ether. msg.data must be empty
    receive() external payable {} 

    // Function is called when msg.data is not empty
    fallback()external  payable {}

    function getBalance() public view returns(uint){
        return address(this).balance;
    }
}

contract SendEther{
    function sendViaTransferWire(address payable _to)public  payable {
        // This is n(o longer recommended for use in smart contracts
        _to.transfer(msg.value);
    }

    function sendViaSend(address payable  _to)public  payable {
        // no longer recommended
        bool sent = _to.send(msg.value);
        require(sent, "Failed to send Ether");
    }

    function sendViaCall(address payable _to)public  payable {
        // This is the recommended method for sending ether
        (bool sent, bytes memory data) = _to.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
    }
}