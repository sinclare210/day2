// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Script, console} from "forge-std/Script.sol";
import {SaveMyName} from "../src/SaveMyName.sol";

contract SaveMyNameScript is Script {
    SaveMyName public saveMyName;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        saveMyName = new SaveMyName();
        vm.stopBroadcast();
    }
}
