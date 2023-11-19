# avaxproofmod1

## Usage

1. **Deployment:** Deploy the contract to the Ethereum blockchain, and the deploying account becomes the owner.

2. **Deposit:**
    - Function: `deposit(uint256 value)`
    - Users can deposit Ether into the contract by calling the `deposit` function.
    - The deposited amount must be greater than 0.
    - An assertion checks that the sender is not a specific address (`0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2`).

3. **Withdraw:**
    - Function: `withdraw(uint256 amount)`
    - Users can withdraw Ether from the contract, excluding the owner.
    - The withdrawal amount must be greater than 0 and less than or equal to the user's balance.
    - If the sender is the owner, the withdrawal will revert with a message indicating that the owner cannot withdraw.
