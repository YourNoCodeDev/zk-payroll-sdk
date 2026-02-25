import { PayrollContract } from "./contract";
import { ZKProofGenerator } from "./crypto/proofs";
import { CacheProvider } from "./cache/CacheProvider";

interface Transaction {
  amount: bigint;
  [key: string]: unknown;
}

interface FilterCriteria {
  minAmount: bigint;
}

export class PayrollService {
  constructor(
    private contract: PayrollContract,
    private cache?: CacheProvider<string>
  ) {}

  async processPayment(recipient: string, amount: bigint): Promise<string> {
    const _proof = await ZKProofGenerator.generateProof({ recipient, amount }, this.cache);
    return this.contract.deposit(amount);
  }

  filterTransactions(transactions: Transaction[], criteria: FilterCriteria): Transaction[] {
    return transactions.filter((t) => t.amount > criteria.minAmount);
  }
}
