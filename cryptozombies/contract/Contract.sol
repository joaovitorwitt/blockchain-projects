// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract ZombieFactory {
    uint dnaDigits = 16;

    // later we can we % to shorten an integer to 16 digits
    uint dnaModulus = 10**dnaDigits;

    // properties that zombies will have
    struct Zombie {
        string name;
        uint dna;
    }

    // 
    Zombie[] public zombies;

    function createZombie(string memory _name, uint _dna) public {
        zombies.push(Zombie(_name, _dna));
    }
}