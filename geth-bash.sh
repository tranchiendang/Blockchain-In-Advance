#!/bin/sh

PORT=3000
RPCPORT=8545
NETWORKID=9999
RPCADDRESS="0.0.0.0"
RPCAPI="eth,net,web3,personal,parity,miner"
DATADIR=/home/$USER/blockchain-network/
IPCPATH=/home/$USER/blockchain-network/geth.ipc

geth --datadir $DATADIR init genesis.json

nohup geth --port $PORT --networkid $NETWORKID --nodiscover --datadir $DATADIR --maxpeers=0 --rpc --rpcport $RPCPORT --rpcaddr $RPCADDRESS --rpccorsdomain "*" --rpcapi $RPCAPI &

export IPCPATH