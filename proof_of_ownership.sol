pragma solidity >=0.7.0 <0.9.0;
contract Proof { 
    struct FileDetails  
    {       
        uint timestamp;  
        string patientname;    
        
    }
    mapping (string => FileDetails) files;
    event logFileAddedStatus(bool status, uint timestamp, string patientname, string patientID);
        
    function set(string memory patientname, string memory patientID) public   
    {        
        if(files[patientID].timestamp == 0)        
        {            
            files[patientID] = FileDetails(block.timestamp, patientname);
            emit logFileAddedStatus(true, block.timestamp, patientname, patientID);        
        }        
        else        
        { 
            emit logFileAddedStatus(false, block.timestamp, patientname, patientID);        
            
        }
    }
    function get(string memory patientID) public returns (uint timestamp, string memory patientname)    
    {  
        return (files[patientID].timestamp, files[patientID].patientname);    
    } 
}
