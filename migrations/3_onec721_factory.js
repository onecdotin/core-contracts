// const { deployProxy } = require('@openzeppelin/truffle-upgrades');

const Onec721Factory = artifacts.require('Onec721Factory');

module.exports = async function (deployer) {
  // const instance = await deployProxy(Factory1155,{ deployer, initializer: 'initialize'  });
  // console.log('Deployed', instance.address);
  deployer.deploy(Onec721Factory);
};