// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract MT_Q1 {
    address owner;
    uint256 public age;
    uint256 public hoursWorked;
    uint256 public hourlyRate;
    uint256 public totalSalary;
    
    modifier onlyOwner() {
        require(msg.sender == owner, "Only contract owner can call this function");
        _;
    }
    
    modifier validRate(uint256 _rate) {
        require(_rate > 0, "Hourly rate must be greater than zero");
        _;
    }
    
    modifier validHoursWorked(uint256 _hours) {
        require(_hours > 0, "Hours worked must be greater than zero");
        _;
    }
    
    constructor() {
        owner = msg.sender;
    }
    
    function setAge(uint256 _age) external onlyOwner {
        age = _age;
    }
    
    function setHrsWrk(uint256 _hours) external onlyOwner validHoursWorked(_hours) {
        hoursWorked = _hours;
    }
    
    function setRate(uint256 _rate) external onlyOwner validRate(_rate) {
        hourlyRate = _rate;
    }
    
    function calculateTotSal() external onlyOwner {
        require(hourlyRate > 0 && hoursWorked > 0, "Hourly rate and hours worked must be greater than zero");
        totalSalary = hourlyRate * hoursWorked;
    }
}
