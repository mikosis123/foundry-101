// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ConfigFundMe {
    NetworkConfig public activeNetworkConfig;

    struct NetworkConfig {
        address pricefeedaddress;
    }

    constructor() {
        if (block.chainid == 11155111) {
            activeNetworkConfig = getSepolia();
        } else {
            activeNetworkConfig = getAvalanche();
        }
    }

    function getSepolia() public pure returns (NetworkConfig memory) {
        return NetworkConfig({pricefeedaddress: 0x694AA1769357215DE4FAC081bf1f309aDC325306});
    }

    function getAvalanche() public pure returns (NetworkConfig memory) {
        return NetworkConfig({pricefeedaddress: 0x694AA1769357215DE4FAC081bf1f309aDC325306});
    }
}
