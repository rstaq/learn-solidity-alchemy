// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "src/chapter1/basic-data-types/1_booleans/Contract.sol";

contract ContractTest is Test {
    Contract public myContract;

    function setUp() public {
        myContract = new Contract();
    }

    function testBools() public {
        assertEq(myContract.a(), true);
        assertEq(myContract.b(), false);
    }
}