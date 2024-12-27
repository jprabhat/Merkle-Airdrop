// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { Script, console } from "forge-std/Script.sol";

contract SplitSignature is Script {
    error __SplitSignatureScript__InvalidSignatureLength();

    function splitSignature(bytes memory sig)
        internal
        pure
        returns (
            uint8 v,
            bytes32 r,
            bytes32 s
        )
    {
        if (sig.length != 65) {
            revert __SplitSignatureScript__InvalidSignatureLength();
        }
Description: This repository explores advanced blockchain concepts with a focus on airdrops, signatures, and scripting. Key topics covered include:  Merkle Trees: Efficient data verification methods to validate dataset membership without iterating over arrays. Signatures: Understanding transaction authenticity and integrity using vm.sign, cast wallet sign, and OpenZeppelin's ECDSA library. Scripting: Scripts for deploying and interacting with smart contracts on platforms like Anvil, ZKsync local node, and ZKsync Sepolia. Transaction Types: A deep dive into elliptic curve digital signature algorithms (ECDSA) and their role in blockchain security. This repository serves as a resource for developers aiming to implement these techniques in their blockchain projects.
        assembly {
            r := mload(add(sig, 32))
            s := mload(add(sig, 64))
            v := byte(0, mload(add(sig, 96)))
        }
    }

    function run() external {
        string memory sig = vm.readFile("signature.txt");
        bytes memory sigBytes = vm.parseBytes(sig);
        (uint8 v, bytes32 r, bytes32 s) = splitSignature(sigBytes);
        console.log("v value:");
        console.log(v);
        console.log("r value:");
        console.logBytes32(r);
        console.log("s value:");
        console.logBytes32(s);
    }
}