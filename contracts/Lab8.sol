// SPDX-License-Identifier: MIT
pragma solidity ^0.7.4;

contract Demo8 {
    address owner;
    constructor() {
        owner = msg.sender;
    }
    modifier onlyOwner() {
        require(msg.sender==owner);
        _;
    }
    modifier costs(uint256 price) {
        if (msg.value >= price) {
        _;
        }
    }
}

contract Register is Demo8{
    mapping(address=>bool) public registeredAddress;
    uint256 public price;
    constructor(uint256 initPrice) {
        price = initPrice;
    }
    function register() public payable costs(price) {
        registeredAddress[msg.sender]=true;
    }
    function changePrice(uint256 newPrice) public onlyOwner{
        price = newPrice;
    }
}