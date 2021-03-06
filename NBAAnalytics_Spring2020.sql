DROP DATABASE IF EXISTS NBAData_Spring2020;
CREATE DATABASE NBAData_Spring2020;
USE NBAData_Spring2020;

-- All Teams
DROP TABLE IF EXISTS allteams;
CREATE TABLE allteams (
team_abr VARCHAR(50) PRIMARY KEY, -- ex) bos
team_name VARCHAR(50) NOT NULL   -- ex) "Boston Celtics"
);

-- MASTER TABLE - all players, stats, team, year
DROP TABLE IF EXISTS allplayers;
CREATE TABLE allplayers (
player VARCHAR(50) NOT NULL, 
GP VARCHAR(50) NOT NULL, 
GS VARCHAR(50) NOT NULL,
MPG VARCHAR(50) NOT NULL,
PTS VARCHAR(50) NOT NULL, 
OR_	VARCHAR(50) NOT NULL, 
DR	VARCHAR(50) NOT NULL, 
REB VARCHAR(50) NOT NULL, 
AST	VARCHAR(50) NOT NULL, 
STL VARCHAR(50) NOT NULL, 
BLK	VARCHAR(50) NOT NULL, 
T VARCHAR(50) NOT NULL, 
PF VARCHAR(50) NOT NULL, 
ASTTO VARCHAR(50) NOT NULL, 
PER VARCHAR(50) NOT NULL, 
team_name VARCHAR(50) NOT NULL, 
team_year INT NOT NULL,
PRIMARY KEY (player, team_name, team_year)
);

select * from allplayers LIMIT 25;
