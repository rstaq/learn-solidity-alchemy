// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/console.sol";

contract Contract {
    address public owner;
    address public charity;

    constructor(address _charity) {
        owner = msg.sender;
        charity = _charity;
    }

    receive() external payable {}

    function tip() external payable {
        (bool success, ) = owner.call{value: msg.value}("");
        require(success);
    }

    function donate() external {
        (bool success, ) = charity.call{value: address(this).balance}("");
        require(success);
    }
}
