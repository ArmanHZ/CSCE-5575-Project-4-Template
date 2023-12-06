// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";

contract CounterTest is Test {
    // Setting up the contract reference to be used in tests.
    Counter public counter;

    // Dummy address for Counter constructor.
    address ownerAddress = address(0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266);

    // Setup for all tests.
    function setUp() public {
        counter = new Counter(ownerAddress);
    }

    // Example test case for testing the initial price.
    function test_InitialPrice() public {
        assertEq(counter.price(), 10);
    }

    // Use vm.prank with the owner's address to access onlyOwner modifiers.
    // Same with onlyVip.

    // TODO: Rest of the tests using both assertion and fuzzing testing.
}
