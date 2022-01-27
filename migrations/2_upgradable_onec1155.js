// const { deployProxy } = require('@openzeppelin/truffle-upgrades');

const Onec1155Factory = artifacts.require('Onec1155Factory');

module.exports = async function (deployer) {
  // const instance = await deployProxy(Factory1155,{ deployer, initializer: 'initialize'  });
  // console.log('Deployed', instance.address);
  deployer.deploy(Onec1155Factory);
};