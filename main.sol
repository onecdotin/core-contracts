pragma solidity ^ 0.8.0;


import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC1155/ERC1155.sol";
import "../contracts/security/Pausable.sol";

contract THEWISARTS is Pausable,ERC1155("https://raw.githubusercontent.com/The-Wise-Org/document-meta/main/{id}") {


// 0x6162636400000000000000000000000000000000000000000000000000000000

    uint private totalRegisteredAssets;
    uint private totalAssetsForSale;
    
    mapping(uint256 => bytes) private metadataHash;
    
    constructor() {
        totalRegisteredAssets = 0;
        totalAssetsForSale = 0;
    }

    function mintAsset(uint _supply, address _holder, uint256 _id, bytes memory _data) public {
        require(metadataHash[_id].length == 0);
        _mint(_holder, _id, _supply, _data);
    }

    function _beforeTokenTransfer(address _operator, address _from, address _to, uint256[] memory ids, uint256[] memory amount, bytes memory data) override internal {
        // require(msg.sender == _from);
        // require(balanceOf(_from, ids[0]) > 0);
        metadataHash[ids[0]] = data;
        require(!paused(), "ERC1155Pausable: token transfer while paused");
    }

    function getTokenMetadataHash(uint256 _id) view public returns(string memory) {
        return string(metadataHash[_id]);
    }

    function getBaseURI(uint256 _id) view public returns(string memory) {
        //will be same for all token ids, as base uri is same
        return super.uri(_id);
    }

    function transfer(address _to, uint256 _id, uint256 _amount, bytes memory _data) public{
        super.safeTransferFrom(msg.sender, _to, _id, _amount, _data);
    }

    //TODO: Overriding safetransfer and aftercheck
}
