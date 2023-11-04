import { gameSeedUtil } from "./seeds/game";
import { playerSeedUtil } from "./seeds/player";
import prisma, { GamePlayer, Player, Team } from "../index";
import { teamSeedUtil } from "./seeds/team";

async function main() {
  const teams: Team[] = [
    teamSeedUtil.createSingleTeam(),
    teamSeedUtil.createSingleTeam(),
    teamSeedUtil.createSingleTeam(),
    teamSeedUtil.createSingleTeam(),
    teamSeedUtil.createSingleTeam(),
    teamSeedUtil.createSingleTeam(),
    teamSeedUtil.createSingleTeam(),
    teamSeedUtil.createSingleTeam(),
    teamSeedUtil.createSingleTeam(),
    teamSeedUtil.createSingleTeam(),
  ];

  const players: Player[] = [];
  const games: GamePlayer[] = [];

  console.log("running seed: " + teams.length + "teams");

  teams.forEach((team) => {
    const superstars = [
      playerSeedUtil.createPlayerSuperstar(team.id),
      playerSeedUtil.createPlayerSuperstar(team.id),
    ];
    const midLevels = [
      playerSeedUtil.createPlayerMidLevel(team.id),
      playerSeedUtil.createPlayerMidLevel(team.id),
      playerSeedUtil.createPlayerMidLevel(team.id),
      playerSeedUtil.createPlayerMidLevel(team.id),
    ];
    const minimums = [
      playerSeedUtil.createPlayerMinimum(team.id),
      playerSeedUtil.createPlayerMinimum(team.id),
      playerSeedUtil.createPlayerMinimum(team.id),
      playerSeedUtil.createPlayerMinimum(team.id),
    ];
    const gameCounterArray = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];

    superstars.forEach((player) => {
      gameCounterArray.forEach(() => {
        const game = gameSeedUtil.createGamePlayerSuperstar(player.id);
        games.push(game);
      });

      players.push(player);
    });

    midLevels.forEach((player) => {
      gameCounterArray.forEach(() => {
        const game = gameSeedUtil.createGamePlayerMidLevel(player.id);
        games.push(game);
      });

      players.push(player);
    });

    minimums.forEach((player) => {
      gameCounterArray.forEach(() => {
        const game = gameSeedUtil.createGamePlayerMinimim(player.id);
        games.push(game);
      });

      players.push(player);
    });
  });

  console.log({
    playerCount: players.length,
    teamCount: teams.length,
    gamesCount: games.length,
  });

  await prisma.team.createMany({ data: teams });
  await prisma.player.createMany({ data: players });
  await prisma.gamePlayer.createMany({ data: games });
}

main()
  .catch((e) => {
    console.log({ e });
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
