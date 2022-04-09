pragma solidity ^0.6.0;

contract SimpleStorage {

    //Uvijek inicijalizuje na nulu
    uint256 public favoriteNumber;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
}