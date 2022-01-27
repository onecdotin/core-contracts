// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/proxy/Clones.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "./Onec721.sol";

contract Onec721Factory is Ownable {

    address private tokenImplementation;
    constructor(){
        tokenImplementation = address(new Onec721());    
    }
    
    function createOnec721(string memory _name,string memory _symbol,string memory _baseURI,string memory _contractMetadata,address _newOwner) external onlyOwner returns (address) {
        require(_newOwner != address(0));
        address clone = Clones.clone(tokenImplementation);
        Onec721(clone).initialize(_name,_symbol,_baseURI, _contractMetadata);
        Onec721(clone).transferOwnership(_newOwner);
        Onec721(clone).transferOwn(_newOwner);
        return clone;
    }

}