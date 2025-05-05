// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract RupiahToken is ERC20, Ownable {
    constructor() ERC20("RupiahToken", "IDR") Ownable(msg.sender) {
        _mint(msg.sender, 1000000000 * 10 ** decimals()); // Mint 1 miliar token ke owner
    }

    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }

    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }
}