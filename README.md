# Solidity

Solidity is an object-oriented, high-level language for implementing smart contracts. Smart contracts are programs which govern the behaviour of accounts within the Ethereum state.

### Basic smart contract<br>

###### The first line specifies the **version of the compiler** that is to be used.

```
pragma solidity ^0.5.1;

contract MyContract {
    string value;

    constructor() public {
        value= "myValue";
    }

    function get() public view returns(string memory) {
        return value;
    }

    function set(string memory _value) public {
        value= _value;
    }
}
```

### Data Types

There are may data types avialble as shown below:

```
string public stringValue= "myString";
    bool public myBool= true;
    int public myInt= -1;
    uint public myUint= 1;
    uint8 public myUint8= 8;
```

Another data type available is enum (enumerated list):

```
contract MyContract {
    enum State {Waiting, Ready, Active}
    State public state;

    constructor() public {
      state= State.Active;
    }

    function activate() public {
      state= State.Active;
    }

    function isActive() public view returns(bool) {
      return state==State.Active;
    }
}
```
