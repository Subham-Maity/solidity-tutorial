pragma solidity >=0.5.0 <0.9.0;

contract day2 {
uint public age; //Solidity will automatically create a getter function when we create public variables so we don't need any getter function 


function getter() public view returns(uint){
return age;
}

//let's try to increment the age 
function increment() public {
 age = age+1; //output:-Since by default it is 0, it will increase by 1 then based on how many times you click on the function it will increase by 1 everytime
   
}
   
function setter (uint newage) public {
       age = newage; // first click on setter and set the value then call the age = your input 
   }
   
   
}