// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0

pragma solidity ^0.8.22;

import {ERC20} from "@openzeppelin/contracts@5.1.0/token/ERC20/ERC20.sol";
import {ERC20Permit} from "@openzeppelin/contracts@5.1.0/token/ERC20/extensions/ERC20Permit.sol";
import {Ownable} from "@openzeppelin/contracts@5.1.0/access/Ownable.sol";

contract B00m is ERC20, Ownable, ERC20Permit {
    constructor(address  initialOwner)
        ERC20("B00m", "BMK")
        Ownable(initialOwner)
        ERC20Permit("B00m")
    {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}