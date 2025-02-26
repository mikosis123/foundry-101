// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {FundMe} from "../src/FundMe.sol";
import {DeployFundMeScript} from "../script/FundMe.s.sol";

contract FundmeTest is Test {
        FundMe fundme;
      function setUp()public {
        // fundme = new FundMe(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        DeployFundMeScript deployfundme = new DeployFundMeScript();
       fundme = deployfundme.run();
      }
      function testdemo ()public view {
         assertEq(fundme.MINIMUM_USD(), 5e18);
         console.log(fundme.MINIMUM_USD());
      }
      function testOwner() public view {
         assertEq(fundme.i_owner(), msg.sender);
         
      }
      function testgetVersion() public view {
        //  assertEq(fundme.getVersion(),4);
         console.log(fundme.getVersion());
         
      }
}
