// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {FundMe} from "../src/FundMe.sol";

contract DeployFundMeScript is Script {
    function setUp() public {}
      
    function run() external returns(FundMe) {
        vm.startBroadcast(); // Starts broadcasting transactions
        FundMe fundMe = new FundMe(0x694AA1769357215DE4FAC081bf1f309aDC325306); // Deploy FundMe contract
        vm.stopBroadcast(); // Stops broadcasting transactions
        return fundMe;
    }
}
