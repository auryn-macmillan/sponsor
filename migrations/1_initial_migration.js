const Migrations = artifacts.require("Migrations");
const Sponsor = artifacts.require("Sponsor");


module.exports = function(deployer) {
  deployer.deploy(Migrations);
  deployer.deploy(Sponsor);
};
