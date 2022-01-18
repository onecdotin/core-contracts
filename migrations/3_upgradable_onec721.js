const { deployProxy } = require('@openzeppelin/truffle-upgrades');

const Factory721 = artifacts.require('Factory721');

module.exports = async function (deployer) {
  const instance = await deployProxy(Factory721,{ deployer });
  console.log('Deployed', instance.address);
};