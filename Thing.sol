pragma solidity ^0.5.0;


contract Thing {
        
    address name;
    address surname;
    address degree;
    uint date;

    function thing (address _name, address _surname, address _degree, uint _date) public {
        name = _name;               
        surname = _surname;                        
        degree = _degree;                                   
        date = _date;                            
                                       
    }
}    