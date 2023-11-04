import { faker } from "@faker-js/faker";
import { Player } from "@prisma/client";

export const playerSeedUtil = {
  createPlayerSuperstar: (teamId: string): Player => {
    return {
      id: faker.string.uuid(),
      team_id: teamId,
      salary: faker.number.int({ min: 30000000, max: 50000000 }),
      name_first: faker.person.firstName(),
      name_last: faker.person.lastName(),
      dob: faker.date.birthdate({ min: 23, max: 31, mode: "age" }),
    };
  },

  createPlayerMidLevel: (teamId: string): Player => {
    return {
      id: faker.string.uuid(),
      team_id: teamId,
      salary: faker.number.int({ min: 10000000, max: 29999999 }),
      name_first: faker.person.firstName(),
      name_last: faker.person.lastName(),
      dob: faker.date.birthdate({ min: 19, max: 35, mode: "age" }),
    };
  },

  createPlayerMinimum: (teamId: string): Player => {
    return {
      id: faker.string.uuid(),
      team_id: teamId,
      salary: faker.number.int({ min: 500000, max: 9999999 }),
      name_first: faker.person.firstName(),
      name_last: faker.person.lastName(),
      dob: faker.date.birthdate({ min: 19, max: 35, mode: "age" }),
    };
  },
};
