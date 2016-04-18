##National Cartoon Kickball Association Website

This is my first foray into building a Sinatra application to serve dynamically generated HTML

I built it on the metaphor of a website for the `National Cartoon Kickball Association`

Seed data is contained in `data/roster.json`, which includes four teams, along with the players and positions for each

###User Stories

```no-highlight
As a Kickball Fan
I want to view a page with the names of each team
So that I can learn which teams are in the league
```

```no-highlight
As a Kickball Fan
I want to view the professional teams
So that I can learn more about the players
```

```no-highlight
As a Kickball Fan
I want to view a page with the names of each position
So that I can learn what positions there are on a team
```

```no-highlight
As a Kickball Fan
I want to see all players in a certain position
So that I can see who plays each position in the league
```

###Models

#####`Player`
* Initialized With:
  * `name`
  * `position`
  * `team_name`
* Methods:
  * `all`
    * Returns an array of `Player` objects that correspond to each player

#####`Team`
* Initialized With:
  * `name`
* Methods:
  * `all`
    * Returns an array of `Team` objects that correspond to every single team
  * `players`
    * Returns an array of `Player` objects that correspond to every player of that particular team
