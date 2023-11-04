import { faker } from "@faker-js/faker";

export const gameSeedUtil = {
  createGamePlayerSuperstar: (playerId: string) => {
    // Threes
    const mockTpa = faker.number.int({ min: 2, max: 10 });
    const mockTpp = faker.number.int({ min: 27, max: 41 });
    const mockTpm = Math.floor(mockTpa * (mockTpp / 100));

    // Field goals
    const mockFga = faker.number.int({ min: mockTpa, max: 30 });
    const mockfgp = faker.number.int({ min: mockTpp, max: 56 });
    const mockfgm = Math.floor(mockFga * (mockfgp / 100));

    // Free throws
    const mockFta = faker.number.int({ min: 2, max: 12 });
    const mockftp = faker.number.int({ min: 67, max: 92 });
    const mockftm = Math.floor(mockFta * (mockftp / 100));

    // Rebounds
    const mockOreb = faker.number.int({ min: 0, max: 3 });
    const mockDreb = faker.number.int({ min: 1, max: 5 });

    // Points
    const twoPointerMakes = mockfgm - mockTpm;
    const freeThrowPoints = mockftm;
    const threePointerPoints = mockTpm * 3;
    const twoPointerPoints = twoPointerMakes * 2;

    return {
      id: faker.string.uuid(),
      playerId: playerId,
      // player:  // TODO: Find out if we really need this
      minutes: faker.datatype.number({ min: 30, max: 40 }),
      fga: mockFga,
      fgm: mockfgm,
      tpa: mockTpa,
      tpm: mockTpm,
      fta: mockFta,
      ftm: mockftm,
      oreb: mockOreb,
      dreb: mockDreb,
      reb: mockOreb + mockDreb,
      ast: faker.number.int({ min: 2, max: 13 }),
      stl: faker.number.int({ min: 0, max: 5 }),
      blk: faker.number.int({ min: 0, max: 5 }),
      to: faker.number.int({ min: 0, max: 7 }),
      pf: faker.number.int({ min: 1, max: 5 }),
      pts: freeThrowPoints + threePointerPoints + twoPointerPoints,
    };
  },

  createGamePlayerMidLevel: (playerId: string) => {
    // Threes
    const mockTpa = faker.number.int({ min: 1, max: 5 });
    const mockTpp = faker.number.int({ min: 22, max: 44 });
    const mockTpm = Math.floor(mockTpa * (mockTpp / 100));

    // Field goals
    const mockFga = faker.number.int({ min: mockTpa, max: 15 });
    const mockfgp = faker.number.int({ min: mockTpp, max: 53 });
    const mockfgm = Math.floor(mockFga * (mockfgp / 100));

    // Free throws
    const mockFta = faker.number.int({ min: 0, max: 7 });
    const mockftp = faker.number.int({ min: 54, max: 92 });
    const mockftm = Math.floor(mockFta * (mockftp / 100));

    // Rebounds
    const mockOreb = faker.number.int({ min: 0, max: 3 });
    const mockDreb = faker.number.int({ min: 0, max: 9 });

    // Points
    const twoPointerMakes = mockfgm - mockTpm;
    const freeThrowPoints = mockftm;
    const threePointerPoints = mockTpm * 3;
    const twoPointerPoints = twoPointerMakes * 2;

    return {
      id: faker.string.uuid(),
      playerId: playerId,
      // player:  // TODO: Find out if we really need this
      minutes: faker.number.int({ min: 17, max: 34 }),
      fga: mockFga,
      fgm: mockfgm,
      tpa: mockTpa,
      tpm: mockTpm,
      fta: mockFta,
      ftm: mockftm,
      oreb: mockOreb,
      dreb: mockDreb,
      reb: mockOreb + mockDreb,
      ast: faker.number.int({ min: 0, max: 7 }),
      stl: faker.number.int({ min: 0, max: 3 }),
      blk: faker.number.int({ min: 0, max: 3 }),
      to: faker.number.int({ min: 0, max: 4 }),
      pf: faker.number.int({ min: 1, max: 5 }),
      pts: freeThrowPoints + threePointerPoints + twoPointerPoints,
    };
  },

  createGamePlayerMinimim: (playerId: string) => {
    // Threes
    const mockTpa = faker.number.int({ min: 0, max: 3 });
    const mockTpp = faker.number.int({ min: 18, max: 36 });
    const mockTpm = Math.floor(mockTpa * (mockTpp / 100));

    // Field goals
    const mockFga = faker.number.int({ min: mockTpa, max: 5 });
    const mockfgp = faker.number.int({ min: mockTpp, max: 44 });
    const mockfgm = Math.floor(mockFga * (mockfgp / 100));

    // Free throws
    const mockFta = faker.number.int({ min: 0, max: 4 });
    const mockftp = faker.number.int({ min: 54, max: 88 });
    const mockftm = Math.floor(mockFta * (mockftp / 100));

    // Rebounds
    const mockOreb = faker.number.int({ min: 0, max: 2 });
    const mockDreb = faker.number.int({ min: 0, max: 4 });

    // Points
    const twoPointerMakes = mockfgm - mockTpm;
    const freeThrowPoints = mockftm;
    const threePointerPoints = mockTpm * 3;
    const twoPointerPoints = twoPointerMakes * 2;

    return {
      id: faker.datatype.uuid(),
      playerId: playerId,
      // player:  // TODO: Find out if we really need this
      minutes: faker.number.int({ min: 4, max: 22 }),
      fga: mockFga,
      fgm: mockfgm,
      tpa: mockTpa,
      tpm: mockTpm,
      fta: mockFta,
      ftm: mockftm,
      oreb: mockOreb,
      dreb: mockDreb,
      reb: mockOreb + mockDreb,
      ast: faker.number.int({ min: 0, max: 4 }),
      stl: faker.number.int({ min: 0, max: 2 }),
      blk: faker.number.int({ min: 0, max: 2 }),
      to: faker.number.int({ min: 0, max: 2 }),
      pf: faker.number.int({ min: 0, max: 2 }),
      pts: freeThrowPoints + threePointerPoints + twoPointerPoints,
    };
  },

  createGameTeam: (teamId: string) => {
    // Threes
    const mockTpa = faker.number.int({ min: 28, max: 47 });
    const mockTpp = faker.number.int({ min: 28, max: 42 });
    const mockTpm = Math.floor(mockTpa * (mockTpp / 100));

    // Field goals
    const mockFga = faker.number.int({ min: 82, max: 98 });
    const mockfgp = faker.number.int({ min: mockTpp, max: 54 });
    const mockfgm = Math.floor(mockFga * (mockfgp / 100));

    // Free throws
    const mockFta = faker.number.int({ min: 18, max: 31 });
    const mockftp = faker.number.int({ min: 67, max: 92 });
    const mockftm = Math.floor(mockFta * (mockftp / 100));

    // Rebounds
    const mockOreb = faker.number.int({ min: 8, max: 16 });
    const mockDreb = faker.number.int({ min: 26, max: 38 });

    // Points
    const twoPointerMakes = mockfgm - mockTpm;
    const freeThrowPoints = mockftm;
    const threePointerPoints = mockTpm * 3;
    const twoPointerPoints = twoPointerMakes * 2;

    return {
      id: faker.string.uuid(),
      team: teamId,
      // team:  // TODO: Find out if we really need this
      fga: mockFga,
      fgm: mockfgm,
      tpa: mockTpa,
      tpm: mockTpm,
      fta: mockFta,
      ftm: mockftm,
      oreb: mockOreb,
      dreb: mockDreb,
      reb: mockOreb + mockDreb,
      ast: faker.number.int({ min: 13, max: 28 }),
      stl: faker.number.int({ min: 1, max: 12 }),
      blk: faker.number.int({ min: 2, max: 14 }),
      to: faker.number.int({ min: 6, max: 17 }),
      pf: faker.number.int({ min: 18, max: 27 }),
      pts: freeThrowPoints + threePointerPoints + twoPointerPoints,
    };
  },
};
