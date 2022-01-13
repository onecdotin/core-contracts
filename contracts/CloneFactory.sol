// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Onec.sol";
import "@openzeppelin/contracts-upgradeable/proxy/ClonesUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

contract OnecFactory is OwnableUpgradeable {

    address immutable tokenImplementation;

    constructor() {
        tokenImplementation = address(new Onec());
    }

    function createOnec(string memory _baseURI,string memory _contractMetadata) external onlyOwner returns (address) {
        address clone = ClonesUpgradeable.clone(tokenImplementation);
        Onec(clone).initialize(_baseURI, _contractMetadata);
        return clone;
    }

}