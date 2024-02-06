// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract GlobalVariables {
    function globalVars() external view returns (address, uint, uint, uint, bytes32, uint) {
        address sender = msg.sender;
        uint timestamp = block.timestamp;
        uint blockNum = block.number;
        bytes32 blockHash = blockhash(block.number - 1);
        uint gasLimit = block.gaslimit;
        bytes memory data = msg.data;

        return (sender, timestamp, blockNum, gasLimit, blockHash, data.length);
    }
}
