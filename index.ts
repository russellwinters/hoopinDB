import { PrismaClient } from "@prisma/client";

export * from "@prisma/client";

const prisma = new PrismaClient();
export default prisma;

export async function health() {
  const health = {
    status: "OK",
    error: undefined,
  };

  try {
    await prisma.$connect();
  } catch (err) {
    health.status = "Error";
    health.error = err;
  }

  return health;
}
