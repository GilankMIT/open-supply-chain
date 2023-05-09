//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

import "./model/CompanyChain.sol"
import "./model/SupplyNode.sol";

contract SupplyChain{

    mapping (bytes32 => CompanyChain) public companyChains;
    mapping (bytes32 => SupplyNode) public allSupplyNodes;
    mapping (bytes32 => bytes32[]) public initialCompanySupplyNodes;

    event CompanyChainAdded(bytes32 id);
    event SupplyNodeAdded(bytes32 id);

    function AddNewSupplyChain(string memory _supplyChainName, string memory _companyName) public{
        CompanyChain memory newCompanyChain;
        bytes32 id;
        (newCompanyChain, id) = composeNewCompanyChain(_supplyChainName, _companyName);
        companyChains[id] = newCompanyChain;
        emit CompanyChainAdded(id);
    }

    function AddNewNodeChainForSupplyChain(bytes32 _companyChainId, string memory _data, bool _isInitial, bytes32 _prevNodeId) public{
        
        require(companyChains[_companyChainId].Id != bytes32(0), "Company Chain ID is not exists");

        if(!_isInitial){
            require(_prevNodeId != bytes32(0), "previous node must not be blank for non initial node");
            require(allSupplyNodes[_prevNodeId].Id != bytes32(0), "previous node not found");
            require(allSupplyNodes[_prevNodeId].CompanyChainId == _companyChainId, "previous node does not belong to the company id");
        }

        SupplyNode memory newSupplyNode;
        bytes32 id;

        (newSupplyNode, id) = composeNewSupplyNode(_companyChainId, _data, _isInitial, _prevNodeId);
        allSupplyNodes[id] = newSupplyNode;

        if(_isInitial){
            initialCompanySupplyNodes[_companyChainId].push(id);
        }else{
            SupplyNode memory prevSupplyNode = allSupplyNodes[_prevNodeId];
            prevSupplyNode.NextNodeId = id;
            allSupplyNodes[_prevNodeId] = prevSupplyNode;
        }

        emit SupplyNodeAdded(id);
    }

}