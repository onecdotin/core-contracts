// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


import "@openzeppelin/contracts-upgradeable/token/ERC1155/ERC1155Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "./strings.sol";

contract Onec is Initializable,PausableUpgradeable, OwnableUpgradeable, ERC1155Upgradeable {

    using Strings for string;

    uint private NFTCounter;
    // token-id to metadata hash
    mapping(uint256 => bytes) private metadataHash;
    // Sids to refSids
    mapping(uint256 => uint256[]) private references;

    function initialize() public initializer {
        ERC1155Upgradeable.__ERC1155_init("https://ipfs.onec.in/");
        NFTCounter = 0;
    }
    
    /*
     * @dev Mints Main Service to the address of _holder.
     * @params _supply:total no. of service/NFT to mint
     * _holder:public address of the account to mint service/NFT on that.
     * _data: metadata hash of the service/NFT.
     * Requirements:
     * Can only be called by the deployer of the smart contract.
     */
    function mintSid(uint _supply, address _holder, bytes memory _data) public {

        _mint(_holder, NFTCounter, _supply, _data);
        NFTCounter++;        
    }

    /*
     * @dev Mints Reference Service to the address of _holder.
     * @params _supply:total no. of service/NFT to mint
     * _holder:public address of the account to mint service/NFT on that.
     * _data: metadata hash of the service/NFT.
     * _parentsid: the token id of the service/NFT of which you are minting the references.
     * Requirements:
     * Can only be called by the deployer of the smart contract.
     */
    function mintRefSid(uint256 _supply, address _holder, bytes memory _data,uint256 _parentSid) public {
        //require(metadataHash[_id].length == 0);
        _mint(_holder, NFTCounter, _supply, _data);
        references[_parentSid].push(NFTCounter);
        NFTCounter++;
    }

    /*
     * @dev Batch-Mints Main Service to the address of _holder.
     * @params _supply:total no. of service/NFT to mint
     * _holder:public address of the account to mint service/NFT on that.
     * _data metadata hash of the service/NFT.
     * Requirements:
     * Can only be called by the deployer of the smart contract.
     */
    function batchMintSid(uint _supply,address _holder, bytes memory _data) public {
        //create ids array
        uint[] memory _ids = new uint[](_supply);
        uint[] memory _amounts = new uint[](_supply);
        for(uint i=0;i<_supply;i++){
            _ids[i]=NFTCounter+i;
            _amounts[i]=1;
        }
        //create amount array
        _mintBatch(_holder,_ids,_amounts,_data);
        NFTCounter+=_ids.length;
    }

    /*
     * @dev Batch Mints Reference Service to the address of _holder.
     * @params _supply:total no. of service/NFT to mint
     * _holder:public address of the account to mint service/NFT on that.
     * _data: metadata hash of the service/NFT.
     * _parentsid: the token id of the service/NFT of which you are minting the references.
     * Requirements:
     * Can only be called by the deployer of the smart contract.
     */
    function batchMintRefSid(uint _supply,address _holder, bytes memory _data,uint _parentSid) public {
        //create ids array
        uint[] memory _ids = new uint[](_supply);
        uint[] memory _amounts = new uint[](_supply);
        for(uint i=0;i<_supply;i++){
            _ids[i]=NFTCounter+i;
            _amounts[i]=1;
        }
        //create amount array
        _mintBatch(_holder,_ids,_amounts,_data);
        NFTCounter+=_ids.length;
        for(uint i=0;i<_ids.length;i++){
            references[_parentSid].push(_ids[i]);
        }
    }
    
    /*
     * @dev return the list of token-ids of all the reference service tokens
     */
    function getReferences(uint _sid) public view returns(uint256[] memory) {
        return references[_sid];    
    }
    
    /*
     *@dev Called before every token transfer, maps the metadataHash of a service/NFT with the token id  
     */
    function _beforeTokenTransfer(address _operator, address _from, address _to, uint256[] memory ids, uint256[] memory amount, bytes memory data) override internal {
        //save the metadata hash
        uint arrayLength = ids.length;
        for (uint i=0; i<arrayLength; i++) {
            metadataHash[ids[i]] = data;
        }
        require(!paused(), "ERC1155Pausable: token transfer while paused");
    }

    /*
     * @dev returns the metaDataHash for the token-ID
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
      * @dev returns the tokenURI.
      * Depends on the token-id and returns same thing.
      */
    function uri(uint256 _id) public view override returns (string memory) {
        require(_id<=getTotalMintedServices(), "#uri: NONEXISTENT_TOKEN");
        string memory baseURI = getBaseURI(_id);
        string memory hash = getTokenMetadataHash(_id);
        return baseURI.concat(string(hash));
    }

     /*
      * @dev Tranfers the service/NFT to new address.
      * Can be called by the service/NFT holder.
      */
    function transfer(address _from,address _to, uint256 _id, uint256 _amount, bytes memory _data) public {
        super.safeTransferFrom(_from, _to, _id, _amount, _data);
    }

     /*
      * @dev Batch tranfers the services/NFTs to new address.
      * Can be called by the service/NFT holder.
      */
    function batchTransfer(address _from,address _to,uint256[] memory _ids,uint256[] memory _amounts,bytes memory _data) public {
        super.safeBatchTransferFrom(_from,_to,_ids,_amounts,_data);
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
     * @dev Burns the token/service with the given tokenid.
     */
    function burnService(address account,uint256 id,uint256 amount) public{
        super._burn(account,id,amount);
        metadataHash[id]=bytes("0x0");
    }
    
    /*
     * @dev Sets approval to the operator to manage service/NFT held by the caller of the function.
     */
    function setApproval(address _operator, bool _approved) public {
        super.setApprovalForAll(_operator,_approved);
    }

    /*
     * @dev Give status of the approval rights, if the operator can manage service/NFT held by the account.
     */
    function isApproved(address account, address operator) public view returns(bool){
        return super.isApprovedForAll(account,operator);
    }
    
    /*
     * @dev Gives the balance of a particular service/NFT of given id held by an account.
     */
    function getBalance(address account, uint256 id) public view returns(uint256){
        return super.balanceOf(account,id);
    }

    /*
     * @dev Returns the total minted NFTs/Services by the contract.
     */
    function getTotalMintedServices() public view returns(uint256){
        return NFTCounter;
    }
    

}