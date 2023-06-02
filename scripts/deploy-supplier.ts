import { ethers } from "hardhat";

export default async function deploySupplier() {
  const Supplier = await ethers.getContractFactory("Supplier");
  console.log("Iniciando o deploy do Fornecedor...")
  const supplierInstance = await Supplier.deploy("Fabrica de Embalagens Juquinha");
  await supplierInstance.deployed();
  console.log("Fornecedor deployado...");

  console.log("Obtendo informacoes do fornecedor do blockchain...");
  const name = await supplierInstance.name();
  const entityTypeHash = await supplierInstance.entityTypeHash();
  console.log("Informacoes obtidas")

  console.log(`Fornecedor (${entityTypeHash}) publicado no endereço ${supplierInstance.address} e com o nome de ${name}`);
}