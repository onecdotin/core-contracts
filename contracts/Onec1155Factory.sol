// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/proxy/Clones.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "./Onec1155.sol";

contract Onec1155Factory is Ownable {

    address private tokenImplementation;
    constructor(){
        tokenImplementation = address(new Onec1155());    
    }
    
    function createOnec1155(string memory _name,string memory _symbol,string memory _baseURI,string memory _contractMetadata,address _newOwner) external onlyOwner returns (address) {
        require(_newOwner != address(0));
        address clone = Clones.clone(tokenImplementation);
        Onec1155(clone).initialize(_name,_symbol,_baseURI, _contractMetadata);
        Onec1155(clone).transferOwnership(_newOwner);
        return clone;
    }

}