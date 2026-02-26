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
- **ZK Proof Generation**: Client-side proof generation using snarkjs for privacy.
- **Caching**: Built-in caching for proofs and circuit artifacts.
- **Error Handling**: Robust error typing and management.

## Zero-Knowledge Proof Generation

The SDK includes production-ready ZK proof generation using snarkjs:

```typescript
import { SnarkjsProofGenerator, MemoryCacheProvider } from "@zk-payroll/sdk";

// Configure circuit artifacts
const config = {
  wasmUrl: "https://cdn.example.com/payroll_circuit.wasm",
  zkeyUrl: "https://cdn.example.com/payroll_circuit.zkey",
  artifactCacheTTL: 86400, // 24 hours
};

// Create generator with caching
const cache = new MemoryCacheProvider<string>();
const generator = new SnarkjsProofGenerator(config, cache);

// Generate proof
const witness = {
  recipient: "GDZQHV...",
  amount: 1000000n,
  nullifier: 123456789n,
  secret: 987654321n,
};

const proof = await generator.generateProof(witness);
```

See [ZK Proof Generation Guide](./docs/ZK_PROOF_GENERATION.md) for detailed documentation.

## Documentation

- [API Reference](./docs/API.md) - Complete API documentation
- [ZK Proof Generation](./docs/ZK_PROOF_GENERATION.md) - Detailed proof generation guide

## Development

```bash
# Install dependencies
npm install

# Build
npm run build

# Run tests
npm test

# Lint
npm run lint
```
