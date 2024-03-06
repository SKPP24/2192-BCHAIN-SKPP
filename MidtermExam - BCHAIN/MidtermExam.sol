// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GradeContract {
    address public owner;

    enum GradeStatus { Pass, Fail }

    struct Student {
        string name;
        uint prelimGrade;
        uint midtermGrade;
        uint finalGrade;
        uint overallGrade;
        GradeStatus status;
    }

    Student public student;

    event GradeComputed(string studentName, GradeStatus status);

    modifier onlyOwner() {
        require(msg.sender == owner, "You do not have the authorization to use this");
        _;
    }

    modifier validGrade(uint grade) {
        require(grade <= 100 && grade >= 0, "Input a valid grade");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function setName(string calldata _name) public onlyOwner {
        student.name = _name;
    }

    function setPrelimGrade(uint _grade) public onlyOwner validGrade(_grade) {
        student.prelimGrade = _grade;
    }

    function setMidtermGrade(uint _grade) public onlyOwner validGrade(_grade) {
        student.midtermGrade = _grade;
    }

    function setFinalGrade(uint _grade) public onlyOwner validGrade(_grade) {
        student.finalGrade = _grade;
    }

    function calculateGrade() public onlyOwner {
        uint _overallGrade = (student.prelimGrade + student.midtermGrade + student.finalGrade) / 3;
        student.overallGrade = _overallGrade;
        if (_overallGrade >= 50) {
            student.status = GradeStatus.Pass;
        } else {
            student.status = GradeStatus.Fail;
        }
        emit GradeComputed(student.name, student.status);
    }

    function getName() public view returns (string memory) {
        return student.name;
    }

    function getPrelimGrade() public view returns (uint) {
        return student.prelimGrade;
    }

    function getMidtermGrade() public view returns (uint) {
        return student.midtermGrade;
    }

    function getFinalGrade() public view returns (uint) {
        return student.finalGrade;
    }

    function getOverallGrade() public view returns (uint) {
        return student.overallGrade;
    }
}


//Shem Kahlil P. Payad - WD 401
//BCHAIN MIDTERM EXAM