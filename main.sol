pragma solidity ^ 0.8 .0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC1155/ERC1155.sol";

contract WisArt is ERC1155 {

    uint public tokenCounter = 0;

    // uri example - "https://raw.githubusercontent.com/The-Wise-Org/document-meta/main/{id}.json"
    constructor() public ERC1155("https://raw.githubusercontent.com/The-Wise-Org/document-meta/main/{id}.json") {
        _mint(msg.sender, tokenCounter, 1, "");
        tokenCounter++;
    }

    function mintAsset(uint _supply,uint _holder) {
        _mint(_holder, tokenCounter, _supply, "");
        tokenCounter++;
    }

}