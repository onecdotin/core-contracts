// const { upgradeProxy } = require('@openzeppelin/truffle-upgrades');

// const Onec = artifacts.require('Onec');
// const OnecV2 = artifacts.require('OnecV2');

// module.exports = async function (deployer) {
//   const existing = await Onec.deployed();
//   const instance = await upgradeProxy(existing.address, OnecV2, { deployer });
//   console.log("Upgraded", instance.address);
// };