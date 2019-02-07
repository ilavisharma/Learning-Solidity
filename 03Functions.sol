pragma solidity ^0.5.1;

contract MyContract {
    uint256 public peopleCount;
    mapping(uint => Person) public people;
    uint256 openingTime= 1549557962;

    struct Person {
        uint id;
        string _firstName;
        string _lastName;
    }

    modifier onlyWileOpen() {
        require(block.timestamp >= openingTime);
        _;
    }

    function addPerson(string memory _firstName, string memory _lastName) public onlyOwner {
        incrementCount();
        people[peopleCount]= Person(peopleCount, _firstName, _lastName);
    }

    function incrementCount() internal {
        peopleCount+=1;
    }
}
