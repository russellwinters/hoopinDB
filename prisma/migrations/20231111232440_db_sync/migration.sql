/*
  Warnings:

  - Added the required column `date` to the `GamePlayer` table without a default value. This is not possible if the table is not empty.
  - Added the required column `date` to the `GameTeam` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "GamePlayer" ADD COLUMN     "date" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "GameTeam" ADD COLUMN     "date" TIMESTAMP(3) NOT NULL;
