// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


import "@openzeppelin/contracts-upgradeable/token/ERC1155/ERC1155Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "./strings.sol";

contract Onec1155 is Initializable,PausableUpgradeable, OwnableUpgradeable, ERC1155Upgradeable {

    using StringsNative for string;

    string public name;
    
    string public symbol;
    
    uint private NFTCounter;
    // token-id to metadata hash
    mapping(uint256 => bytes) private metadataHash;
    // tokenIds to refTokenIds
    mapping(uint256 => uint256[]) private references;

    string private contractMetadata;

    function initialize(string memory _name,string memory _symbol,string memory _baseURI,string memory _contractMetadata) public initializer {
        ERC1155Upgradeable.__ERC1155_init(_baseURI);
        OwnableUpgradeable.__Ownable_init();
        PausableUpgradeable.__Pausable_init();
        NFTCounter = 0;
        contractMetadata = _contractMetadata;
        name=_name;
        symbol=_symbol;
    }

     /*
     * @dev Returns the contract URI to make it trackable at OpenSea.
     */   
    function contractURI() public view returns (string memory) {
        return contractMetadata;
    }

     /*
     * @dev Sets the contract URI to make it trackable at OpenSea.
     @params _metadata: The URL for the contract's OpenSea metadata.
     */  
    function setContractMetadata(string memory _metadata) public onlyOwner {
        contractMetadata = _metadata;
    }

    /*
     * @dev Mints NFT to the address of _holder.
     * @params _supply:total no. of NFTs to mint
     * _holder:public address of the account to mint NFT on that.
     * _data: metadata hash of the NFT.
     * Requirements:
     * Can only be called by the deployer of the smart contract.
     */
    function mintNFT(uint _supply, address _holder, bytes memory _data) public {
        _mint(_holder, NFTCounter, _supply, _data);
        NFTCounter++;        
    }

    /*
     * @dev Mints Reference  to the address of _holder.
     * @params _supply: total no. of NFTs to mint
     * _holder: public address of the account to mint NFT on that.
     * _data: metadata hash of the NFT.
     * _parentTokenId: the token id of the NFT of which you are minting the references.
     * Requirements:
     * Can only be called by the deployer of the smart contract.
     */
    function mintRefNFT(uint256 _supply, address _holder, bytes memory _data,uint256 _parentTokenId) public  {
        require(_parentTokenId < NFTCounter, "Parent token id is not valid");
        _mint(_holder, NFTCounter, _supply, _data);
        references[_parentTokenId].push(NFTCounter);
        NFTCounter++;
    }

    /*
     * @dev Batch-Mints NFTs to the address of _holder.
     * @params _supply:total no. of NFT to mint
     * _holder:public address of the account to mint NFT on that.
     * _data metadata hash of the NFT.
     * Requirements:
     * Can only be called by the deployer of the smart contract.
     */
    function batchMintNFT(uint _supply,address _holder, bytes memory _data) public {
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
     * @dev return the list of token-ids of all the reference service tokens
     */
    function getReferences(uint _id) public view returns(uint256[] memory) {
        return references[_id];    
    }
    
    /*
     *@dev Called before every token transfer, maps the metadataHash of a NFT with the token id  
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

    function setBaseURI(string memory _baseURI) public onlyOwner{
        super._setURI(_baseURI);
    }

     /*
      * @dev returns the tokenURI.
      * Depends on the token-id and returns same thing.
      */
    function uri(uint256 _id) public view override returns (string memory) {
        require(_id<=getTotalMintedNFT(), "#uri: NONEXISTENT_TOKEN");
        string memory baseURI = getBaseURI(_id);
        string memory hash = getTokenMetadataHash(_id);
        return baseURI.concat(string(hash));
    }

     /*
      * @dev Tranfers the NFT to new address.
      * Can be called by the NFT holder.
      */
    function transfer(address _from,address _to, uint256 _id, uint256 _amount) public {
        super.safeTransferFrom(_from, _to, _id, _amount,"");
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
     * @dev Burns the token with the given tokenid.
     */
    function burnNFT(address account,uint256 id,uint256 amount) public{
        super._burn(account,id,amount);
        metadataHash[id]=bytes("0x0");
    }
    
    /*
     * @dev Sets approval to the operator to manage NFT held by the caller of the function.
     */
    function setApproval(address _operator, bool _approved) public onlyOwner{
        super.setApprovalForAll(_operator,_approved);
    }

    /*
     * @dev Give status of the approval rights, if the operator can manage NFT held by the account.
     */
    function isApproved(address account, address operator) public view returns(bool){
        return super.isApprovedForAll(account,operator);
    }
    
    /*
     * @dev Gives the balance of a particular NFT of given id held by an account.
     */
    function getBalance(address account, uint256 id) public view returns(uint256){
        return super.balanceOf(account,id);
    }

    /*    
     * @dev Returns the total minted NFTs by the contract.
     */
    function getTotalMintedNFT() public view returns(uint256){
        return NFTCounter;
    }
    

}