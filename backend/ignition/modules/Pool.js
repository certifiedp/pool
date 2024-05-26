const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

const PoolModule = buildModule("PoolModule", (m) => {
  const pool = m.contract("Pool");

  return { pool };
});

module.exports = PoolModule;