// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {FundMe} from "../src/FundMe.sol";
import {ConfigFundMe} from "./ConfigFundMe.s.sol";
contract DeployFundMeScript is Script {
    function setUp() public {}
     
    function run() external returns(FundMe) {
         ConfigFundMe configfundme = new ConfigFundMe();
        address configpricefeed = configfundme.activeNetworkConfig();
        vm.startBroadcast(); // Starts broadcasting transactions
        FundMe fundMe = new FundMe(configpricefeed); // Deploy FundMe contract
        vm.stopBroadcast(); // Stops broadcasting transactions
        return fundMe;
    }
}
