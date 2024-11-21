SELECT first_name || ' ' ||last_name as full_name, avg(spin_rate) 
From player_names 
join atbats 
on player_names.id  = atbats.pitcher_id
JOIN pitches 
ON atbats.ab_id = pitches.ab_id 
GROUP BY full_name
