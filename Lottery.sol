pragma solidity >= 0.5.0 <0.9.0;

contract Lottery{
  address payable[] public players;
  address public manager;

  constructor(){
    manager = msg.sender;
  }

  recieve() external payable{
    require(msg.sender == 0.1 ether)
    players.push(payable(msg.sender));
  }

  function getBalance() public view returns(uint){
    require(msg.sender == manager);
    return address(this).balance;
  }

  function random() public view returns(uint){
    
  }
}
