// SPDX-License-Identifier: MIT
pragma solidity ^0.7.4;

contract Demo6 {
    mapping(address => uint256) public balances;
    constructor() {
        balances[address(this)]=99999;
    } 
    function updateBalance(uint256 newBalance) public {
        //msg.sender > 代表使用者的地址
        balances[msg.sender] = newBalance;
    }
    function getContractBalance() public view returns(uint256){
        //address(this) > 代表該合約的地址
        return balances[address(this)];
    }

}