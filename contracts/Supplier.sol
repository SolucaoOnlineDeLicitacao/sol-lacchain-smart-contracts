// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

import "./Entity.sol";

/**
 * @title Supplier general information
 */
contract Supplier is Entity {

  bytes32 public entityTypeHash = keccak256(abi.encodePacked("supplier"));

  /**
   * @param _name name of the Supplier
   */
  constructor(
    string memory _name
  ) Entity(_name, 2) {  }

}