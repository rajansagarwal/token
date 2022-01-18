// SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;

contract bingbong {
    address public owner;
    uint256 public constant token_supply = 1000000000000;
    mapping (address => uint) public balances;

    constructor() {
        owner = msg.sender;
        balances[owner] = token_supply;
    }

    function transfer(address receiver, uint amount) public {
        require(amount <= balances[msg.sender], "Insufficient balance.");
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
    }
}