// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.17;

contract SimpleStorage {
    //uint256 public favoriteNumber;

    struct employee {
        string name;
        uint256 salary;
        uint256 age;
    }

    mapping(string => uint256) public nameToSalary;

    employee[] public listOfPersons;

    //function store(uint256 _favoriteNumber) public{
        //favoriteNumber += _favoriteNumber;  
    //}

    function addperson(uint _salary, string memory _name, uint _age) public {
        listOfPersons.push() = employee ({name: _name, salary: _salary, age: _age});
        nameToSalary[_name] = _salary;
    }

    function retrive(uint _i) public virtual  view returns(uint) {
        return listOfPersons[_i].salary;
    }
}