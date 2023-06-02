// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title Entity (people or companies) general information
 */
contract Entity is Ownable {

  string public name;
  uint8 public entityType;
  string public address1;
  string public address2;
  string public address3;
  string public city;
  string public state;
  string public country;
  string public taxID;
  string public govID;
  string public email;
  string public phone1;
  string public phone2;

  /**
   * @param _name name of the entity
   * @param _entityType 1 for people and 0 for companies
   */
  constructor(
    string memory _name,
    uint8 _entityType
  ) {
    name = _name;
    entityType = _entityType;
  }

  /**
   * @notice Defines Entity address info
   * @dev it is not part of constructor to avoid stack too deep. 
   * @param _address1 street address
   * @param _address2 e.g.: complementary street address info such as reference or apartment number etc
   * @param _address3 e.g.: neighborhood info
   * @param _city city where the entity is based
   * @param _state state or province code where the entity is based. Suggested to be 2 or 3 digits max
   * * @param _country country where the entity is based, it must follow https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements spec
   */
  function setAddressInfo(
    string memory _address1,
    string memory _address2,
    string memory _address3,
    string memory _city,
    string memory _state,
    string memory _country
  ) public returns (bool) {
    address1 = _address1;
    address2 = _address2;
    address3 = _address3;
    city = _city;
    state = _state;
    country = _country;
    return true;
  }

  /**
   * @notice Stores Entity's Government identification
   * @dev it is not part of constructor to avoid stack too deep. 
   * @param _taxID Entity Tax ID, such as CPF or CNPJ in Brazil
   * @param _govID Entity government ID, such as RG in Brazil or DNI in Argentina
   */
  function setGovIdInfo(
    string memory _taxID,
    string memory _govID
  ) public returns (bool) {
    taxID = _taxID;
    govID = _govID;
    return true;
  }

  /** 
   * @notice Stores Entity's contact information
   * @dev it is not part of constructor to avoid stack too deep. 
   * @param _email Entity email
   * @param _phone1 Entity landline phone number for companies or mobile phone for people. Only number. It should have country code and local area code too. E.g.: 5571123457890
   * @param _phone2 Entity secondary contact phone number
  */
  function setContactInfo(
    string memory _email,
    string memory _phone1,
    string memory _phone2
  ) public returns (bool) {
    email = _email;
    phone1 = _phone1;
    phone2 = _phone2;
    return true;
  }

  function isInfoCompleted() public view returns(bool) {
    if (bytes(address1).length < 1) {
      return false;
    }
    if (bytes(city).length < 1) {
      return false;
    }
    if (bytes(country).length < 1) {
      return false;
    }
    if (bytes(state).length < 1) {
      return false;
    }
    if (bytes(email).length < 1) {
      return false;
    }
    if (bytes(taxID).length < 1) {
      return false;
    }
    return true;
  }
}