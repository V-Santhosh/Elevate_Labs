
-- Teams with their captain 
SELECT t.team_name, p.player_name AS captain_name
FROM Teams t
JOIN Players p ON t.captain_id = p.player_id;

-- Count the Total Number of Players
SELECT COUNT(*) AS total_players
FROM Players;

--  Find Matches Won by the Toss Winner
SELECT match_id, venue, winner_id
FROM Matches
WHERE toss_winner_id = winner_id;

-- Top Run scorers
SELECT * FROM Top_Run_Scorers;

-- Top Wicket Takers
SELECT * FROM Top_Wicket_Takers;

--  High-Impact Batting Innings (by Sixes)
SELECT player_id, match_id, runs_scored, sixes
FROM Batting_Statistics
WHERE sixes > 4;

-- Who are the fastest-scoring batsmen, capable of changing the momentum of a game with their aggressive play?

SELECT p.player_name,SUM(bs.runs_scored) AS TotalRuns, SUM(bs.balls_faced) AS TotalBallsFaced, (SUM(bs.runs_scored) * 100.0 / SUM(bs.balls_faced)) AS StrikeRate
FROM Batting_Statistics bs
JOIN Players p ON bs.player_id = p.player_id
WHERE bs.balls_faced > 0
GROUP BY p.player_name
ORDER BY StrikeRate DESC;
    
    
-- Which bowlers are the most economical, consistently restricting the flow of runs and building pressure on the opposition?
SELECT p.player_name, SUM(bos.runs_conceded) AS TotalRunsConceded, SUM(bos.overs_bowled) AS TotalOversBowled, (SUM(bos.runs_conceded) / SUM(bos.overs_bowled)) AS EconomyRate
FROM Bowling_Statistics bos
JOIN Players p ON bos.player_id = p.player_id
GROUP BY p.player_name
HAVING SUM(bos.overs_bowled) >= 10
ORDER BY EconomyRate ASC
LIMIT 10;

-- Which players have performed best at a specific venue, like 'Wankhede Stadium, Mumbai'?
SELECT p.player_name, SUM(bs.runs_scored) AS RunsAtVenue
FROM Batting_Statistics bs
JOIN Players p ON bs.player_id = p.player_id
JOIN Matches m ON bs.match_id = m.match_id
WHERE m.venue = 'Wankhede Stadium, Mumbai'
GROUP BY p.player_name
ORDER BY RunsAtVenue DESC
LIMIT 5;


-- Which bowlers are most capable of producing a truly match-winning spell by taking 3 or more wickets in an innings?

SELECT p.player_name, COUNT(*) AS FiveWicketHauls
FROM (
    SELECT
        player_id,
        match_id
    FROM
        Bowling_Statistics
    GROUP BY
        player_id, match_id
    HAVING
        SUM(wickets_taken) >= 3
) AS MatchHauls
JOIN Players p ON MatchHauls.player_id = p.player_id
GROUP BY p.player_name
ORDER BY FiveWicketHauls DESC;
    
    
--  Whose runs are most closely correlated with team success? 
SELECT
    p.player_name,
    SUM(bs.runs_scored) AS RunsInWins,
    SUM(CASE WHEN bs.dismissed = TRUE THEN 1 ELSE 0 END) AS DismissalsInWins,
    SUM(bs.runs_scored) * 1.0 / NULLIF(SUM(CASE WHEN bs.dismissed = TRUE THEN 1 ELSE 0 END), 0) AS BattingAverageInWins
FROM Batting_Statistics bs
JOIN Matches m ON bs.match_id = m.match_id
JOIN Players p ON bs.player_id = p.player_id
WHERE m.winner_id = p.team_id
GROUP BY p.player_name
HAVING SUM(bs.runs_scored) > 100 AND SUM(CASE WHEN bs.dismissed = TRUE THEN 1 ELSE 0 END) > 0
ORDER BY BattingAverageInWins DESC
LIMIT 10;

--  Who has delivered the most impactful single-match all-round performances (scoring 50+ runs and taking 3+ wickets in the same game)?

WITH BattingMatchCTE AS (
    SELECT player_id, match_id
    FROM Batting_Statistics
    WHERE runs_scored >= 50
),
BowlingMatchCTE AS (
    SELECT player_id, match_id
    FROM Bowling_Statistics
    WHERE wickets_taken >= 3
)
SELECT p.player_name, COUNT(*) AS NumOfPerformances
FROM BattingMatchCTE b
JOIN BowlingMatchCTE bo ON b.player_id = bo.player_id AND b.match_id = bo.match_id
JOIN Players p ON b.player_id = p.player_id
GROUP BY p.player_name
ORDER BY NumOfPerformances DESC;