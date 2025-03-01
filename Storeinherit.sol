// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.17;

import {SimpleStorage} from "./SimpleStorage.sol";

contract  StoreInherit is SimpleStorage{ 

    function retrive(uint _i) public override view returns(uint){
        return listOfPersons[_i].salary + 1;
    }
}