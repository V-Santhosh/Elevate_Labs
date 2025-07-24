
-- ================================================
--  VIEWS FOR QUICK STATS
-- ================================================
-- Points table: 2 pts per win, 1 per tie (winner_id IS NULL)
CREATE VIEW Points_Table AS
SELECT
  t.team_id,
  t.team_name,
  COUNT(m.match_id) AS matches_played,
  SUM(CASE WHEN m.winner_id = t.team_id THEN 2
           WHEN m.winner_id IS NULL THEN 1
           ELSE 0 END) AS points,
  SUM(CASE WHEN m.winner_id = t.team_id THEN 1 ELSE 0 END) AS wins,
  SUM(CASE WHEN m.winner_id IS NOT NULL AND m.winner_id <> t.team_id THEN 1 ELSE 0 END) AS losses,
  SUM(CASE WHEN m.winner_id IS NULL THEN 1 ELSE 0 END) AS ties
FROM Teams t
JOIN Matches m
  ON m.team1_id = t.team_id
  OR m.team2_id = t.team_id
GROUP BY t.team_id, t.team_name
ORDER BY points DESC, wins DESC;

-- Top 10 run-scorers
CREATE VIEW Top_Run_Scorers AS
SELECT
  p.player_id,
  p.player_name,
  t.team_name,
  SUM(bs.runs_scored) AS total_runs,
  ROUND(SUM(bs.runs_scored) / NULLIF(SUM(CASE WHEN bs.dismissed THEN 1 ELSE 0 END),0),2) AS batting_average
FROM Players p
JOIN Teams t ON p.team_id = t.team_id
JOIN Batting_Statistics bs ON p.player_id = bs.player_id
GROUP BY p.player_id, p.player_name, t.team_name
ORDER BY total_runs DESC
LIMIT 25;

-- Top 10 wicket-takers
CREATE VIEW Top_Wicket_Takers AS
SELECT
  p.player_id,
  p.player_name,
  t.team_name,
  SUM(bw.wickets_taken) AS total_wickets,
  ROUND(SUM(bw.runs_conceded) / NULLIF(SUM(bw.wickets_taken),0),2) AS bowling_average
FROM Players p
JOIN Teams t ON p.team_id = t.team_id
JOIN Bowling_Statistics bw ON p.player_id = bw.player_id
GROUP BY p.player_id, p.player_name, t.team_name
ORDER BY total_wickets DESC
LIMIT 25;


-- ================================================
-- 4. STORED PROCEDURES FOR DYNAMIC QUERIES
-- ================================================
DELIMITER $$

-- Get full batting stats for a given player
CREATE PROCEDURE sp_GetPlayerBattingStats(IN in_player_id INT)
BEGIN
  SELECT
    m.match_id,
    m.match_date,
    bs.innings_number,
    bs.runs_scored,
    bs.balls_faced,
    bs.fours,
    bs.sixes,
    bs.dismissed,
    bs.dismissal_type
  FROM Batting_Statistics bs
  JOIN Matches m ON bs.match_id = m.match_id
  WHERE bs.player_id = in_player_id
  ORDER BY m.match_date;
END$$

-- Get full bowling stats for a given player

DELIMITER $$
CREATE PROCEDURE sp_GetPlayerBowlingStats(IN in_player_id INT)
BEGIN
  SELECT
    m.match_id,
    m.match_date,
    bw.innings_number,
    bw.overs_bowled,
    bw.maidens,
    bw.runs_conceded,
    bw.wickets_taken
  FROM Bowling_Statistics bw
  JOIN Matches m ON bw.match_id = m.match_id
  WHERE bw.player_id = in_player_id
  ORDER BY m.match_date;
END$$


-- Get league standings (calls the Points_Table view)

DELIMITER $$
CREATE PROCEDURE sp_GetLeagueStandings()
BEGIN
  SELECT * FROM Points_Table;
END$$

DELIMITER ;

-- ================================================
-- USAGE OF VIEWS
-- ================================================
-- Call procedures like:
CALL sp_GetPlayerBattingStats(61);
CALL sp_GetPlayerBowlingStats(61);
CALL sp_GetLeagueStandings()



