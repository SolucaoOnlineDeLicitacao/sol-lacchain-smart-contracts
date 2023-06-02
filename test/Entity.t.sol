// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

import "forge-std/Test.sol";
import "../contracts/Entity.sol";

contract EntityTest is Test {
    Entity public entity;

    function setUp() public {
        entity = new Entity("Associacao Ribeirinha da Bahia de Todos os Santos", 2);        
    }

    function testAddAddress() public {
        entity.setAddressInfo("Rua Um, 127", "casa 02", "Rendeiras", "Saubara", "BA", "BR");
        assertEq(entity.state(), "BA");
    }

    function testContactInfo() public {
        entity.setContactInfo("contato@arbts.org.br", "5571123457890", "");
        assertEq(entity.phone1(), "5571123457890");
    }

    function testGovIdInfo() public {
        entity.setGovIdInfo("01123456000102", "");
        assertEq(entity.taxID(), "01123456000102");
    }

    function testIsInfoCompleted() public {
      entity.setAddressInfo("Rua Um, 127", "casa 02", "Rendeiras", "Saubara", "BA", "BR");
      entity.setContactInfo("contato@arbts.org.br", "5571123457890", "");
      entity.setGovIdInfo("01123456000102", "");
      assertEq(entity.isInfoCompleted(), true);
    }
}
