import { faker } from "@faker-js/faker";

export const teamSeedUtil = {
  createSingleTeam: () => {
    return {
      id: faker.string.uuid(),
      name: faker.company.buzzVerb(),
      city: faker.location.city(),
      // roster // TODO: Figure out the roster aspect
      // games // TODO: figure out the game feature
    };
  },
};
