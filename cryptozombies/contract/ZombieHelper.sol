// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

import "./ZombieFeeding.sol";


contract ZombieHelper is ZombieFeeding {
    modifier aboveLevel(uint _level, uint _zombieId) {
        require(zombies[_zombieId].level >= _level);
        _;
    }

    function changeName(uint _zombieId, string calldata _newName) external aboveLevel(2, _zombieId) {
        require(msg.sender == zombieToOwner[_zombieId]);
        zombies[_zombieId].name = _newName;
    }

    function changeDna(uint _zombieId, uint _newDna) external aboveLevel(20, _zombieId) {
        require(msg.sender == zombieToOwner[_zombieId]);
        zombies[_zombieId].dna = _newDna;
    }

    function getZombiesByOwner(address _owner) external view returns (uint[] memory) {}
}