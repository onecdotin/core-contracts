/*
    * @dev Assume supply=1 everywhere when passing arguments.
    * Sample bytes32: 0x6162636400000000000000000000000000000000000000000000000000000000
*/

pragma solidity ^ 0.8 .0;


import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC1155/ERC1155.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/security/Pausable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";


// 0x6162636400000000000000000000000000000000000000000000000000000000

contract THEWISARTS is Pausable, Ownable, ERC1155("https://raw.githubusercontent.com/The-Wise-Org/document-meta/main/{id}") {

    uint private totalRegisteredAssets;
    uint private totalAssetsForSale;

    mapping(uint256 => bytes) private metadataHash;

    constructor() {
        totalRegisteredAssets = 0;
        totalAssetsForSale = 0;   
    }

    /*
    * @dev Mint Assets to the address of _holder.
    * Requirements:
    * Can only be called by the deployer of the smart contract.
    */
    function mintAsset(uint _supply, address _holder, uint256 _id, bytes memory _data) public {
        require(metadataHash[_id].length == 0);
        _mint(_holder, _id, _supply, _data);
    }

    /*
    *@dev Called before every token transfer, maps the metadataHash of an asset with the token/asset id  
    */
    function _beforeTokenTransfer(address _operator, address _from, address _to, uint256[] memory ids, uint256[] memory amount, bytes memory data) override internal {
        // require(msg.sender == _from);
        // require(balanceOf(_from, ids[0]) > 0);
        metadataHash[ids[0]] = data;
        require(!paused(), "ERC1155Pausable: token transfer while paused");
    }

    /*
     * @dev returns the metaDataHash for the token/asset ID
     */

    function getTokenMetadataHash(uint256 _id) view public returns(string memory) {
        return string(metadataHash[_id]);
    }

     /*
     * @dev returns the baseURI.
     * Doesn't depends on the token-id and returns same thing.
     */
    function getBaseURI(uint256 _id) view public returns(string memory) {
        return super.uri(_id);
    }

     /*
     * @dev Tranfers the asset to new address.
     * Can be called by the asset holder.
     */
    function transfer(address _to, uint256 _id, uint256 _amount, bytes memory _data) public {
        super.safeTransferFrom(msg.sender, _to, _id, _amount, _data);
    }

    /*
    * @dev pause the wisarts contract.
    */
    function makePause() public onlyOwner {
        super._pause();
    }

    /*
     * @dev un-pause the wisarts contract.
     */
    function makeUnpause() public onlyOwner{
        super._unpause();
    } 

    /*
     * @dev Burns the token/asset with the given tokenid.
     */
    function burnAsset(address account,uint256 id,uint256 amount) public{
        super._burn(account,id,amount);
        metadataHash[id]=bytes("0x0");
    }

}
