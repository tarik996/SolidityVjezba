// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract SimpleStorage {

    //Uvijek inicijalizuje na nulu, default je internal
    uint256 favoriteNumber;
    bool favoriteBool;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    //Kreiranje niza
    People[] public people;
    mapping(string => uint256) public nameToFavoriteNumber;

    People public person = People({favoriteNumber: 4, name: "Tarik"});

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    //View funkcije se koriste da se vide podaci koji se vrate 
    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }

    //Pure funkcije se koriste kada treba neka matematicka radnja da se obavi
    function calculate(uint256 _favoriteNumber) public pure {
        _favoriteNumber + _favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People({favoriteNumber: _favoriteNumber, name: _name}));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}