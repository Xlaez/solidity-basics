// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

// EVENT TICKET

contract EventTicket{
    uint256 numberOfTickets;
    uint256 ticketPrice;
    uint256 totalAmount;
    uint256 startAt;
    uint256 endAt;
    uint256 duration;
    string message = "Buy your EVENT ticket";

    constructor(uint256 _ticketPrice){
        ticketPrice = _ticketPrice;
        startAt = block.timestamp;
        endAt = block.timestamp + 7 days;
        duration = (endAt - startAt) /60/60/24;
        
    }

    function buyTicket(uint256 _value) public returns (uint256 ticketId){
        numberOfTickets +=1;
        totalAmount += _value;
        ticketId = numberOfTickets;
    }

    function getAmount() public view returns(uint256){
        return totalAmount;
    }
}