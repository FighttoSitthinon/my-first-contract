pragma solidity >=0.4.21 <0.9.0;

interface ERC20Interface {
    // uint256 public totSupply;
    
    function totalSupply() external view returns (uint);
    function balanceOf(address tokenOwner) external view returns (uint balance);
    function allowance(address tokenOwner, address spender) external view returns (uint remaining);
    function transfer(address to, uint tokens) external returns (bool success);
    function approve(address spender, uint tokens) external returns (bool success);
    function transferFrom(address from, address to, uint tokens) external returns (bool success);

    event Transfer(address indexed from, address indexed to, uint tokens); // event คงแนว web socket แหละ
    event Approval(address indexed tokenOwner, address indexed spender, uint tokens);
}