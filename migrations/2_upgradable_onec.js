const { deployProxy } = require('@openzeppelin/truffle-upgrades');

const Onec = artifacts.require('Factory1155');

module.exports = async function (deployer) {
  const instance = await deployProxy(Factory1155,{ deployer });
  console.log('Deployed', instance.address);
};