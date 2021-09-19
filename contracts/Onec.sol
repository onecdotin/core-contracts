/*
    * @dev Assume supply=1 everywhere when passing arguments.
    * Sample bytes32: 0x6162636400000000000000000000000000000000000000000000000000000000
*/
pragma solidity ^0.8.0;


import "@openzeppelin/contracts-upgradeable/token/ERC1155/ERC1155Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";


contract Onec is Initializable,PausableUpgradeable, OwnableUpgradeable, ERC1155Upgradeable {

    uint private totalRegisteredAssets;

    mapping(uint256 => bytes) private metadataHash;
    
    function initialize() public initializer {
        ERC1155Upgradeable.__ERC1155_init("https://raw.githubusercontent.com/The-Wise-Org/document-meta/main/{id}");
        totalRegisteredAssets = 0;
    }
    
    
    /*
     * @dev Mint Assets to the address of _holder.
     * Requirements:
     * Can only be called by the deployer of the smart contract.
     */
    function mintAsset(uint _supply, address _holder, uint256 _id, bytes memory _data) public {
        require(metadataHash[_id].length == 0);
        _mint(_holder, _id, _supply, _data);
        totalRegisteredAssets++;
    }

    /*
     *@dev Called before every token transfer, maps the metadataHash of an asset with the token/asset id  
     */
    function _beforeTokenTransfer(address _operator, address _from, address _to, uint256[] memory ids, uint256[] memory amount, bytes memory data) override internal {
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
    function transfer(address _from,address _to, uint256 _id, uint256 _amount, bytes memory _data) public {
        super.safeTransferFrom(_from, _to, _id, _amount, _data);
    }

    /*
     * @dev pause the onec contract.
     */
    function makePause() public onlyOwner {
        super._pause();
    }

    /*
     * @dev un-pause the onec contract.
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
    
    /*
     * @dev Sets approval to the operator to manage assets held by the caller of the function.
     */
    function setApproval(address _operator, bool _approved) public {
        super.setApprovalForAll(_operator,_approved);
    }

    /*
     * @dev Give status of the approval rights, if the operator can manage assets held by the account.
     */
    function isApproved(address account, address operator) public view returns(bool){
        return super.isApprovedForAll(account,operator);
    }
    
    /*
     * @dev Gives the balance of a particular asset of given id held by an account.
     */
    function getBalance(address account, uint256 id) public view returns(uint256){
        return super.balanceOf(account,id);
    }
    

}