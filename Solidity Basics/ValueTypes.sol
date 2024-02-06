// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

//Data types - values and references

contract ValueTypes {
    bool public b = true;
    uint public u = 123; //uint = uint 256 0 to 2**256 - 1
                         //uint = uint 256 0 to 2**8 - 1
                         //uint = uint 256 0 to 2**16 - 1
    int public i = -123; //int = int256 - 2**255 to 2*255 - 1
                         //int = int256 - 2**217 to 2*217 - 1
    int public minInt = type(int).min;
    int public maxInt = type(int).max;
    address public addr = 0x0000000000450702bC4f750fD1E7Ecad7054c4f1;
    //bytes32 public b32 =;

}