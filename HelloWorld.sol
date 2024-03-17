// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract HelloWorld{
    string public message;
    address public owner;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _; // Continue executing the function
    }

    constructor(string memory _initialMessage) {
        message = _initialMessage;
        owner = msg.sender;
    }

    function setMessage(string calldata _newMessage) public onlyOwner {
        message = _newMessage;
    }

    function changeOwner(address _newOwner) public onlyOwner{
        owner = _newOwner;
    }
}