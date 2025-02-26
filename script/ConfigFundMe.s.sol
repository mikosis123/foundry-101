// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

<<<<<<< HEAD
import {MockV3Aggregator} from "../test/Mock/MockV3Aggregator.t.sol";
import {Script} from "forge-std/Script.sol";

contract ConfigFundMe is Script {
    NetworkConfig public activeNetworkConfig;
    uint8 public constant DECIMAL = 8;
    int256 public constant INITIAL_PRICE = 2000e8;
=======
contract ConfigFundMe {
    NetworkConfig public activeNetworkConfig;

>>>>>>> ba28754d801ea6178a0e59127f8b65c333a1754f
    struct NetworkConfig {
        address pricefeedaddress;
    }

    constructor() {
        if (block.chainid == 11155111) {
            activeNetworkConfig = getSepolia();
<<<<<<< HEAD
        }else if (block.chainid == 1){
            activeNetworkConfig = getMainnetEth();
        } else {
            activeNetworkConfig = getAnvilEthConfig();
=======
        } else {
            activeNetworkConfig = getAvalanche();
>>>>>>> ba28754d801ea6178a0e59127f8b65c333a1754f
        }
    }

    function getSepolia() public pure returns (NetworkConfig memory) {
        return NetworkConfig({pricefeedaddress: 0x694AA1769357215DE4FAC081bf1f309aDC325306});
    }
<<<<<<< HEAD
    function getMainnetEth()public pure returns(NetworkConfig memory) {
 return NetworkConfig({pricefeedaddress: 0x694AA1769357215DE4FAC081bf1f309aDC325306});
    }
    function getAnvilEthConfig() public  returns (NetworkConfig memory) {
        if (activeNetworkConfig.pricefeedaddress != address(0)) {
            return activeNetworkConfig;
        }
        vm.startBroadcast();
        MockV3Aggregator mockpricefeed = new MockV3Aggregator(DECIMAL,INITIAL_PRICE);
        vm.stopBroadcast();
        
 return NetworkConfig({pricefeedaddress: address(mockpricefeed)});
=======

    function getAvalanche() public pure returns (NetworkConfig memory) {
        return NetworkConfig({pricefeedaddress: 0x694AA1769357215DE4FAC081bf1f309aDC325306});
>>>>>>> ba28754d801ea6178a0e59127f8b65c333a1754f
    }
}
