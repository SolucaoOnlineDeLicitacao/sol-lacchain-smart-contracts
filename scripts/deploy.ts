import deployEntity from "./deploy-entity";
import deployAssociation from "./deploy-association";
import deploySupplier from "./deploy-supplier";



async function main() {
 await deployEntity();
 console.log("---------------------------");
 await deployAssociation();
 console.log("---------------------------");
 await deploySupplier();
 console.log("---------------------------");
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {0
  console.error(error);
  process.exitCode = 1;
});
