pragma solidity 0.4.20;

contract Game{
    address public owner;

    function Game() public{
        owner=msg.sender;
    }

    function kill() public{
        if(msg.sender==owner) selfdestruct(owner);
    }
}