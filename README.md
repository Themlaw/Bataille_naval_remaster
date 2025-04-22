# Bataille_navale_remaster
A tactical game based on the concept of naval battle
We want to explore the potential of the well-known naval battle game through the extension of possible in-game actions, by adding maps.
First and foremost, we want it to be more dynamic.

## Table of contents
To Do

## Project architecture

The project is divided in multiple scenes that are dynamically loaded.

### Main Scene

The main scene of the game, laucnhes the game and loads the MainMenu. Script attached to it

### MainMenu

A bunch of choices for the user, with buttons and labels. Script attached to it

### Rules

Linked with the MainMenu. Script attached to it

### Game

The Game scene contains the nodes of the players, which are not separated scenes as they only serve to manage the game. 
Scripts are attached to both players. 
Some nodes relative to the maps, the UI, the audio. One should verify if these nodes should be in the Game scene or separated.

### Maps

Each Map is a different scene, to be constructed.

### Ships

Each ship is a different scene, to be constructed.

### UI

User interface features.

## Innovations

A bunch of new possibilities come with our game.

A diversified fleet of boats: they come with specific possibilities as to the deplacement, the type and range of shot, the durability.
The possibility to choose which ships you want to take for a game, adapt the choice according to the map, the opponent.

New maps, each one including strategic features. Ocean currents, islands to hide behind and narrowing of the playing area are among the challenges we provide.
