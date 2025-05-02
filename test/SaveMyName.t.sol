// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Test} from "forge-std/Test.sol";
import {SaveMyName} from "../src/SaveMyName.sol";

contract SaveMyNameTest is Test {
    string public name;
    string public bio;
    SaveMyName public saveMyName;

    function setUp() public {
        name = "Sinclair";
        bio = "Dapps";
        saveMyName = new SaveMyName();
    }

    function testFunc() public view {
        assertEq(name, "Sinclair");
        assertEq(bio, "Dapps");
    }

    function testAddandRetrieve() public {
        saveMyName = new SaveMyName();
        saveMyName.add("Frank", "Married");

        (string memory savedName, string memory savedBio) = saveMyName.retreive();

        assertEq(savedName, "Frank");
        assertEq(savedBio, "Married");
    }
}
