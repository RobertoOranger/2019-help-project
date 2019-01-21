pragma solidity 0.5.0;  
import "./Thing.sol";

contract ThingFactory {

    mapping(address => address[]) public registeredThings;

    function createThing( string memory _name, string memory _surname, string memory _degree, uint _date) 

  
         public
         returns(address)
    {
        Thing newThing = (new Thing( _name, _surname, _degree, _date ));
        registeredThings[msg.sender].push(address(newThing));
        return address(newThing);
    }
}



