pragma solidity ^0.4.2;
contract Test_contract{
  
    mapping (address => uint) public balances;
    
    function invest() public payable{
         if(msg.value < 1 ether){
             revert();
        
         }
       }
     function balance() public view returns (uint) {
     
        return  balances[msg.sender];
    }
     uint i=block.timestamp;
    function withdraw() public payable{
        while(i<= block.timestamp+1 hours)
         require(address(this).balance>=balances[msg.sender]);
        
         msg.sender.transfer(address(this).balance*uint(1/10));
         i++;
    }
    function depositsBalance() public view returns (uint) {
        return address(this).balance;
    }
 
}
