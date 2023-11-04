/*
  Warnings:

  - You are about to drop the `GamePlayerNba` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `GameTeamNba` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `PlayerNba` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `TeamNba` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "GamePlayerNba" DROP CONSTRAINT "GamePlayerNba_playerId_fkey";

-- DropForeignKey
ALTER TABLE "GameTeamNba" DROP CONSTRAINT "GameTeamNba_teamId_fkey";

-- DropForeignKey
ALTER TABLE "PlayerNba" DROP CONSTRAINT "PlayerNba_teamId_fkey";

-- DropTable
DROP TABLE "GamePlayerNba";

-- DropTable
DROP TABLE "GameTeamNba";

-- DropTable
DROP TABLE "PlayerNba";

-- DropTable
DROP TABLE "TeamNba";

-- CreateTable
CREATE TABLE "AverageGamePlayer" (
    "id" TEXT NOT NULL,
    "playerId" TEXT NOT NULL,
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

    CONSTRAINT "AverageGamePlayer_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "AverageGamePlayer_playerId_key" ON "AverageGamePlayer"("playerId");

-- AddForeignKey
ALTER TABLE "AverageGamePlayer" ADD CONSTRAINT "AverageGamePlayer_playerId_fkey" FOREIGN KEY ("playerId") REFERENCES "Player"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
