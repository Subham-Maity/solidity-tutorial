//SPDX-License-Identifier: UNLICENSED"
pragma solidity >=0.5.0 <0.9.0;

contract blockchain {

    /*string memory str = "hello";//->outside of the function if we try to compile
     this we can't compile this because it's stored in our contract/blockchain so can't declare it as a a memory 
     */
    string str = "hello";







    function getter() public pure returns (uint) {

        /*string str = "hello";  ->in function if we try to compile this we can't compile 
        this because it's stored in our memory not on the blockchain so we have to declare first 'memory'*/
        string memory str = "hello";






        uint age=10; //local variable 
        return age; //output 10

    }
}