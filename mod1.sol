// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleBank {
    mapping(address => uint256) public balances;
    address public owner;
    event Deposit(address indexed account, uint256 amount);
    event Withdrawal(address indexed account, uint256 amount);
     constructor() {
        owner = msg.sender;
    }

    function deposit(uint256 value) external payable {
        require(value > 0, "Deposit amount must be greater than 0");
        assert(msg.sender != 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
        balances[msg.sender] += value;
        emit Deposit(msg.sender, value);
    }

    function withdraw(uint256 amount) external {
        require(amount > 0, "Withdrawal amount must be greater than 0");
        if (msg.sender == owner){
            revert("The Owner Cannot Withdraw here use other accounts to withdraw");
        }

        require(amount <= balances[msg.sender], "Insufficient funds");
        

        balances[msg.sender] -= amount;
        emit Withdrawal(msg.sender, amount);
    }
}
