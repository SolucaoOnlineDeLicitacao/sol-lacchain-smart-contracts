// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

import "forge-std/Test.sol";
import "../contracts/Association.sol";

contract AssociationTest is Test {
    Association public association;

    function setUp() public {
        association = new Association("Associacao Ribeirinha da Bahia de Todos os Santos");        
    }

    function testAddAddress() public {
        association.setAddressInfo("Rua Um, 127", "casa 02", "Rendeiras", "Saubara", "BA", "BR");
        assertEq(association.state(), "BA");
    }

    function testContactInfo() public {
        association.setContactInfo("contato@arbts.org.br", "5571123457890", "");
        assertEq(association.phone1(), "5571123457890");
    }

    function testGovIdInfo() public {
        association.setGovIdInfo("01123456000102", "");
        assertEq(association.taxID(), "01123456000102");
    }

    function testIsInfoCompleted() public {
      association.setAddressInfo("Rua Um, 127", "casa 02", "Rendeiras", "Saubara", "BA", "BR");
      association.setContactInfo("contato@arbts.org.br", "5571123457890", "");
      association.setGovIdInfo("01123456000102", "");
      assertEq(association.isInfoCompleted(), true);
    }
}
