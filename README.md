# Turn Games Framework

The TurnGamesFW project consists in the creation of two frameworks, whose main objective is to simplify the creation of turn-based games. Games like tic-tac-toe, chess, or battleship are good examples of this type of games.

Both frameworks provide useful tools to the programmer for the creation of an application.
These tools will allow them to skip the parts of code that are common to all turn-based games,
allowing them to prioritize the parts that make their game unique.

## Features

### Backend:

- User creation and authentication;
- Game creation and control;
- Database access.

### Frontend:

- Sending requests and updating the interface;
- There are also various UI elements that can be used in creating
the website for the game:
    - Navigation bar;
    - List of games, 
    - Registration and authentication forms.

## Instalation

1. Clone the repository: git clone https://github.com/DavidmLopes/turn-games-fw
2. Have a database running with [sql Schema](../code/jvm/turngamesfw/sql/create-schema.sql) or run `./gradlew dbTestUp` in [jvm](../code/jvm/turngamesfw/) terminal with docker runing to start database with schema.
2. Set database url in [application](../code/jvm/turngamesfw/application-module/src/main/kotlin/pt/isel/application/Application.kt).
3. Start/Run backend application.
4. Run `npm start` in [js](../code/js/turngamesfw/) to start frontend application.
