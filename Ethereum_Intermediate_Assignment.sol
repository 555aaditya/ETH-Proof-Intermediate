// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// write a smart contract that implements the require(), assert() and revert() statements.

contract errorHandling
{
    address owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    function testRequire() public view
    {
        // checks if the person deploying the contract is the owner, if not it returns an error
        require(msg.sender==owner,"You are not the owner");
    }

    function testRevert(uint _x) public pure returns (uint) 
    {
            if(_x<10)
            {
                revert("enter a value greater than 10");
            }
            return _x;
    }

    function testRequire(uint numerator, uint denominator) public pure returns (uint) 
    {
        require(denominator != 0, "Denominator cannot be zero");
        uint _z = numerator / denominator;
        return _z;
    }

}