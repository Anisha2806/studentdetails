const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");
module.exports = buildModule("studentsModule", (m) => {
    const students=m.contract("studentdb");
    return {students};
})