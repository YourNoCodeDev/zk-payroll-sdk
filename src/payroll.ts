import { PayrollContract } from "./contract";
import { ZKProofGenerator } from "./crypto/proofs";
import { CacheProvider } from "./cache/CacheProvider";

export class PayrollService {
	constructor(
		private contract: PayrollContract,
		private cache?: CacheProvider<string>,
	) {}

	async processPayment(recipient: string, amount: bigint) {
		const proof = await ZKProofGenerator.generateProof(
			{ recipient, amount },
			this.cache,
		);
		return this.contract.deposit(amount);
	}

	filterTransactions(transactions: any[], criteria: any) {
		return transactions.filter((t) => t.amount > criteria.minAmount);
	}
}
