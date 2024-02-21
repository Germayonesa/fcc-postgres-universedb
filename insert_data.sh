#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi
echo "$($PSQL "TRUNCATE teams,games")"
# Do not change code above this line. Use the PSQL variable above to query your database.
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
 do
  if [[ $YEAR != "year" ]]
   then
    echo $YEAR $ROUND $WINNER $OPPONENT $WINNER_GOALS $OPPONENT_GOALS
    if [[ $WINNER != "$($PSQL "SELECT name FROM teams WHERE name ='$WINNER'")" ]]
     then
      "$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")"
    fi  
    if [[ $OPPONENT != "$($PSQL "SELECT name FROM teams WHERE name='$OPPONENT'")" ]]
     then
      "$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")"
     fi 
    if [[ ($WINNER == "$($PSQL "SELECT name FROM teams WHERE name ='$WINNER'")") || ( $OPPONENT == "$($PSQL "SELECT name FROM teams WHERE name='$OPPONENT'")" ) ]] 
     then
      $WINNERID="$($PSQL "SELECT team_id FROM teams WHERE name ='$WINNER'")"
      $OPPONENTID="$($PSQL "SELECT team_id FROM teams WHERE name ='$OPPONENT'")"
      "$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', "$($PSQL "SELECT team_id FROM teams WHERE name ='$WINNER'")", "$($PSQL "SELECT team_id FROM teams WHERE name ='$OPPONENT'")", $WINNER_GOALS, $OPPONENT_GOALS)")"
     fi
   fi
 done
