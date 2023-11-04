/*
  Warnings:

  - You are about to drop the `AverageGamePlayer` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `PlayerStatTotals` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "AverageGamePlayer" DROP CONSTRAINT "AverageGamePlayer_playerId_fkey";

-- DropForeignKey
ALTER TABLE "PlayerStatTotals" DROP CONSTRAINT "PlayerStatTotals_playerId_fkey";

-- DropTable
DROP TABLE "AverageGamePlayer";

-- DropTable
DROP TABLE "PlayerStatTotals";

-- CreateTable
CREATE TABLE "PlayerStatTotal" (
    "id" TEXT NOT NULL,
    "playerId" TEXT NOT NULL,
    "latestUpdate" TIMESTAMP(3) NOT NULL,
    "minutes" INTEGER NOT NULL,
    "fga" INTEGER NOT NULL,
    "fgm" INTEGER NOT NULL,
    "tpa" INTEGER NOT NULL,
    "tpm" INTEGER NOT NULL,
    "fta" INTEGER NOT NULL,
    "ftm" INTEGER NOT NULL,
    "oreb" INTEGER NOT NULL,
    "dreb" INTEGER NOT NULL,
    "reb" INTEGER NOT NULL,
    "ast" INTEGER NOT NULL,
    "stl" INTEGER NOT NULL,
    "blk" INTEGER NOT NULL,
    "to" INTEGER NOT NULL,
    "pf" INTEGER NOT NULL,
    "pts" INTEGER NOT NULL,

    CONSTRAINT "PlayerStatTotal_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PlayerStatAverage" (
    "id" TEXT NOT NULL,
    "playerId" TEXT NOT NULL,
    "latestUpdate" TIMESTAMP(3) NOT NULL,
    "minutes" INTEGER NOT NULL,
    "fga" INTEGER NOT NULL,
    "fgm" INTEGER NOT NULL,
    "tpa" INTEGER NOT NULL,
    "tpm" INTEGER NOT NULL,
    "fta" INTEGER NOT NULL,
    "ftm" INTEGER NOT NULL,
    "oreb" INTEGER NOT NULL,
    "dreb" INTEGER NOT NULL,
    "reb" INTEGER NOT NULL,
    "ast" INTEGER NOT NULL,
    "stl" INTEGER NOT NULL,
    "blk" INTEGER NOT NULL,
    "to" INTEGER NOT NULL,
    "pf" INTEGER NOT NULL,
    "pts" INTEGER NOT NULL,

    CONSTRAINT "PlayerStatAverage_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "PlayerStatTotal_playerId_key" ON "PlayerStatTotal"("playerId");

-- CreateIndex
CREATE UNIQUE INDEX "PlayerStatAverage_playerId_key" ON "PlayerStatAverage"("playerId");

-- AddForeignKey
ALTER TABLE "PlayerStatTotal" ADD CONSTRAINT "PlayerStatTotal_playerId_fkey" FOREIGN KEY ("playerId") REFERENCES "Player"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PlayerStatAverage" ADD CONSTRAINT "PlayerStatAverage_playerId_fkey" FOREIGN KEY ("playerId") REFERENCES "Player"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
