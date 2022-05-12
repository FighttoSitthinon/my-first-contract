const DoggyCoin = artifacts.require("DoggyCoin");

module.exports = function (deployer) {
  deployer.deploy(DoggyCoin, 10000000, 'DoggyCoin', 36, 'DOG');
};
