// SPDX-License-Identifier: MIT
pragma solidity ^0.7.4;

contract Demo4 {
    enum StarbuckSize {SHORT, TAll, GRANDE, VENTI, TRENTA}
    StarbuckSize size;
    StarbuckSize constant defaultSize = StarbuckSize.TAll;

    function setVenti() public{
        size = StarbuckSize.VENTI;
    }
    function getCurrentSize() public view returns(StarbuckSize){
        return size;
    }

    function getDefaultSize() public pure returns(StarbuckSize){
        return defaultSize;
    }

     function getDefaultSize2() public pure returns(uint256){
        return uint256(defaultSize);
    }

    function setCurrentSize(StarbuckSize newSize) public {
        size = newSize;
    }

    function setCurrentSize2(uint256 newSize) public{
        size = StarbuckSize(newSize);
    }
}