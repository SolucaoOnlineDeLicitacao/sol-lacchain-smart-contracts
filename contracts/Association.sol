// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

import "./Entity.sol";

/**
 * @title Association general information
 */
contract Association is Entity {

  bytes32 public entityTypeHash = keccak256(abi.encodePacked("association"));

  /**
   * @param _name name of the Association
   */
  constructor(
    string memory _name
  ) Entity(_name, 2) {  }

}