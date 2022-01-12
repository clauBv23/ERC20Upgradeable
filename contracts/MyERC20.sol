//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";


// node_modules/@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol
// node_modules/@openzeppelin/contracts/token/ERC20/ERC20.sol

contract MyERC20 is ERC20Upgradeable, UUPSUpgradeable,OwnableUpgradeable {
    string private greeting;

    function myERC20_init(string memory name_, string memory symbol_ ) public{
        __ERC20_init(name_, symbol_);
    }

    // solhint-disable-next-line no-empty-blocks
    function _authorizeUpgrade(address) internal view override onlyOwner {}
}
