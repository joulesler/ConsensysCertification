pragma solidity >=0.8.0;

import "libraries\ReentrancyGuard.sol";

contract AnotherContract {

    function test() external returns (bool) {}
    fallback() external payable {

    }
}

contract Practice {

    address owner;
    address payable anotherContract;
    mapping(address => LinkedList) list;
    
    struct LinkedList {
        address previousPointer;
        address nextPointer;
        int someData;
    }

    modifier onlyOwner (address _owner) {
        require( _owner == owner, "Sender is not owner");
        _;

    }

    function add (int someData) public returns (bool) {

    }

    function get (int someData) public view returns (bool) {

    }

    function checkAll(int someData) public virtual view returns (LinkedList memory listElement){

    } 

    function doSend() public {
        (bool success) = AnotherContract(anotherContract).test();
    }
}