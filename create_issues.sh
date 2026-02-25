#!/bin/bash

echo "Creating 20 issues for zk-payroll-sdk..."

# 1-10: Architecture & Setups
gh issue create --title "[Setup] Configure Monorepo Architecture" --body "Set up the initial repository structure, considering if a monorepo approach using npm workspaces or Turborepo is necessary for future expansion." --label "architecture" --label "setup"

gh issue create --title "[Setup] Configure ESLint and Prettier" --body "Establish consistent coding standards across the SDK by configuring ESLint and Prettier with strict TypeScript rules." --label "setup"

gh issue create --title "[Setup] Setup Jest testing framework with coverage" --body "Integrate Jest for unit and integration testing. Configure test coverage reporting and enforce minimum coverage thresholds." --label "setup" --label "testing"

gh issue create --title "[CI/CD] Implement GitHub Actions for automated testing" --body "Create a CI pipeline to run tests, linting, and type checking on every pull request and push to the main branch." --label "architecture" --label "ci-cd"

gh issue create --title "[CI/CD] Setup automated NPM publishing pipeline" --body "Configure GitHub Actions to automatically publish the package to NPM when a new release is created." --label "ci-cd"

gh issue create --title "[Architecture] Define clean architecture layers" --body "Structure the SDK into distinct layers: Core (business logic), Adapters (Stellar/Soroban network), and API (public interfaces) to maintain separation of concerns." --label "architecture"

gh issue create --title "[Setup] Configure TypeDoc for API documentation" --body "Set up TypeDoc to automatically generate HTML documentation from TypeScript source files and comments." --label "setup" --label "documentation"

gh issue create --title "[Setup] Implement Husky pre-commit hooks" --body "Configure Husky and lint-staged to run linters, formatters, and related unit tests before allowing a commit." --label "setup"

gh issue create --title "[Architecture] Design ZK Proof generation pipeline strategy" --body "Establish the architectural approach for integrating client-side ZK proof generation. Define interfaces for proof providers." --label "architecture"

gh issue create --title "[Architecture] Define error handling strategy" --body "Create a robust error handling architecture. Define a hierarchy of custom error classes (e.g., NetworkError, ProofGenerationError, ContractError)." --label "architecture"

# 11-20: Features
gh issue create --title "[Feature] Implement Contract Wrapper base class" --body "Create a base class for Soroban contract interactions to handle shared logic like RPC connections and transaction building." --label "enhancement"

gh issue create --title "[Feature] Implement PayrollService for private payments" --body "Create the main \`PayrollService\` class with the \`processPayment\` method to facilitate private transactions." --label "enhancement"

gh issue create --title "[Feature] Integrate Client-side ZK proof generation" --body "Implement the module responsible for generating zero-knowledge proofs directly in the client (browser/Node.js environment)." --label "enhancement"

gh issue create --title "[Feature] Add batch payment processing functionality" --body "Extend the PayrollService to handle multiple private payments in a single transaction or batch to save on fees." --label "enhancement"

gh issue create --title "[Feature] Support multiple Stellar assets (USDC, XLM)" --body "Update the platform to support various Stellar assets beyond native XLM, including custom tokens or stablecoins like USDC." --label "enhancement"

gh issue create --title "[Feature] Create utility for formatting transaction payloads" --body "Implement helper utilities to correctly format scale/XDR arguments required by Soroban smart contracts." --label "enhancement"

gh issue create --title "[Feature] Implement local storage caching" --body "Add a caching layer (using localStorage or memory) for contract state and proof data to improve performance." --label "enhancement"

gh issue create --title "[Feature] Add event listener polling for confirmations" --body "Implement an exponential polling mechanism or WebSocket listener to wait for and report transaction confirmation." --label "enhancement"

gh issue create --title "[Feature] Create mock smart contract environment" --body "Develop a mocked version of the Soroban contract interactions to allow SDK consumers to write tests without a live network." --label "enhancement" --label "testing"

gh issue create --title "[Feature] Implement retry mechanism with exponential backoff" --body "Add a resilient retry wrapper for RPC calls and API interactions to gracefully handle network instability." --label "enhancement"

echo "20 issues created successfully!"
