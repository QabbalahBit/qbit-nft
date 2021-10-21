//contracts/QbitPlayer.sol
//SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract QbitPlayer is ERC1155, Ownable {
    uint256 public constant ARTWORK = 0;
    uint256 public constant RANK = 1;
    uint256 public constant LEAGUE =2;
    uint256 public constant ROLE = 3;
    uint256 public constant SKILL = 4;
    uint256 public constant GOLD = 5;
    uint256 public constant SILVER = 6;
    uint256 public constant BRONZE = 7;
    uint256 public constant SWORD = 8;
    uint256 public constant SHIELD = 9;

    constructor() ERC1155("../METADATA/{id}.json") {
        _mint(msg.sender, GOLD, 1, "RMR");
        _mint(msg.sender, SILVER, 1, "LYS");
        _mint(msg.sender, BRONZE, 1, "HBT");
        _mint(msg.sender, ARTWORK, 1, "NU");
        _mint(msg.sender, RANK, 1, "NOW");
        _mint(msg.sender, LEAGUE, 1, "NOW");
        _mint(msg.sender, ROLE, 1, "NOW");
        _mint(msg.sender, SKILL, 1, "NOW");
        _mint(msg.sender, SWORD, 1, "NOW");
        _mint(msg.sender, SHIELD, 1, "NOW");
    }

    function mint(address account, uint256 id, uint256 amount) public onlyOwner {
        _mint(account, id, amount, "");
    }

    function burn(address account, uint25 id, uint256 amount) public {
        require(msg.sender == account);
        _burn(account, id, amount);
    }
}