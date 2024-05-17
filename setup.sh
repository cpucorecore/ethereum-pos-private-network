bash reset.sh
expect -f import-pk.sh

./prysmctl testnet generate-genesis --fork capella --num-validators 64 --genesis-time-delay 60 --chain-config-file config.yml --geth-genesis-json-in genesis.json  --geth-genesis-json-out genesis.json --output-ssz genesis.ssz

./geth --datadir=gethdata init genesis.json
