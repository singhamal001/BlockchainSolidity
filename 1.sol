// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract SimpleStorage {

    //This gets initialized to zero
    uint256  favouriteNumber;
    mapping (string => uint256) public nameToFavouriteNumber;
    // People public person = People({favouriteNumber:3, name:"Amal"});

    struct People{
        uint256 favouriteNumber;
        string name;
    }

    // uint256[] public favouriteNumbersList'
    People[] public people;


    function store(uint256 _favouriteNumber) public{
        favouriteNumber = _favouriteNumber;
        retrieve();
    }

    //view function only used to retrieve the values or reading the values.
    function retrieve() public view returns(uint256){
        return favouriteNumber;
    } 

    //calldata, memory, storage
    function addPerson(string memory _name, uint256 _favouriteNumber) public{
        people.push(People(_favouriteNumber, _name));
        nameToFavouriteNumber[_name]=_favouriteNumber;
    }
}

//0xd9145CCE52D386f254917e481eB44e9943F39138
