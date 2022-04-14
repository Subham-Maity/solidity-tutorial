//SPDX-License-Identifier: UNLICENSED"
pragma solidity >=0.5.0 <0.9.0;

contract blockchain {
int number;
constructor() 
{
number = 5;
}
function getter() public view returns(int){

return number;

}

function increment() public {
number = number+1;

}
}