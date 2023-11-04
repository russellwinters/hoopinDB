-- CreateTable
CREATE TABLE "Player" (
    "id" TEXT NOT NULL,
    "teamId" TEXT NOT NULL,
    "salary" INTEGER NOT NULL,
    "nameFirst" TEXT NOT NULL,
    "nameLast" TEXT NOT NULL,
    "dob" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Player_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "GamePlayer" (
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

    CONSTRAINT "GamePlayer_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Team" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "city" TEXT NOT NULL,

    CONSTRAINT "Team_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "GameTeam" (
    "id" TEXT NOT NULL,
    "teamId" TEXT NOT NULL,
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

    CONSTRAINT "GameTeam_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PlayerNba" (
    "id" TEXT NOT NULL,
    "teamId" TEXT NOT NULL,
    "salary" INTEGER NOT NULL,
    "nameFirst" TEXT NOT NULL,
    "nameLast" TEXT NOT NULL,
    "dob" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "PlayerNba_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "GamePlayerNba" (
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

    CONSTRAINT "GamePlayerNba_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TeamNba" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "city" TEXT NOT NULL,

    CONSTRAINT "TeamNba_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "GameTeamNba" (
    "id" TEXT NOT NULL,
    "teamId" TEXT NOT NULL,
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

    CONSTRAINT "GameTeamNba_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Player" ADD CONSTRAINT "Player_teamId_fkey" FOREIGN KEY ("teamId") REFERENCES "Team"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "GamePlayer" ADD CONSTRAINT "GamePlayer_playerId_fkey" FOREIGN KEY ("playerId") REFERENCES "Player"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "GameTeam" ADD CONSTRAINT "GameTeam_teamId_fkey" FOREIGN KEY ("teamId") REFERENCES "Team"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PlayerNba" ADD CONSTRAINT "PlayerNba_teamId_fkey" FOREIGN KEY ("teamId") REFERENCES "TeamNba"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "GamePlayerNba" ADD CONSTRAINT "GamePlayerNba_playerId_fkey" FOREIGN KEY ("playerId") REFERENCES "PlayerNba"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "GameTeamNba" ADD CONSTRAINT "GameTeamNba_teamId_fkey" FOREIGN KEY ("teamId") REFERENCES "TeamNba"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
