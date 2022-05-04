// contracts/URAToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * URA Token
 * @author URANUSX
 */
contract URAToken is ERC20, ERC20Burnable, Ownable {
    constructor() ERC20("URA Token", "URA") {
        _mint(msg.sender, 980_000_000 * 10**decimals());
    }

    function decimals() public view virtual override returns (uint8) {
        return 6;
    }
}
