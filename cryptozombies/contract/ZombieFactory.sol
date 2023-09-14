// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

import "./Ownable.sol";

contract ZombieFactory is Ownable {
    // Events
    // events are a way for the contract to communicate with the frontend
    event NewZombie(uint zombieId, string name, uint dna);

    uint dnaDigits = 16;
    // later we can we % to shorten an integer to 16 digits
    uint dnaModulus = 10**dnaDigits;
    uint cooldownTime = 1 days;

    // properties that zombies will have
    struct Zombie {
        string name;
        uint dna;
        uint32 level;
        // time period a zombie has to wait after feeding or attacking
        uint32 readyTime;
        uint16 winCount;
        uint16 lossCount;
    }

    // array of zombies
    Zombie[] public zombies;

    // zombie will have and id to look up the owner of the zombie   
    mapping (uint => address) public zombieToOwner;
    // how many zombies the person has
    mapping (address => uint) ownerZombieCount;

    function _createZombie(string memory _name, uint _dna) internal {
        zombies.push(Zombie(_name, _dna, 1, uint32(block.timestamp + cooldownTime), 0, 0));
        uint id = zombies.length - 1;

        // store the address of the person who owns the zombie
        zombieToOwner[id] = msg.sender;

        // this will store the number of zombies that this address will have
        ownerZombieCount[msg.sender]++;
        // fire the event after the zombie is created and pushed into the array
        emit NewZombie(id, _name, _dna);
    }

    function _generateRandomDna(string memory _str) private view returns (uint) {
        uint rand = uint(keccak256(abi.encodePacked(_str)));
        // since we only want 16 digits for the dna
        return rand % dnaModulus;
    }

    function createRandomZombie(string memory _name) public {
        require(ownerZombieCount[msg.sender] == 0);
        uint randDna = _generateRandomDna(_name);
        _createZombie(_name, randDna);
    }
}

