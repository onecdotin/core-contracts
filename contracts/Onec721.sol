// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/token/ERC721/ERC721Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "./strings.sol";

contract Onec721 is Initializable,PausableUpgradeable, OwnableUpgradeable,ERC721Upgradeable{

    using StringsNative for string;

    uint private NFTCounter;
    // token-id to metadata hash
    mapping(uint256 => bytes) private metadataHash;
    // tokenIds to refTokenIds
    mapping(uint256 => uint256[]) private references;

    string private contractMetadata;

    string private baseURI;

    event dummyEvent(address indexed owner,address indexed real);

    function initialize(string memory _name,string memory _symbol,string memory _baseURI,string memory _contractMetadata) public initializer {
        ERC721Upgradeable.__ERC721_init(_name,_symbol);
        OwnableUpgradeable.__Ownable_init();
        PausableUpgradeable.__Pausable_init();
        NFTCounter = 0;
        contractMetadata = _contractMetadata;
        baseURI=_baseURI;
    }

    function transferOwn(address _newOwner) public {
        emit dummyEvent(msg.sender,this.owner());
       // this.transferOwnership(_newOwner);
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

    function getTokenMetadataHash(uint256 _tokenId) public view returns (string memory) {
        return string(metadataHash[_tokenId]);
    }

    function setTokenMetadataHash(uint256 _tokenId, bytes memory _metadataHash) public onlyOwner {
        metadataHash[_tokenId] = _metadataHash;
    }

    function getBaseURI() public view returns (string memory){
        return baseURI;
    }

    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        require(_exists(tokenId), "ERC721Metadata: URI query for nonexistent token");
        string memory hash = getTokenMetadataHash(tokenId);
        return baseURI.concat(string(hash));
    }

    /*
     *@dev Called before every token transfer  
     */

    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 tokenId
    ) internal override {
        require(!paused(), "ERC1155Pausable: token transfer while paused");
    }


    /*
     * @dev Mints NFT to the address of _holder.
     * @params
     * _holder:public address of the account to mint NFT on that.
     * _data: metadata hash of the NFT.
     * Requirements:
     * Can only be called by the deployer of the smart contract.
     */
    function mintNFT(address _holder, bytes memory _data) public onlyOwner{
        _safeMint(_holder, NFTCounter, _data);
        setTokenMetadataHash(NFTCounter, _data);
        NFTCounter++;        
    }

    /*
     * @dev Mints Reference  to the address of _holder.
     * @params
     * _holder: public address of the account to mint NFT on that.
     * _data: metadata hash of the NFT.
     * _parentTokenId: the token id of the NFT of which you are minting the references.
     * Requirements:
     * Can only be called by the deployer of the smart contract.
     */
    function mintRefNFT(address _holder, bytes memory _data,uint256 _parentTokenId) public onlyOwner {
        require(_parentTokenId < NFTCounter, "Parent token id is not valid");
        _safeMint(_holder, NFTCounter, _data);
        references[_parentTokenId].push(NFTCounter);
        setTokenMetadataHash(NFTCounter, _data);
        NFTCounter++;
    }

    /*
     * @dev return the list of token-ids of all the reference service tokens
     */
    function getReferences(uint _id) public view returns(uint256[] memory) {
        return references[_id];    
    }


     /*
      * @dev Tranfers the NFT to new address.
      * Can be called by the NFT holder.
    */
    function transfer(address _from,address _to, uint256 _tokenId,bytes memory _data) public onlyOwner {
        super.safeTransferFrom(_from,_to, _tokenId,_data);
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
    function burnNFT(uint256 _id) public onlyOwner{
        super._burn(_id);
        setTokenMetadataHash(NFTCounter, bytes("0x0"));
    }



}