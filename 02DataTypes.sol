pragma solidity ^0.5.1;

contract MyContract {
    Person[] public people;
    // we cannot find out the length directly
    // so we can use a variable that keeps track of it
    uint256 public peopleCount;

    struct Person {
        string _firstName;
        string _lastName;
    }

    function addPerson(string memory _firstName, string memory _lastName) public {
        people.push(Person(_firstName, _lastName));
        peopleCount++;
    }
}
