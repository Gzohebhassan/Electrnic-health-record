pragma solidity >=0.7.0 <0.9.0;
contract doctorpayment
{
    address public doctor;
    address[] public patient;
    constructor() public
    {
        doctor = msg.sender;
    }
    function makepayment() public payable
    {
        require(msg.value > 0.1 ether);
        patient.push(msg.sender);
    }
    
}
