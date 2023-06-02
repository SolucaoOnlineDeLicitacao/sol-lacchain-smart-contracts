import { ethers } from "hardhat";

export default async function deployAssociation() {
  const Association = await ethers.getContractFactory("Association");
  console.log("Iniciando o deploy da Associacao...")
  const associationInstance = await Association.deploy("Associacao Teste");
  await associationInstance.deployed();
  console.log("Associacao deployada...");

  console.log("Obtendo informacoes da associacao do blockchain...");
  const name = await associationInstance.name();
  const entityTypeHash = await associationInstance.entityTypeHash();
  console.log("Informacoes obtidas")

  console.log(`Associacao (${entityTypeHash}) publicada no endereço ${associationInstance.address} e com o nome de ${name}`);
}