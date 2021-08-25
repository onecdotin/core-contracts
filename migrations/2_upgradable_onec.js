const { deployProxy } = require('@openzeppelin/truffle-upgrades');

const Onec = artifacts.require('Onec');

module.exports = async function (deployer) {
  const instance = await deployProxy(Onec,{ deployer });
  console.log('Deployed', instance.address);
};