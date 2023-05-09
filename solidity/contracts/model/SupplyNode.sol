//SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

struct SupplyNode{
    bytes32     Id;
    bytes32     CompanyChainId;
    string      Data;
    address     IssuerAddress;
    bool        IsInitial;
    bytes32     PrevNodeId;
    bytes32     NextNodeId;
}

function composeNewSupplyNode(bytes32 _companyChainId, string memory _data, bool _isInitial, bytes32 _prevNodeId) view returns (SupplyNode memory, bytes32){
    bytes32 _id = keccak256(abi.encodePacked(msg.sender, block.timestamp, _data));

    SupplyNode memory newSupplyNode;

    newSupplyNode.Id = _id;
    newSupplyNode.CompanyChainId = _companyChainId;
    newSupplyNode.Data = _data;
    newSupplyNode.IssuerAddress = msg.sender;
    newSupplyNode.IsInitial = _isInitial;
    newSupplyNode.PrevNodeId = _prevNodeId;

    return (newSupplyNode, _id);
}