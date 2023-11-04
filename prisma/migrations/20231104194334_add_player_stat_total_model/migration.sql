-- CreateTable
CREATE TABLE "PlayerStatTotals" (
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

    CONSTRAINT "PlayerStatTotals_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "PlayerStatTotals_playerId_key" ON "PlayerStatTotals"("playerId");

-- AddForeignKey
ALTER TABLE "PlayerStatTotals" ADD CONSTRAINT "PlayerStatTotals_playerId_fkey" FOREIGN KEY ("playerId") REFERENCES "Player"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
