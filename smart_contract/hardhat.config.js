//https://eth-goerli.g.alchemy.com/v2/UR_3QJl3aV3qVNJbCV88jQMq8CrubZkH

//waffle is a plugin to build smart contract test.
require('@nomiclabs/hardhat-waffle');

module.exports = {
  solidity: '0.8.1',
  networks: {
    Goerli: { 
      url:'https://eth-goerli.g.alchemy.com/v2/UR_3QJl3aV3qVNJbCV88jQMq8CrubZkH',
      accounts: ['b1aa2a4b2bedadf6a6850f551348344d8f16e1839b49e2f7382efdca48dc6eef']
    }
  }
}
