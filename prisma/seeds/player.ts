import { faker } from "@faker-js/faker";

export const playerSeedUtil = {
  createPlayerSuperstar: (teamId: string) => {
    return {
      id: faker.string.uuid(),
      teamId: teamId,
      salary: faker.number.int({ min: 30000000, max: 50000000 }),
      nameFirst: faker.person.firstName(),
      nameLast: faker.person.lastName(),
      dob: faker.date.birthdate({ min: 23, max: 31, mode: "age" }),
    };
  },

  createPlayerMidLevel: (teamId: string) => {
    return {
      id: faker.string.uuid(),
      teamId: teamId,
      salary: faker.number.int({ min: 10000000, max: 29999999 }),
      nameFirst: faker.person.firstName(),
      nameLast: faker.person.lastName(),
      dob: faker.date.birthdate({ min: 19, max: 35, mode: "age" }),
    };
  },

  createPlayerMinimum: (teamId: string) => {
    return {
      id: faker.string.uuid(),
      teamId: teamId,
      salary: faker.number.int({ min: 500000, max: 9999999 }),
      nameFirst: faker.person.firstName(),
      nameLast: faker.person.lastName(),
      dob: faker.date.birthdate({ min: 19, max: 35, mode: "age" }),
    };
  },
};
