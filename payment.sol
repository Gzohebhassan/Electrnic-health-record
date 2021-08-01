pragma solidity >=0.7.0 <0.9.0;
contract payment
{
    address public admin;
    address[] public insurance;
    constructor() public
    {
        admin = msg.sender;
    }
    function makepayment() public payable
    {
        require(msg.value > 0.1 ether);
        insurance.push(msg.sender);
    }
    
}
