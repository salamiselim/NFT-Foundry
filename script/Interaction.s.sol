// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {BasicNft} from "../src/BasicNft.sol";

contract MintBasicNft is Script {
    string public constant PUG = "ipfs://QmYDoUExVaBCr8RaqMuint4MReD2tDa7SCGuEUVh3xNo5F/?filename=0-PUG.json";

    function run() external {
        address contractAddress = 0xDf972B14c925e26934767B84Eebb8faDb4625134;
        mintNftOnContract(contractAddress);
    }

    function mintNftOnContract(address contractAddress) public {
        vm.startBroadcast();
        BasicNft(contractAddress).mintNft(PUG);
        vm.stopBroadcast();
    }
}

   