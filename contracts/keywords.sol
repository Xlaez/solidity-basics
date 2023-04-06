// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Keywords{
    uint120 num1 = 98272;
    uint120 num2 = 20312;

    // VIEW KEYWORD CAN ONLY BE USED TO VIEW THE VALUE OF THE STATE VARIABLE
    // IT CANNOT BE USED TO UPDATE THE STATE VARIABLE
    // USING VIEW TO CHECK THE STATE VARIABLE
    function getResults() public  view returns(uint120, uint120){
        return (num1, num2);
    }

    // ANOTHER WAY TO RETURN VALUE      
    function calculate() public view returns(uint120 product, uint120 sum){
        product = num2 * num1;
        sum = num2 + num1;
    }

    // THE PURE KEYWORD IS RESTRICTED TO LOCAL VARIABLE
    function getData() public pure returns (uint120, uint120){
        uint120 num_one = 231;
        uint120 num_two = 114;
        return (num_two, num_one);
    }
}