const URAToken = artifacts.require("URAToken");
const URANFT = artifacts.require("URANFT");

module.exports = function (deployer, network, accounts) {
    // deploy URA
    deployer.deploy(URAToken).then(() => {
        // deploy UNFT
        return deployer.deploy(URANFT);
    });
};