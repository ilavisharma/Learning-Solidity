pragma solidity ^0.5.1;

contract MyContract {
    uint256 public peopleCount;
    mapping(uint => Person) public people;
    address owner;

    struct Person {
        uint id;
        string _firstName;
        string _lastName;
    }

    constructor() public{
        owner= msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        // if true then continues
        // if false throws an error
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
