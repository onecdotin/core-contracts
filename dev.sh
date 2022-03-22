echo "Initializing dev environment..."
truffle compile --all
echo "Deploying factory contracts..."
echo "Deploying on 80001"
truffle migrate --network polygon_mumbai --reset --config ./truffle-config.js > ./logs/dev/80001.log
echo "Deploying on 97"
truffle migrate --network bsc_testnet --reset --config ./truffle-config.js > ./logs/dev/97.log
echo "Deploying on 3"
truffle migrate --network ropsten --reset --config ./truffle-config.js > ./logs/dev/3.log
echo "Execution Finished"

