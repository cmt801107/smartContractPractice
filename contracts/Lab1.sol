//SPDX-License-Identifier: BSD
pragma solidity ^0.7.4;
contract Chat {
    string public message;

    constructor(string memory initialMessage) {
        message = initialMessage;
    }

    function setMessage(string memory newMessage) public {
        message = newMessage;
    }
}