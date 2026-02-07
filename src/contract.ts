import { Contract, SorobanRpc } from "stellar-sdk";
import { ClientConfig } from "./config";

export class PayrollContract {
  constructor(private config: ClientConfig) {}

  async getBalance(address: string): Promise<bigint> {
    // Implementation placeholder
    return 0n;
  }

  async deposit(amount: bigint): Promise<string> {
    // Implementation placeholder
    return "tx_hash";
  }
}
