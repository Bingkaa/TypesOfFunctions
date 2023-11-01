// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts@4.9.0/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.9.0/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts@4.9.0/access/Ownable.sol";

// Standardized since we are using a pre-built library (used v4.9.0 instead of v5.0 since this requires v0.8.20)
contract myToken is ERC20, ERC20Burnable, Ownable {
    // Initializes the contract to use the ERC20, ERC20Burnable, and Ownable
    constructor(string memory name, string memory symbol, uint256 initialSupply) ERC20(name, symbol) {
        // Calls the _mint function from ERC20 library with the parameter of the owner and the starting number of coins 
        _mint(msg.sender, initialSupply);
    }

    // Mint function, creates coins
    // Can only be used by the owner with the onlyOwner modifier (from Ownable library)
    function mint(address account, uint256 amount) public onlyOwner {
        _mint(account, amount);
    }

    // Burn function, destroy coins from balance and total supply
    function burnFrom(address account, uint256 amount) public override  {
        // Calls the _burn function from the ERC20Burnable library
        _burn(account, amount);
    }

    // Transfer function, transfers coins
    function transfer(address recipient, uint256 amount) public virtual override returns (bool) {
        // Calls the _transfer function from the ERC20 library
        // _msgSender - sender, recipient - address of sendee, amount
        _transfer(_msgSender(), recipient, amount);
        return true;
    }
}
