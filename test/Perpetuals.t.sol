// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {Perpetuals} from "src/Perpetuals.sol";

contract PerpetualsTest is Test {
    Perpetuals public perpetuals;

    function setUp() public {
        perpetuals = new Perpetuals();
        //perpetuals.setNumber(0);
    }

    //////////////////////////
    //     Deposit Tests    //
    //////////////////////////

    function test_UserBalanceUpdatedWhenDeposited() public {
        //counter.increment();
        //assertEq(counter.number(), 1);
    }
}
