pragma solidity 0.5.0;  
import "./Thing.sol";

contract ThingFactory {

    mapping(address => address[]) public registeredThings;

    function createThing( string memory _name, string memory _surname, string memory _degree, uint _date) 

  
         public
         returns(address)
    {
        Thing newThing = (new Thing( _name, _surname, _degree, _date )); //visualstudio terminal said: "identifier not funnd or not unique"
        registeredThings[msg.sender].push(address(newThing));           
        return address(newThing);                                        
    }
}



// line 14 can i write this line?: Thing newThing = new Thing();
