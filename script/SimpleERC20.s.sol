// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {SimpleERC20} from "../src/SimpleERC20.sol";

contract TokenScript is Script {
    function setUp() public {}

    function run() public {
        uint initialSupply= 1000*10**18;
        vm.startBroadcast();
        SimpleERC20 simpleERC20 = new  SimpleERC20(initialSupply);
        vm.stopBroadcast();
          console.log("SimpleERC20 deployed to:", address(simpleERC20));
    }
}
