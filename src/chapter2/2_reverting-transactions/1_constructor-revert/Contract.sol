// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    error DepositTooLow();

    constructor() payable {
        if (msg.value < 1 ether) {
            revert DepositTooLow();
        }
    }
}
