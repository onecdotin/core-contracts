const { deployProxy } = require('@openzeppelin/truffle-upgrades');

const Onec = artifacts.require('CloneFactory');

module.exports = async function (deployer) {
  const instance = await deployProxy(CloneFactory,{ deployer });
  console.log('Deployed', instance.address);
};