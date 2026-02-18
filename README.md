# ZK Payroll SDK

TypeScript SDK for interacting with the ZK Payroll smart contracts.

## Installation

```bash
npm install @zk-payroll/sdk
```

## Usage

```typescript
import { PayrollService, DEFAULT_CONFIG } from "@zk-payroll/sdk";

// Initialize service
const service = new PayrollService(DEFAULT_CONFIG);

// Process a private payment
await service.processPayment(
  "G...", // Recipient Stellar address
  1000n   // Amount
);
```

## Features

- **Contract Wrappers**: Typed interfaces for Soroban contracts.
- **ZK Proof Generation**: Client-side proof generation for privacy.
- **Error Handling**: Robust error typing and management.
