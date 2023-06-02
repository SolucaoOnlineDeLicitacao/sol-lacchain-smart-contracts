import { ethers } from "hardhat";

export default async function deployEntity() {
  const Entity = await ethers.getContractFactory("Entity");
  console.log("Iniciando o deploy da Entidade...")
  const entityInstance = await Entity.deploy("Teste", 0);
  await entityInstance.deployed();
  console.log("Entidade deployada...");

  console.log("Obtendo o nome da entidade do blockchain...");
  const name = await entityInstance.name();
  console.log("Nome obtido")

  console.log(`Entidade publicada no endereço ${entityInstance.address} e com o nome de ${name}`);
}