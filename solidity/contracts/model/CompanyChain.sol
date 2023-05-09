//SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

struct CompanyChain{
    bytes32     Id;
    string      SupplyChainName;
    string      CompanyName;
    address     OwnerAddress;
}


function composeNewCompanyChain(string memory _supplyChainName, string memory _companyName) view returns (CompanyChain memory, bytes32){
    bytes32 _id = keccak256(abi.encodePacked(msg.sender, block.timestamp, _supplyChainName, _companyName));

    CompanyChain memory newCompanyChain;

    newCompanyChain.Id = _id;
    newCompanyChain.SupplyChainName = _supplyChainName;
    newCompanyChain.CompanyName = _companyName;
    newCompanyChain.OwnerAddress = msg.sender;

    return (newCompanyChain, _id);
}