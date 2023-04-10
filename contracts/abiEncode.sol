// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

interface IERC20 {
    function transfer(address, uint) external;
}

contract Token{
    function transfer (address, uint) external {}
}

contract AbiEncode{
    function test(address _contract, bytes calldata data)external {
        (bool ok,) = _contract.call(data);
        require(ok, "call failed");
    }

    function encodedWithSignature(address to, uint amount)external pure returns (bytes memory){
        return abi.encodeWithSignature("transfer(address,uint)", to,amount);
    }

    function encodeWithSelector(address to, uint amount)external pure returns (bytes memory){
        // Type is not checked - (IERC20.transfer.selector, true, amount)
        return abi.encodeWithSelector(IERC20.transfer.selector, to, amount);
    }

    function encodedCall(address to, uint amount)external pure returns (bytes memory){
        // Typo and type errors will not complie
        return abi.encodeCall(IERC20.transfer, (to, amount));
    }
}