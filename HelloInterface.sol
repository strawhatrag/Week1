// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

interface IHelloWorld {
    function message() external view returns (string memory);
    function setMessage(string calldata) external;
    function owner() external view returns (address);
    function changeOwner(address _newOwner) external;
}
