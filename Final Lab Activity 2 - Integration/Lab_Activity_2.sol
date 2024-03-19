// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FinalsActivity2 {
    address payable public owner;
    uint256 public immutable creationTime;
    uint256 public constant INITIAL_ETH_AMOUNT = 2 ether;
    uint256 public remainingEth;

    event EtherReceived(address indexed from, uint256 amount);
    event EtherSent(address indexed to, uint256 amount);

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    constructor() {
        owner = payable(msg.sender);
        creationTime = block.timestamp;
        remainingEth = INITIAL_ETH_AMOUNT;
    }

    receive() external payable {
        emit EtherReceived(msg.sender, msg.value);
        remainingEth += msg.value;
    }

    function receiveAndEmit() external payable {
        emit EtherReceived(msg.sender, msg.value);
        remainingEth += msg.value;
    }

    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }

    function sendEther(address payable _recipient, uint256 _amount) external onlyOwner {
        require(_recipient != address(0), "Invalid recipient address");
        require(_amount <= remainingEth, "Insufficient balance");
        
        _recipient.transfer(_amount);
        remainingEth -= _amount;
        emit EtherSent(_recipient, _amount);
    }

    function destroy() external onlyOwner {
        selfdestruct(owner);
    }
}


//Shem Kahlil P. Payad
//WD-401

//Through this activity, I've gained knowledge in developing Solidity smart contracts, covering crucial concepts such as contract ownership, constructor initialization, 
//event logging, fallback functions for Ether handling, modifiers for access control like onlyOwner, and self-destruct functionality. 
//I've learned to assign ownership to addresses, restrict function access to the owner, initialize variables upon contract deployment, log important transactions with 
//events, handle Ether transactions with fallback functions, enforce access control with modifiers, and provide contract termination capability with self-destruct functionality.
