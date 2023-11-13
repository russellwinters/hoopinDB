import { gameSeedUtil } from "./seeds/game";
import { playerSeedUtil } from "./seeds/player";
import prisma, { GamePlayer, Player, PlayerStatTotal, Team } from "../index";
import { teamSeedUtil } from "./seeds/team";
import { faker } from "@faker-js/faker";

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
  const totals: PlayerStatTotal[] = [];

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
      const statTotals: PlayerStatTotal = {
        id: faker.string.uuid(),
        minutes: 0,
        fga: 0,
        fgm: 0,
        tpa: 0,
        tpm: 0,
        fta: 0,
        ftm: 0,
        oreb: 0,
        dreb: 0,
        reb: 0,
        ast: 0,
        stl: 0,
        blk: 0,
        to: 0,
        pf: 0,
        pts: 0,
        games_played: 0,
        latest_update: new Date(),
        player_id: player.id,
      };

      gameCounterArray.forEach(() => {
        const game: GamePlayer = gameSeedUtil.createGamePlayerSuperstar(
          player.id
        );

        statTotals.minutes += game.minutes;
        statTotals.fga += game.fga;
        statTotals.fgm += game.fgm;
        statTotals.tpa += game.tpa;
        statTotals.tpm += game.tpm;
        statTotals.fta += game.fta;
        statTotals.ftm += game.ftm;
        statTotals.oreb += game.oreb;
        statTotals.dreb += game.dreb;
        statTotals.reb += game.reb;
        statTotals.ast += game.ast;
        statTotals.stl += game.stl;
        statTotals.blk += game.blk;
        statTotals.to += game.to;
        statTotals.pf += game.pf;
        statTotals.pts += game.pts;
        statTotals.games_played += 1;

        games.push(game);
      });

      totals.push(statTotals);
      players.push(player);
    });

    midLevels.forEach((player) => {
      const statTotals: PlayerStatTotal = {
        id: faker.string.uuid(),
        minutes: 0,
        fga: 0,
        fgm: 0,
        tpa: 0,
        tpm: 0,
        fta: 0,
        ftm: 0,
        oreb: 0,
        dreb: 0,
        reb: 0,
        ast: 0,
        stl: 0,
        blk: 0,
        to: 0,
        pf: 0,
        pts: 0,
        games_played: 0,
        latest_update: new Date(),
        player_id: player.id,
      };

      gameCounterArray.forEach(() => {
        const game: GamePlayer = gameSeedUtil.createGamePlayerMidLevel(
          player.id
        );

        statTotals.minutes += game.minutes;
        statTotals.fga += game.fga;
        statTotals.fgm += game.fgm;
        statTotals.tpa += game.tpa;
        statTotals.tpm += game.tpm;
        statTotals.fta += game.fta;
        statTotals.ftm += game.ftm;
        statTotals.oreb += game.oreb;
        statTotals.dreb += game.dreb;
        statTotals.reb += game.reb;
        statTotals.ast += game.ast;
        statTotals.stl += game.stl;
        statTotals.blk += game.blk;
        statTotals.to += game.to;
        statTotals.pf += game.pf;
        statTotals.pts += game.pts;
        statTotals.games_played += 1;

        games.push(game);
      });

      totals.push(statTotals);
      players.push(player);
    });

    minimums.forEach((player) => {
      const statTotals: PlayerStatTotal = {
        id: faker.string.uuid(),
        minutes: 0,
        fga: 0,
        fgm: 0,
        tpa: 0,
        tpm: 0,
        fta: 0,
        ftm: 0,
        oreb: 0,
        dreb: 0,
        reb: 0,
        ast: 0,
        stl: 0,
        blk: 0,
        to: 0,
        pf: 0,
        pts: 0,
        games_played: 0,
        latest_update: new Date(),
        player_id: player.id,
      };

      gameCounterArray.forEach(() => {
        const game: GamePlayer = gameSeedUtil.createGamePlayerMinimim(
          player.id
        );

        statTotals.minutes += game.minutes;
        statTotals.fga += game.fga;
        statTotals.fgm += game.fgm;
        statTotals.tpa += game.tpa;
        statTotals.tpm += game.tpm;
        statTotals.fta += game.fta;
        statTotals.ftm += game.ftm;
        statTotals.oreb += game.oreb;
        statTotals.dreb += game.dreb;
        statTotals.reb += game.reb;
        statTotals.ast += game.ast;
        statTotals.stl += game.stl;
        statTotals.blk += game.blk;
        statTotals.to += game.to;
        statTotals.pf += game.pf;
        statTotals.pts += game.pts;
        statTotals.games_played += 1;

        games.push(game);
      });

      totals.push(statTotals);
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
  await prisma.playerStatTotal.createMany({ data: totals });
}

main()
  .catch((e) => {
    console.log({ e });
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
