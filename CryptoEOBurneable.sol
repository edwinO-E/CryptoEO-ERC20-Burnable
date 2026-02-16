// Licencia
// SPDX-License-Identifier: LGPL-3.0-only

//Version solidity
pragma solidity 0.8.33;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol"; //  adds burn function : - burn(ammout) destroys tokens from msg.sender balance
                                                                                                  //- burnfrom (account, amount): destroy token from account if msg.sender has allowance

//Contracy
contract CryptoEOBurneable is ERC20, ERC20Burnable {

    //Variables
    uint256 public constant initialSupply = 1000 * 1e18;
    
    //Constructor
    //Mints a fixed supply at deploymetn
    constructor(string memory name_, string memory symbol_) ERC20(name_, symbol_) {
        _mint(msg.sender, initialSupply);

    }
}