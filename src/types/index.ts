export interface PayrollRecord {
  id: string;
  recipient: string;
  amount: bigint;
  timestamp: number;
}

export type Network = "testnet" | "mainnet";
