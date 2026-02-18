# SDK API Reference

## Classes

### `PayrollService`

Main entry point for payroll operations.

#### `constructor(config: ClientConfig)`
Initializes the service with network configuration.

#### `processPayment(recipient: string, amount: bigint): Promise<string>`
Generates a ZK proof and submits a payment transaction to the smart contract.
- **recipient**: Stellar address of the employee.
- **amount**: Salary amount to pay.
- **Returns**: Transaction hash.

### `PayrollContract`

Low-level wrapper for direct smart contract interactions.

## Interfaces

### `ClientConfig`

- **networkUrl**: RPC URL for the Stellar network.
- **contractId**: ID of the deployed Payroll contract.
