/*
  Warnings:

  - The primary key for the `PlayerAverateUpdate` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `PlayerAverateUpdate` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `PlayerTotalUpdate` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `PlayerTotalUpdate` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- AlterTable
ALTER TABLE "PlayerAverateUpdate" DROP CONSTRAINT "PlayerAverateUpdate_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" SERIAL NOT NULL,
ADD CONSTRAINT "PlayerAverateUpdate_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "PlayerTotalUpdate" DROP CONSTRAINT "PlayerTotalUpdate_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" SERIAL NOT NULL,
ADD CONSTRAINT "PlayerTotalUpdate_pkey" PRIMARY KEY ("id");
