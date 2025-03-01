// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.17;

import {SimpleStorage} from "./SimpleStorage.sol";

contract Storagefactory{

    SimpleStorage[] public listOfSimpleStorage;

    function createSimpleStorageContract() public{
        SimpleStorage newSimpleStorage = new SimpleStorage();
        listOfSimpleStorage.push(newSimpleStorage);
}

    function createNewPerson(uint _listIndex, string memory _name, uint _age, uint _salary) public {
        listOfSimpleStorage[_listIndex].addperson(_salary, _name, _age );
    }

    function callNewPerson(uint _i) public view returns(uint){
        return listOfSimpleStorage[0].retrive(_i);
    }

}