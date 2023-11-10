# Prisma Server

### Definition:

This is intended to be used as a DB server for basketball data. Connect to your DB of choice and use this server to interact with said database.

- It's seeded with mock data creating 10 teams with a handful of player types per team.

- The intent for this server is purely connecting to the DB. It should do zero logic around the players and teams aside from querying and updating the DB.

### Setup:

- Clone and install repo locally.
- Instantiate your own DB with which to connect, adding the `.env` variables from the `.env.example` file to match your setup.
- Before you can seed your db you should run `npx prisma generate` and `npx prisma migrate dev`. Once this is done, you can seed the database with `npx prisma db seed`

### To do:

- Add date to games
- Update seeds to handle dates on games
- Add function to updateTotals based on dates of games and most recent update
- Also find the best way to update averages based on this
