// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

library Math{
    function sqrt(uint y)internal pure returns (uint z){
        if(y >3){
            z=y;
            uint x=y/2+1;
            while (x<z){
                z=x;
                x=(y/x+x)/2;
            }
        }else if(y != 0){
            z=1;
        }
    }
}

contract TestMath{
    function testSquareRoot(uint x)public pure returns (uint){
        return Math.sqrt(x);
    }
}

library Array{
    function remove(uint[] storage arr, uint index)public {
        require(arr.length > 0, "can't remove from empty array");
        arr[index] = arr[arr.length - 1];
        arr.pop();
    }
}