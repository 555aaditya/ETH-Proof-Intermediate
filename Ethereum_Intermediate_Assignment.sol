// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// write a smart contract that implements the require(), assert() and revert() statements.

contract errorHandling
{

    // address variable that stores the address of the owner
    address owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    function testAssert(address _z) public view returns (address)
    {
        // checks if the person deploying the contract is the owner
        assert(msg.sender==_z);
        return _z;

    function testRevert(uint _x) public pure returns (uint) 
    {
            // checks if the value of _x is greater than 10 or not and reverts an error if it is not
            if(_x<10)
            {
                revert("enter a value greater than 10");
            }
            return _x;
    }

    function testRequire(uint numerator, uint denominator) public pure returns (uint) 
    {    
        // checks if the denominator is not equal to 0, and returns an error if it is zero or returns the quotient if it is not equal to 0
        require(denominator != 0, "Denominator cannot be zero");
        uint _z = numerator / denominator;
        return _z;
    }

}
