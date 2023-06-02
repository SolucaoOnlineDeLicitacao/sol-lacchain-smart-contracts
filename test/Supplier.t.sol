// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

import "forge-std/Test.sol";
import "../contracts/Supplier.sol";

contract SupplierTest is Test {
    Supplier public supplier;

    function setUp() public {
        supplier = new Supplier("Fabrica de Embalagens Juquinha");        
    }

    function testAddAddress() public {
        supplier.setAddressInfo("Rua Dois, 987", "", "Distrito Industrial", "Santa Cruz do Rio Pardo", "SP", "BR");
        assertEq(supplier.state(), "SP");
    }

    function testContactInfo() public {
        supplier.setContactInfo("contato@juquinhaembalagens.com.br", "5516123457890", "");
        assertEq(supplier.phone1(), "5516123457890");
    }

    function testGovIdInfo() public {
        supplier.setGovIdInfo("01123456000102", "");
        assertEq(supplier.taxID(), "01123456000102");
    }

    function testIsInfoCompleted() public {
      supplier.setAddressInfo("Rua Dois, 987", "", "Distrito Industrial", "Santa Cruz do Rio Pardo", "SP", "BR");
      supplier.setContactInfo("contato@juquinhaembalagens.com.br", "5516123457890", "");
      supplier.setGovIdInfo("01123456000102", "");
      assertEq(supplier.isInfoCompleted(), true);
    }
}
