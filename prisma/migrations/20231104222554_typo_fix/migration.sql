/*
  Warnings:

  - You are about to drop the `PlayerAverateUpdate` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "PlayerAverateUpdate";

-- CreateTable
CREATE TABLE "PlayerAverageUpdate" (
    "id" SERIAL NOT NULL,
    "timestamp" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "PlayerAverageUpdate_pkey" PRIMARY KEY ("id")
);
