const Onec721Factory = artifacts.require('Onec721Factory');

module.exports = async function (deployer) {
  deployer.deploy(Onec721Factory);
};