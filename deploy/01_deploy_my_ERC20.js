module.exports = async ({ getNamedAccounts, deployments }) => {
  const { deploy } = deployments;
  const { deployer } = await getNamedAccounts();

  // this contract is upgradeable through uups (EIP-1822)
  await deploy('MyERC20', {
    from: deployer,
    proxy: {
      proxyContract: 'UUPSProxy',
      init: {
        methodName: 'initialize',
        args: ['Token Name', 'MT'],
      },
    },
    log: true,
    args: [],
  });
};

module.exports.tags = ['my_token'];
