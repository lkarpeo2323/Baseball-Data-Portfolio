-- See all the pitches in Andrew Fisher's at bat in the second inning

SELECT * 
FROM "data"
where batter = "Fisher, Andrew" and inning=2

--------------------------------------------------

-- Select Eric Sipling's pitch Data vs Left Handed Batters

SELECT * 
FROM "data"
where pitcher="Sipling, Eric" and BatterSide="Left"
