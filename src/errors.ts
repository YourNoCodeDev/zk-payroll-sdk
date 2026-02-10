export class PayrollError extends Error {
  constructor(
    message: string,
    public code: number,
  ) {
    super(message);
  }
}

export function handleApiError(error: any): void {
  // Error handling logic
  console.error("API Error:", error);
}
