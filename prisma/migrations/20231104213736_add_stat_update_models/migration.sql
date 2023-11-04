-- CreateTable
CREATE TABLE "PlayerTotalUpdate" (
    "id" TEXT NOT NULL,
    "timestamp" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "PlayerTotalUpdate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PlayerAverateUpdate" (
    "id" TEXT NOT NULL,
    "timestamp" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "PlayerAverateUpdate_pkey" PRIMARY KEY ("id")
);
