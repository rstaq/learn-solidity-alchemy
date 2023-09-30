// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "./Hero.sol";

contract Mage is Hero(50) {

    function attack(Enemy _enemy) public override  {
        _enemy.takeAttack(AttackTypes.Spell);
        super.attack(_enemy);
    }
}

contract Warrior is Hero(200) {

    function attack(Enemy _enemy) public override  {
        _enemy.takeAttack(AttackTypes.Brawl);
        super.attack(_enemy);
    }
}