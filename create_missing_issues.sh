#!/bin/bash

# Create Labels
gh label create architecture -c "D4C5F9" -d "Architecture related" -f
gh label create setup -c "0E8A16" -d "Setup tasks" -f
gh label create testing -c "B60205" -d "Testing and QA" -f
gh label create ci-cd -c "1D76DB" -d "CI/CD pipeline" -f
gh label create documentation -c "0075CA" -d "Documentation" -f

echo "Creating remaining 11 issues..."

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

gh issue create --title "[Feature] Create mock smart contract environment" --body "Develop a mocked version of the Soroban contract interactions to allow SDK consumers to write tests without a live network." --label "enhancement" --label "testing"

echo "Missing issues created successfully!"
