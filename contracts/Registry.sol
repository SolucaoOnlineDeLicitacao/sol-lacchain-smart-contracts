// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/access/AccessControlEnumerable.sol";

contract Registry is AccessControlEnumerable{

    mapping(address => mapping (uint256 => bytes32)) _registryTable;
    
    constructor() {
        _setupRole(DEFAULT_ADMIN_ROLE, _msgSender());
    }

    function register(address owner, uint256 registryID, bytes32 object) public {
        require(hasRole(DEFAULT_ADMIN_ROLE, _msgSender()), "Registry: missing write permission");
        _registryTable[owner][registryID] = object;
    }

    function getRegistry(address owner, uint256 registryID) public view returns (bytes32) {
        return _registryTable[owner][registryID];
    }
}