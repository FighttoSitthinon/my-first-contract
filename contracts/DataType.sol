pragma solidity >=0.8.13;

contract   DataType{
    uint256 x = 23;
    int256 y = -13;
    uint8 counter = 0;
    bool isFlag = true;
    address owner = msg.sender;
    bytes32 bMsg = 'test';
    string sMsg = 'test';
    constructor(){

    }

    function GetAll() public view returns (uint256, int256, uint8, bool, address, bytes32, string memory) {
        return (x, y, counter, isFlag, owner, bMsg, sMsg);
    }
}