// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/proxy/ClonesUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "./Onec1155.sol";

contract Factory1155 is OwnableUpgradeable {

    address immutable tokenImplementation;

    constructor() {
        tokenImplementation = address(new Onec1155());
    }

    function createOnec1155(string memory _baseURI,string memory _contractMetadata,address _newOwner) external onlyOwner returns (address) {
        require(_newOwner != address(0));
        address clone = ClonesUpgradeable.clone(tokenImplementation);
        Onec1155(clone).initialize(_baseURI, _contractMetadata);
        Onec1155(clone).transferOwnership(_newOwner);
        return clone;
    }

}