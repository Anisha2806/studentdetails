// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract studentdb {
    struct student {
        string student_name;
        uint rollno;
        string dept;
    }

    mapping(uint => student) public students;
    uint public totalstudents;

    event addstudent(string name, uint rollno, string details);

    function studentadded(string memory _name, uint _rollno, string memory _details) public {
        students[_rollno] = student(_name, _rollno, _details);
        totalstudents++;
        emit addstudent(_name, _rollno, _details);
    }

    function getstudent(uint _rollno) public view returns (string memory, uint, string memory) {
        student memory _student = students[_rollno];
        return (_student.student_name, _student.rollno, _student.dept);
    }
}
