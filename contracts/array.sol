// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Array{
    //Ways to initializ
    uint[] public arr = [1, 2, 3, 4];
    uint[] public arr2; 
    // Fixed size array, all elements are iitialized to zero
    uint[12] public fixedSizeArr; 

    // Define an array in memory
    // uint[] memory arrayMem = new uint[](10);

    function removeArr(uint _index)public {
        // Move the last element into place
        arr[_index] = arr[arr.length -1];
        // Remove the last element
        arr.pop();
    }

    function test()public{
        assert(arr.length == 3);
        assert(arr[0] == 1);
        assert(arr[1] == 2);
        assert(arr[2] == 3);
        assert(arr[3] == 4);

        removeArr(2);
        assert(arr.length == 3);
        assert(arr[2] == 4);
    }
}