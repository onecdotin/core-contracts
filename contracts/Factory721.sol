// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Onec721.sol";
import "@openzeppelin/contracts-upgradeable/proxy/ClonesUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

contract Factory721 is OwnableUpgradeable {

    address immutable tokenImplementation;

    constructor() {
        tokenImplementation = address(new Onec721());
    }

    function createOnec721(string memory _name,string memory _symbol,string memory _baseURI,string memory _contractMetadata,address _newOwner) external onlyOwner returns (address) {
        require(_newOwner != address(0));
        address clone = ClonesUpgradeable.clone(tokenImplementation);
        Onec721(clone).initialize(_name,_symbol,_baseURI, _contractMetadata);
        Onec721(clone).transferOwnership(_newOwner);
        return clone;
    }

}