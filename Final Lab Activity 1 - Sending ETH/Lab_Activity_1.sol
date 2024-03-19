// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract EtherWallet {
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    receive() external payable {}

    function withdraw(uint256 _amount) public {
        require(msg.sender == owner, "Only owner can withdraw");
        require(address(this).balance >= _amount, "Insufficient balance");
        
        owner.transfer(_amount);
    }

    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }
}


//Shem Kahlil P. Payad
//WD-401

//This Lab Activity has equipped me with essential skills for building decentralized applications on the Ethereum blockchain. 
// Through this activity, I've gained foundational knowledge in Ethereum smart contract development using Solidity. 
