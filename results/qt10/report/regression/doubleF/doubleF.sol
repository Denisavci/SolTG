// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// src/regression/doubleF.sol

// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC721/ERC721.sol)

contract doubleF{
    uint256 x;
    function f() public  {
        x++;
    }

    function g() public view returns (uint256) {
        assert(true);
        if(x > 2){
            return 2;
        }
        return 1;
    }
}
