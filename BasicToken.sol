// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Our contract is named "SimpleToken"
contract SimpleToken {
    
    // Mapping to store token balances of each address
    mapping(address => uint256) public balances;

    // Event to log transfers on the blockchain
    event Transfer(address indexed from, address indexed to, uint256 value);

    // Constructor function – runs only once when the contract is deployed
    constructor(uint256 initialSupply) {
        // Assign the initial supply to the person deploying the contract
        balances[msg.sender] = initialSupply;
    }

    // Function to check the balance of any address
    function balanceOf(address account) public view returns (uint256) {
        return balances[account];
    }

    // Function to transfer tokens from the sender to another address
    function transfer(address recipient, uint256 amount) public returns (bool) {
        // Check if the sender has enough tokens
        require(balances[msg.sender] >= amount, "Insufficient balance");

        // Subtract the amount from sender's balance
        balances[msg.sender] -= amount;

        // Add the amount to recipient's balance
        balances[recipient] += amount;

        // Emit the transfer event to log the transaction
        emit Transfer(msg.sender, recipient, amount);

        // Return true to indicate success
        return true;
    }
}
