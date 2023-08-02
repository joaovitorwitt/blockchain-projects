// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

import "./ZombieFactory.sol";

// contract inheritance
// ZombieFeeding inherits the functionality from ZombieFactory
contract ZombieFeeding is ZombieFactory {

    function feedAndMultiply(uint _zombieId, uint _targetDna) public {
        require(ownerZombieCount[msg.sender] == _zombieId);
    }
    // chapter 7 lesson 2
}