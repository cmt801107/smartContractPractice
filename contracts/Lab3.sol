// SPDX-License-Identifier: MIT

pragma solidity ^0.7.4;

contract Demo3 {
    //陣列預設方法1
    function arrayExplain1() public pure returns(uint256){
        uint len = 7;
        uint256[] memory a = new uint256[](len);
        return a.length;
    }
     //陣列預設方法2
    function arrayExplain2() public pure returns(uint256){
        uint256[10] memory b;
        return b.length;
    }
}