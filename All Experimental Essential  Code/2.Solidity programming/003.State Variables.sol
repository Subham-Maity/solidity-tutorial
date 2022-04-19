pragma solidity >=0.5.0 <0.9.0;

contract xam {


    //Unsigned Integers: uint
    //unit is a dataType and age is state variable name 
    //unit age ; 
    //age = 10; //we can't declare then initialize

    uint public age = 10; //if we use public then we can see the age value 
     //output -> 10





   //**age 10-> 100 
   constructor(){
   age=100;
   }
    //output -> 100




   //solidity don't have any null concept so it will return the value zero 
   uint public age1;

   //output -> 0




   //let's set the value of a declared variable 
   uint public setVar; 
   function setter() public{
       setVar = 20; 

       //output -> 20



  

   }

}