# SOL Smart Contracts

Smart Contracts para Solução Online de Licitação

## Compilação e Build

Este projeto esta configurado para ser compilado, testado e processar o deploy dos contratos com as ferramentas Hardhat e Foundry.
O projeto foi configurado para que os testes sejam construídos usando Typescript.
Abaixo alguns comandos úteis:

```shell
npx hardhat help
npx hardhat test
REPORT_GAS=true npx hardhat test
npx hardhat node
npx hardhat run scripts/deploy.ts
forge build
```