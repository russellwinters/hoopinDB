/*
  Warnings:

  - You are about to drop the `PlayerAverageUpdate` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `PlayerStatAverage` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "PlayerStatAverage" DROP CONSTRAINT "PlayerStatAverage_player_id_fkey";

-- DropTable
DROP TABLE "PlayerAverageUpdate";

-- DropTable
DROP TABLE "PlayerStatAverage";
