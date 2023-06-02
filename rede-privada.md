# Notas úteis para usar na rede de teste privada

Using GETH developer account address=0xcF4829a66a84666bCe53911625a548eb43cD4904   // Use aqui a conta gerada pelo sua instancia do GETH
geth attach ipc:///Users/jeffprestes/projetos/go/src/github.com/tgt-digital-apps/sol-smartcontracts/dev-chain/geth.ipc
windows = cd \Users\jeffp\go\src\github.com\tgt-digital-apps\sol-smartcontracts\dev-chain & geth attach \\.\pipe\geth.ipc

0xcF4829a66a84666bCe53911625a548eb43cD4904
web3.fromWei(eth.getBalance("0xcF4829a66a84666bCe53911625a548eb43cD4904"), "ether")

0x7aC722a69CDb106127f1f2cC86761B28176E5379
eth.getBalance("0x7aC722a69CDb106127f1f2cC86761B28176E5379")
web3.fromWei(eth.getBalance("0x7aC722a69CDb106127f1f2cC86761B28176E5379"), "ether")

0xDE831156265d58445A9D7373eE1DdE44299E6202
eth.getBalance("0xDE831156265d58445A9D7373eE1DdE44299E6202")
web3.fromWei(eth.getBalance("0xDE831156265d58445A9D7373eE1DdE44299E6202"), "ether")

eth.sendTransaction({from:"0xcF4829a66a84666bCe53911625a548eb43cD4904", to:"0x7aC722a69CDb106127f1f2cC86761B28176E5379", gasPrice: 875000000, value: web3.toWei(5, "ether")})
eth.sendTransaction({from:"0xcF4829a66a84666bCe53911625a548eb43cD4904", to:"0xDE831156265d58445A9D7373eE1DdE44299E6202", gasPrice: 875000000, value: web3.toWei(5, "ether")})
