// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

import "./ZombieFactory.sol";


// Interface
contract KittyInterface {
    function getKitty(uint256 _id) external view returns(bool isGestating,
    bool isReady,
    uint256 cooldownIndex,
    uint256 nextActionAt,
    uint256 siringWithId,
    uint256 birthTime,
    uint256 matronId,
    uint256 sireId,
    uint256 generation,
    uint256 genes);
}


// contract inheritance
// ZombieFeeding inherits the functionality from ZombieFactory
contract ZombieFeeding is ZombieFactory {

    address ckAddress = 0x06012c8cf97BEaD5deAe237070F9587f8E7A266d;

    KittyInterface kittyContract = KittyInterface(ckAddress);

    function feedAndMultiply(uint _zombieId, uint _targetDna) public {
        require(msg.sender == zombieToOwner[_zombieId]);
        Zombie storage myZombie = zombies[_zombieId];

        // make sure _targetDna isn't longer than 16 digits
        _targetDna = _targetDna % dnaModulus;
        
        // 
        uint newDna = (myZombie.dna + _targetDna) / 2;

        // 
        _createZombie("NoName", newDna);
    }
    // chapter 7 lesson 2
}