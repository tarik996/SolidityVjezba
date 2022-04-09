// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import  "./SimpleStorage.sol";

//Kako pristupiti ugovoru preko drugog ugovora
//Nasljedjivanje se radi preko is komande

contract StorageFactory is SimpleStorage {

    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        //Adresa od pametnog ugovora
        //ABI
        //Potrebno ovo dvoje

        SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        return SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).retrieve();
    }
}