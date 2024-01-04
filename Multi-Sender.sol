// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

// Simple Store Contract
contract SimpleStore{
    event ValueChanged(address indexed author, string oldValue, string  newValue);

    string _value = "First!!1";
    uint256 public data;
    function setValue(string memory value) public{
        emit ValueChanged(msg.sender , _value, value);
        _value = value;
    }

    function Value() public view returns(string memory,uint256){
        return (_value,data);
    }
    function Increement() public {
        data++;
    }
    function Decreement() public {
        data--;
    }
}


