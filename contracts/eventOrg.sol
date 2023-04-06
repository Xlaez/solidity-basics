// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

// EVENT TICKET

contract EventTicket{
    uint256 public numberOfTickets;
    uint256 public ticketPrice;
    uint256 public totalAmount;
    uint256 public startAt;
    uint256 public endAt;
    uint256 public duration;
    string public message = "Buy your EVENT ticket";

    constructor(uint256 _ticketPrice){
        ticketPrice = _ticketPrice;
        startAt = block.timestamp;
        endAt = block.timestamp + 7 days;
        duration = (endAt - startAt) /60/60/24;
         
    }
}