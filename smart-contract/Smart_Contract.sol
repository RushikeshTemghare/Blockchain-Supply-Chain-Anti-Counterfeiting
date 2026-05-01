// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SupplyChainAntiCounterfeit {

    struct DataEntry {
        string data; // Data submitted (e.g., temperature, timestamp)
        address sender; // DID of the sender
        uint256 timestamp; // Time of submission
        bool isValid; // Validation status
    }

    address public admin;
    mapping(address => bool) public authorizedNodes; // Stores authorized DIDs
    DataEntry[] public dataEntries;

    event DataSubmitted(address indexed sender, uint256 indexed timestamp, string data, bool isValid);
    event NodeAuthorized(address indexed node);
    event NodeRevoked(address indexed node);

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can perform this action");
        _;
    }

    modifier onlyAuthorizedNode() {
        require(authorizedNodes[msg.sender], "Node not authorized");
        _;
    }

    constructor() {
        admin = msg.sender; // Assign contract deployer as admin
    }

    function authorizeNode(address node) external onlyAdmin {
        authorizedNodes[node] = true;
        emit NodeAuthorized(node);
    }

    function revokeNode(address node) external onlyAdmin {
        authorizedNodes[node] = false;
        emit NodeRevoked(node);
    }

    function submitData(string memory data) external onlyAuthorizedNode {
        uint256 currentTime = block.timestamp;
        bool valid = validateData(data, currentTime);

        dataEntries.push(DataEntry({
            data: data,
            sender: msg.sender,
            timestamp: currentTime,
            isValid: valid
        }));

        emit DataSubmitted(msg.sender, currentTime, data, valid);
    }

    function validateData(string memory /*data*/, uint256 /*timestamp*/) internal pure returns (bool) {
        // Placeholder for validation logic: Assume all data is valid
        return true;
    }

    function getAllData() external view returns (DataEntry[] memory) {
        return dataEntries;
    }
}
