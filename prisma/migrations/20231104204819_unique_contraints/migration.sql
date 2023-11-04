/*
  Warnings:

  - You are about to drop the column `playerId` on the `ContractFantasy` table. All the data in the column will be lost.
  - You are about to drop the column `successorId` on the `ContractFantasy` table. All the data in the column will be lost.
  - You are about to drop the column `teamId` on the `ContractFantasy` table. All the data in the column will be lost.
  - You are about to drop the column `playerId` on the `GamePlayer` table. All the data in the column will be lost.
  - You are about to drop the column `teamId` on the `GameTeam` table. All the data in the column will be lost.
  - You are about to drop the column `nameFirst` on the `Player` table. All the data in the column will be lost.
  - You are about to drop the column `nameLast` on the `Player` table. All the data in the column will be lost.
  - You are about to drop the column `teamId` on the `Player` table. All the data in the column will be lost.
  - You are about to drop the column `latestUpdate` on the `PlayerStatAverage` table. All the data in the column will be lost.
  - You are about to drop the column `playerId` on the `PlayerStatAverage` table. All the data in the column will be lost.
  - You are about to drop the column `latestUpdate` on the `PlayerStatTotal` table. All the data in the column will be lost.
  - You are about to drop the column `playerId` on the `PlayerStatTotal` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[successor_id]` on the table `ContractFantasy` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[player_id]` on the table `PlayerStatAverage` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[player_id]` on the table `PlayerStatTotal` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `player_id` to the `ContractFantasy` table without a default value. This is not possible if the table is not empty.
  - Added the required column `team_id` to the `ContractFantasy` table without a default value. This is not possible if the table is not empty.
  - Added the required column `player_id` to the `GamePlayer` table without a default value. This is not possible if the table is not empty.
  - Added the required column `team_id` to the `GameTeam` table without a default value. This is not possible if the table is not empty.
  - Added the required column `name_first` to the `Player` table without a default value. This is not possible if the table is not empty.
  - Added the required column `name_last` to the `Player` table without a default value. This is not possible if the table is not empty.
  - Added the required column `team_id` to the `Player` table without a default value. This is not possible if the table is not empty.
  - Added the required column `latest_update` to the `PlayerStatAverage` table without a default value. This is not possible if the table is not empty.
  - Added the required column `player_id` to the `PlayerStatAverage` table without a default value. This is not possible if the table is not empty.
  - Added the required column `latest_update` to the `PlayerStatTotal` table without a default value. This is not possible if the table is not empty.
  - Added the required column `player_id` to the `PlayerStatTotal` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "ContractFantasy" DROP CONSTRAINT "ContractFantasy_playerId_fkey";

-- DropForeignKey
ALTER TABLE "ContractFantasy" DROP CONSTRAINT "ContractFantasy_successorId_fkey";

-- DropForeignKey
ALTER TABLE "ContractFantasy" DROP CONSTRAINT "ContractFantasy_teamId_fkey";

-- DropForeignKey
ALTER TABLE "GamePlayer" DROP CONSTRAINT "GamePlayer_playerId_fkey";

-- DropForeignKey
ALTER TABLE "GameTeam" DROP CONSTRAINT "GameTeam_teamId_fkey";

-- DropForeignKey
ALTER TABLE "Player" DROP CONSTRAINT "Player_teamId_fkey";

-- DropForeignKey
ALTER TABLE "PlayerStatAverage" DROP CONSTRAINT "PlayerStatAverage_playerId_fkey";

-- DropForeignKey
ALTER TABLE "PlayerStatTotal" DROP CONSTRAINT "PlayerStatTotal_playerId_fkey";

-- DropIndex
DROP INDEX "ContractFantasy_successorId_key";

-- DropIndex
DROP INDEX "PlayerStatAverage_playerId_key";

-- DropIndex
DROP INDEX "PlayerStatTotal_playerId_key";

-- AlterTable
ALTER TABLE "ContractFantasy" DROP COLUMN "playerId",
DROP COLUMN "successorId",
DROP COLUMN "teamId",
ADD COLUMN     "player_id" TEXT NOT NULL,
ADD COLUMN     "successor_id" TEXT,
ADD COLUMN     "team_id" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "GamePlayer" DROP COLUMN "playerId",
ADD COLUMN     "player_id" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "GameTeam" DROP COLUMN "teamId",
ADD COLUMN     "team_id" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "Player" DROP COLUMN "nameFirst",
DROP COLUMN "nameLast",
DROP COLUMN "teamId",
ADD COLUMN     "name_first" TEXT NOT NULL,
ADD COLUMN     "name_last" TEXT NOT NULL,
ADD COLUMN     "team_id" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "PlayerStatAverage" DROP COLUMN "latestUpdate",
DROP COLUMN "playerId",
ADD COLUMN     "latest_update" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "player_id" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "PlayerStatTotal" DROP COLUMN "latestUpdate",
DROP COLUMN "playerId",
ADD COLUMN     "latest_update" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "player_id" TEXT NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "ContractFantasy_successor_id_key" ON "ContractFantasy"("successor_id");

-- CreateIndex
CREATE UNIQUE INDEX "PlayerStatAverage_player_id_key" ON "PlayerStatAverage"("player_id");

-- CreateIndex
CREATE UNIQUE INDEX "PlayerStatTotal_player_id_key" ON "PlayerStatTotal"("player_id");

-- AddForeignKey
ALTER TABLE "Player" ADD CONSTRAINT "Player_team_id_fkey" FOREIGN KEY ("team_id") REFERENCES "Team"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "GamePlayer" ADD CONSTRAINT "GamePlayer_player_id_fkey" FOREIGN KEY ("player_id") REFERENCES "Player"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PlayerStatTotal" ADD CONSTRAINT "PlayerStatTotal_player_id_fkey" FOREIGN KEY ("player_id") REFERENCES "Player"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PlayerStatAverage" ADD CONSTRAINT "PlayerStatAverage_player_id_fkey" FOREIGN KEY ("player_id") REFERENCES "Player"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "GameTeam" ADD CONSTRAINT "GameTeam_team_id_fkey" FOREIGN KEY ("team_id") REFERENCES "Team"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContractFantasy" ADD CONSTRAINT "ContractFantasy_team_id_fkey" FOREIGN KEY ("team_id") REFERENCES "TeamFantasy"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContractFantasy" ADD CONSTRAINT "ContractFantasy_player_id_fkey" FOREIGN KEY ("player_id") REFERENCES "Player"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContractFantasy" ADD CONSTRAINT "ContractFantasy_successor_id_fkey" FOREIGN KEY ("successor_id") REFERENCES "ContractFantasy"("id") ON DELETE SET NULL ON UPDATE CASCADE;
