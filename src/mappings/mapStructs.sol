// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
	struct User {
		uint balance;
		bool isActive;
	}

	mapping(address => User) public users;

	function createUser() external {
		require(!users[msg.sender].isActive);
		users[msg.sender] = User(100, true);
	}

	function transfer(address addr, uint amount) external {
		require(users[msg.sender].isActive);
		require(users[addr].isActive);
		require(users[msg.sender].balance >= amount);

		users[msg.sender].balance -= amount;
		users[addr].balance += amount;
	}

}
