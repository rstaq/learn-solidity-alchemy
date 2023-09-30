// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Ownable {
    address public owner;

    error Forbidden();

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner {
        if (msg.sender != owner) {
            revert Forbidden();
        }
        _;
    }
}

contract Transferable is Ownable {

    function transfer(address _addr) external onlyOwner {
        owner = _addr;
    }
}