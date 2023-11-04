-- CreateTable
CREATE TABLE "TeamFantasy" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "TeamFantasy_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContractFantasy" (
    "id" TEXT NOT NULL,
    "teamId" TEXT NOT NULL,
    "playerId" TEXT NOT NULL,
    "signed" TIMESTAMP(3) NOT NULL,
    "waived" TIMESTAMP(3),
    "successorId" TEXT,

    CONSTRAINT "ContractFantasy_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "ContractFantasy_successorId_key" ON "ContractFantasy"("successorId");

-- AddForeignKey
ALTER TABLE "ContractFantasy" ADD CONSTRAINT "ContractFantasy_teamId_fkey" FOREIGN KEY ("teamId") REFERENCES "TeamFantasy"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContractFantasy" ADD CONSTRAINT "ContractFantasy_playerId_fkey" FOREIGN KEY ("playerId") REFERENCES "Player"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContractFantasy" ADD CONSTRAINT "ContractFantasy_successorId_fkey" FOREIGN KEY ("successorId") REFERENCES "ContractFantasy"("id") ON DELETE SET NULL ON UPDATE CASCADE;
