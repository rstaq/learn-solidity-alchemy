// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Sidekick {
    function makeContact(address hero) external {
        // TODO: trigger the hero's fallback function!
        (bool success,) = hero.call(
            abi.encodeWithSignature("greet(uint256)", 5)
        );
        require(success);
    }
}
