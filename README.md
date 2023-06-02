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

## Local Eth Node

Para reaproveitar deploys e também testar os Smart Contracts em uma EVM igual a da Mainnet do Ethereum uma opção é subir um GETH em modo **dev** mas com o datadir apontando para a pasta do projeto. 

```shell
geth --datadir ./dev-chain --dev --http --http.api personal,web3,eth,net --http.corsdomain "*" --http.vhosts "*" --http.addr 127.0.0.1 --graphql --graphql.corsdomain "*" --graphql.vhosts "*"
 
```

Veja mais em: https://geth.ethereum.org/docs/getting-started/dev-mode
