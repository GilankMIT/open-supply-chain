let supplyChainABI = [
	{
		"anonymous": false,
		"inputs": [
			{
				"indexed": false,
				"internalType": "bytes32",
				"name": "id",
				"type": "bytes32"
			}
		],
		"name": "CompanyChainAdded",
		"type": "event"
	},
	{
		"anonymous": false,
		"inputs": [
			{
				"indexed": false,
				"internalType": "bytes32",
				"name": "id",
				"type": "bytes32"
			}
		],
		"name": "SupplyNodeAdded",
		"type": "event"
	},
	{
		"inputs": [
			{
				"internalType": "bytes32",
				"name": "_companyChainId",
				"type": "bytes32"
			},
			{
				"internalType": "string",
				"name": "_data",
				"type": "string"
			},
			{
				"internalType": "bool",
				"name": "_isInitial",
				"type": "bool"
			},
			{
				"internalType": "bytes32",
				"name": "_prevNodeId",
				"type": "bytes32"
			}
		],
		"name": "AddNewNodeChainForSupplyChain",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "string",
				"name": "_supplyChainName",
				"type": "string"
			},
			{
				"internalType": "string",
				"name": "_companyName",
				"type": "string"
			}
		],
		"name": "AddNewSupplyChain",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "bytes32",
				"name": "",
				"type": "bytes32"
			}
		],
		"name": "allSupplyNodes",
		"outputs": [
			{
				"internalType": "bytes32",
				"name": "Id",
				"type": "bytes32"
			},
			{
				"internalType": "bytes32",
				"name": "CompanyChainId",
				"type": "bytes32"
			},
			{
				"internalType": "string",
				"name": "Data",
				"type": "string"
			},
			{
				"internalType": "address",
				"name": "IssuerAddress",
				"type": "address"
			},
			{
				"internalType": "bool",
				"name": "IsInitial",
				"type": "bool"
			},
			{
				"internalType": "bytes32",
				"name": "PrevNodeId",
				"type": "bytes32"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "bytes32",
				"name": "",
				"type": "bytes32"
			}
		],
		"name": "companyChains",
		"outputs": [
			{
				"internalType": "bytes32",
				"name": "Id",
				"type": "bytes32"
			},
			{
				"internalType": "string",
				"name": "SupplyChainName",
				"type": "string"
			},
			{
				"internalType": "string",
				"name": "CompanyName",
				"type": "string"
			},
			{
				"internalType": "address",
				"name": "OwnerAddress",
				"type": "address"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "bytes32",
				"name": "",
				"type": "bytes32"
			},
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"name": "initialCompanySupplyNodes",
		"outputs": [
			{
				"internalType": "bytes32",
				"name": "",
				"type": "bytes32"
			}
		],
		"stateMutability": "view",
		"type": "function"
	}
]