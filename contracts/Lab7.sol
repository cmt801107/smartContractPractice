// SPDX-License-Identifier: MIT
pragma solidity ^0.7.4;

contract Demo7 {
    function getMultiple() public pure returns(uint256, uint256) {
        uint256 x = 800;
        uint256 y = 500;
        return (x+y, x*y);
    }
    function getMultipleWithoutReturns() public pure returns (uint256 sum, uint256 plus) {
        uint256 x = 800;
        uint256 y = 500;
        sum = x+y;
        plus = x*y;
    }
}