-- Sports Tournament Tracker SQL Import Script
-- Drop and recreate database

USE SportsTracker;

-- ================================================
-- 1. TABLE SCHEMAS
-- ================================================
-- Teams table
CREATE TABLE Teams (
    team_id INT AUTO_INCREMENT PRIMARY KEY,
    team_name VARCHAR(100) NOT NULL,
    captain_id INT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

-- Teams
INSERT INTO Teams (team_name, captain_id) VALUES ('Timeless Titans', 11); -- Captain: Abraham Lincoln
INSERT INTO Teams (team_name, captain_id) VALUES ('Masters of the Multiverse', 52); -- Captain: Vishnu
INSERT INTO Teams (team_name, captain_id) VALUES ('Philosophical Phenoms', 3); -- Captain: Galileo Galilei
INSERT INTO Teams (team_name, captain_id) VALUES ('Mythic Mavericks', 14); -- Captain: Julius Caesar
INSERT INTO Teams (team_name, captain_id) VALUES ('Iconic Invincibles', 15); -- Captain: Alexander the Great
INSERT INTO Teams (team_name, captain_id) VALUES ('Celestial Champions', 6); -- Captain: Nikola Tesla
INSERT INTO Teams (team_name, captain_id) VALUES ('Sovereign Strikers', 7); -- Captain: Leonardo da Vinci
INSERT INTO Teams (team_name, captain_id) VALUES ('Quantum Kings', 68); -- Captain: Socrates
INSERT INTO Teams (team_name, captain_id) VALUES ('Ancient All-Stars', 9); -- Captain: Martin Luther King Jr.
INSERT INTO Teams (team_name, captain_id) VALUES ('Renaissance Rebels', 10); -- Captain: Nelson Mandela

select * from teams;

-- Players table
CREATE TABLE Players (
    player_id INT AUTO_INCREMENT PRIMARY KEY,
    player_name VARCHAR(100) NOT NULL,
    team_id INT NOT NULL,
    batting_style VARCHAR(50),
    bowling_style VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (team_id) REFERENCES Teams(team_id)
) ENGINE=InnoDB;


INSERT INTO Players (player_name, team_id, batting_style, bowling_style) VALUES
('Albert Einstein', 1, 'Right-hand bat', NULL),
('Isaac Newton', 2, 'Left-hand bat', 'Left-arm fast'),
('Galileo Galilei', 3, 'Right-hand bat', 'Right-arm fast'),
('Marie Curie', 4, 'Left-hand bat', NULL),
('Charles Darwin', 5, 'Right-hand bat', 'Right-arm spin'),
('Nikola Tesla', 6, 'Left-hand bat', 'Left-arm fast'),
('Leonardo da Vinci', 7, 'Right-hand bat', NULL),
('William Shakespeare', 8, 'Left-hand bat', NULL),
('Martin Luther King Jr.', 9, 'Right-hand bat', 'Right-arm spin'),
('Nelson Mandela', 10, 'Left-hand bat', 'Left-arm fast'),
('Abraham Lincoln', 1, 'Right-hand bat', NULL),
('Mahatma Gandhi', 2, 'Left-hand bat', 'Left-arm spin'),
('Winston Churchill', 3, 'Right-hand bat', NULL),
('Julius Caesar', 4, 'Left-hand bat', 'Left-arm fast'),
('Alexander the Great', 5, 'Right-hand bat', 'Right-arm fast'),
('Cleopatra', 6, 'Left-hand bat', NULL),
('Joan of Arc', 7, 'Right-hand bat', 'Right-arm spin'),
('Genghis Khan', 8, 'Left-hand bat', 'Left-arm fast'),
('Napoleon Bonaparte', 9, 'Right-hand bat', 'Right-arm fast'),
('Queen Elizabeth I', 10, 'Left-hand bat', NULL),
('Michael Jackson', 1, 'Right-hand bat', 'Right-arm spin'),
('Elvis Presley', 2, 'Left-hand bat', 'Left-arm fast'),
('John Lennon', 3, 'Right-hand bat', NULL),
('Bob Marley', 4, 'Left-hand bat', 'Left-arm spin'),
('Freddie Mercury', 5, 'Right-hand bat', 'Right-arm spin'),
('Madonna', 6, 'Left-hand bat', NULL),
('Beyoncé', 7, 'Right-hand bat', NULL),
('Taylor Swift', 8, 'Left-hand bat', 'Left-arm spin'),
('Ed Sheeran', 9, 'Right-hand bat', 'Right-arm spin'),
('Adele', 10, 'Left-hand bat', NULL),
('Marilyn Monroe', 1, 'Right-hand bat', NULL),
('Audrey Hepburn', 2, 'Left-hand bat', NULL),
('Charlie Chaplin', 3, 'Right-hand bat', 'Right-arm spin'),
('Tom Hanks', 4, 'Left-hand bat', 'Left-arm fast'),
('Meryl Streep', 5, 'Right-hand bat', NULL),
('Leonardo DiCaprio', 6, 'Left-hand bat', 'Left-arm spin'),
('Morgan Freeman', 7, 'Right-hand bat', 'Right-arm spin'),
('Scarlett Johansson', 8, 'Left-hand bat', NULL),
('Dwayne Johnson', 9, 'Right-hand bat', 'Right-arm fast'),
('Oprah Winfrey', 10, 'Left-hand bat', NULL),
('Bruce Lee', 1, 'Right-hand bat', 'Right-arm spin'),
('Jackie Chan', 2, 'Left-hand bat', 'Left-arm fast'),
('Muhammad Ali', 3, 'Right-hand bat', 'Right-arm fast'),
('Michael Jordan', 4, 'Left-hand bat', 'Left-arm spin'),
('Serena Williams', 5, 'Right-hand bat', 'Right-arm spin'),
('Usain Bolt', 6, 'Left-hand bat', 'Left-arm fast'),
('Lionel Messi', 7, 'Right-hand bat', 'Right-arm fast'),
('Cristiano Ronaldo', 8, 'Left-hand bat', 'Left-arm spin'),
('Sachin Tendulkar', 9, 'Right-hand bat', 'Right-arm spin'),
('Brett Lee', 10, 'Left-hand bat', 'Left-arm fast'),
('Shiva', 1, 'Right-hand bat', 'Right-arm fast'),
('Vishnu', 2, 'Left-hand bat', 'Left-arm spin'),
('Brahma', 3, 'Right-hand bat', NULL),
('Krishna', 4, 'Left-hand bat', 'Left-arm fast'),
('Rama', 5, 'Right-hand bat', 'Right-arm fast'),
('Ganesha', 6, 'Left-hand bat', NULL),
('Hanuman', 7, 'Right-hand bat', 'Right-arm spin'),
('Lakshmi', 8, 'Left-hand bat', 'Left-arm fast'),
('Saraswati', 9, 'Right-hand bat', NULL),
('Durga', 10, 'Left-hand bat', 'Left-arm spin'),
('Jesus Christ', 1, 'Right-hand bat', 'Right-arm spin'),
('Prophet Muhammad', 2, 'Left-hand bat', NULL),
('Moses', 3, 'Right-hand bat', 'Right-arm fast'),
('Abraham', 4, 'Left-hand bat', NULL),
('Buddha', 5, 'Right-hand bat', 'Right-arm spin'),
('Confucius', 6, 'Left-hand bat', NULL),
('Laozi', 7, 'Right-hand bat', NULL),
('Socrates', 8, 'Left-hand bat', NULL),
('Plato', 9, 'Right-hand bat', NULL),
('Aristotle', 10, 'Left-hand bat', 'Left-arm fast'),
('Stephen Hawking', 1, 'Right-hand bat', 'Right-arm fast'),
('Carl Sagan', 2, 'Left-hand bat', 'Left-arm spin'),
('Neil deGrasse Tyson', 3, 'Right-hand bat', 'Right-arm spin'),
('Bill Gates', 4, 'Left-hand bat', NULL),
('Steve Jobs', 5, 'Right-hand bat', NULL),
('Mark Zuckerberg', 6, 'Left-hand bat', 'Left-arm spin'),
('Elon Musk', 7, 'Right-hand bat', 'Right-arm spin'),
('Jeff Bezos', 8, 'Left-hand bat', NULL),
('Warren Buffett', 9, 'Right-hand bat', NULL),
('J.K. Rowling', 10, 'Left-hand bat', NULL),
('George R.R. Martin', 1, 'Right-hand bat', NULL),
('J.R.R. Tolkien', 2, 'Left-hand bat', NULL),
('Stephen King', 3, 'Right-hand bat', 'Right-arm fast'),
('Agatha Christie', 4, 'Left-hand bat', NULL),
('Jane Austen', 5, 'Right-hand bat', NULL),
('Mark Twain', 6, 'Left-hand bat', 'Left-arm spin'),
('Keanu Reeves', 7, 'Right-hand bat', 'Right-arm fast'),
('Johnny Depp', 8, 'Left-hand bat', 'Left-arm spin'),
('Arnold Schwarzenegger', 9, 'Right-hand bat', 'Right-arm spin'),
('Sylvester Stallone', 10, 'Left-hand bat', 'Left-arm fast'),
('Clint Eastwood', 1, 'Right-hand bat', 'Right-arm fast'),
('Rowan Atkinson', 2, 'Left-hand bat', NULL),
('Robert Plant', 3, 'Right-hand bat', 'Right-arm spin'),
('David Gilmour', 4, 'Left-hand bat', 'Left-arm fast'),
('Michael Bublé', 5, 'Right-hand bat', 'Right-arm fast'),
('Alexander Fleming', 6, 'Left-hand bat', 'Left-arm fast'),
('Louis Pasteur', 7, 'Right-hand bat', NULL),
('The Dalai Lama', 8, 'Left-hand bat', 'Left-arm spin'),
('Pope Francis', 9, 'Right-hand bat', NULL),
('Michael Schumacher', 10, 'Right-hand bat', 'Right-arm spin'),
('Richard Branson', 1, 'Left-hand bat', 'Right-arm spin'),
('Ringo Starr', 2, 'Right-hand bat', 'Right-arm fast'),
('Mike Tyson', 3, 'Left-hand bat', 'Left-arm spin'),
('Don Bradman', 4, 'Right-hand bat', 'Right-arm spin'),
('Steven Spielberg', 5, 'Left-hand bat', NULL),
('James Cameron', 6, 'Right-hand bat', 'Right-arm spin'),
('Christopher Nolan', 7, 'Left-hand bat', 'Left-arm spin'),
('Quentin Tarantino', 8, 'Right-hand bat', 'Right-arm spin'),
('Will Smith', 9, 'Left-hand bat', 'Left-arm fast'),
('Shah Rukh Khan', 10, 'Right-hand bat', 'Right-arm fast'),
('Rajinikanth', 1, 'Left-hand bat', 'Left-arm spin'),
('Amitabh Bachchan', 2, 'Right-hand bat', 'Right-arm spin'),
('Alan Turing', 3, 'Left-hand bat', 'Right-arm spin'),
('Tim Berners-Lee', 4, 'Right-hand bat', 'Right-arm spin'),
('George Orwell', 5, 'Left-hand bat', 'Left-arm spin'),
('Queen Victoria', 6, 'Right-hand bat', 'Right-arm fast'),
('Franklin D. Roosevelt', 7, 'Left-hand bat', 'Left-arm fast'),
('Mother Teresa', 8, 'Right-hand bat', 'Right-arm fast'),
('John F. Kennedy', 9, 'Left-hand bat', 'Left-arm spin'),
('Indira Gandhi', 10, 'Right-hand bat', 'Right-arm spin'),
('Michael Phelps', 1, 'Left-hand bat', 'Left-arm fast'),
('Stephen Curry', 2, 'Right-hand bat', 'Right-arm fast'),
('Lewis Hamilton', 3, 'Left-hand bat', 'Left-arm spin'),
('Virat Kohli', 4, 'Right-hand bat', 'Right-arm spin'),
('Angelina Jolie', 5, 'Left-hand bat', 'Left-arm fast'),
('Malala Yousafzai', 6, 'Left-hand bat', 'Left-arm fast'),
('Greta Thunberg', 7, 'Right-hand bat', 'Right-arm fast'),
('Marie Kondo', 8, 'Left-hand bat', 'Left-arm spin'),
('Gordon Ramsay', 9, 'Right-hand bat', 'Right-arm spin'),
('David Attenborough', 10, 'Left-hand bat', 'Left-arm fast'),
('Neil Armstrong', 1, 'Right-hand bat', 'Right-arm fast'),
('Buzz Aldrin', 2, 'Left-hand bat', 'Left-arm spin'),
('Yuri Gagarin', 3, 'Right-hand bat', 'Right-arm spin'),
('Amelia Earhart', 4, 'Left-hand bat', 'Left-arm fast'),
('Wright brothers (Orville)', 5, 'Right-hand bat', 'Right-arm fast'),
('Wright brothers (Wilbur)', 6, 'Left-hand bat', 'Right-arm spin'),
('Henry Ford', 7, 'Right-hand bat', 'Right-arm spin'),
('Thomas Edison', 8, 'Left-hand bat', 'Left-arm fast'),
('Alexander Graham Bell', 9, 'Right-hand bat', 'Right-arm fast'),
('James Watt', 10, 'Left-hand bat', 'Right-arm spin'),
('Archimedes', 1, 'Right-hand bat', 'Right-arm spin'),
('Pythagoras', 2, 'Left-hand bat', 'Left-arm fast'),
('Euclid', 3, 'Left-hand bat', 'Left-arm spin'),
('Hippocrates', 4, 'Right-hand bat', 'Right-arm fast'),
('Sun Tzu', 5, 'Right-hand bat', 'Right-arm spin'),
('Srinivasa Ramanujan', 6, 'Left-hand bat', 'Left-arm fast'),
('Marie Antoinette', 7, 'Right-hand bat', 'Right-arm spin'),
('Che Guevara', 8, 'Left-hand bat', 'Left-arm fast'),
('Simone de Beauvoir', 9, 'Right-hand bat', 'Right-arm spin'),
('Pele', 10, 'Left-hand bat', 'Left-arm fast');

SELECT * FROM Players;

-- Matches table
CREATE TABLE Matches (
    match_id INT AUTO_INCREMENT PRIMARY KEY,
    match_date DATE NOT NULL,
    venue VARCHAR(100),
    team1_id INT NOT NULL,
    team2_id INT NOT NULL,
    winner_id INT NULL,
    toss_winner_id INT NULL,
    man_of_the_match_id INT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (team1_id) REFERENCES Teams(team_id),
    FOREIGN KEY (team2_id) REFERENCES Teams(team_id),
    FOREIGN KEY (winner_id) REFERENCES Teams(team_id),
    FOREIGN KEY (man_of_the_match_id) REFERENCES Players(player_id)
) ENGINE=InnoDB;




INSERT INTO Matches (match_date, venue, team1_id, team2_id, winner_id, toss_winner_id, man_of_the_match_id) VALUES
('2025-07-17', 'M. Chinnaswamy Stadium, Bengaluru', 1, 2, 1, 2, 1),      -- Team 1 (205) beat Team 2 (185)
('2025-07-18', 'Wankhede Stadium, Mumbai', 1, 3, 3, 1, 3),          -- Team 3 (154) beat Team 1 (150)
('2025-07-19', 'MA Chidambaram Stadium, Chennai', 1, 4, 1, 4, 64),     -- Team 1 (195) beat Team 4 (170)
('2025-07-20', 'Eden Gardens, Kolkata', 1, 5, 5, 1, 65),          -- Team 5 (164) beat Team 1 (160)
('2025-07-21', 'Arun Jaitley Stadium, Delhi', 1, 6, 6, 6, 6),        -- Team 6 (181) beat Team 1 (180)
('2025-07-22', 'Narendra Modi Stadium, Ahmedabad', 1, 7, 7, 1, 7),      -- Team 7 (174) beat Team 1 (170)
('2025-07-23', 'Rajiv Gandhi International Stadium, Hyderabad', 1, 8, 1, 8, 8), -- Team 1 (190) beat Team 8 (185)
('2025-07-24', 'Sawai Mansingh Stadium, Jaipur', 1, 9, 9, 1, 9),        -- Team 9 (162) beat Team 1 (160)
('2025-07-25', 'Punjab Cricket Association IS Bindra Stadium, Mohali', 1, 10, 10, 1, 10), -- Team 10 (176) beat Team 1 (175)
('2025-07-26', 'M. Chinnaswamy Stadium, Bengaluru', 2, 3, 2, 3, 2),      -- Team 2 (200) beat Team 3 (170)
('2025-07-27', 'Wankhede Stadium, Mumbai', 2, 4, 4, 2, 4),          -- Team 4 (162) beat Team 2 (160)
('2025-07-28', 'MA Chidambaram Stadium, Chennai', 2, 5, 2, 5, 2),      -- Team 2 (190) beat Team 5 (188)
('2025-07-29', 'Eden Gardens, Kolkata', 2, 6, 6, 2, 6),        -- Team 6 (151) beat Team 2 (150)
('2025-07-30', 'Arun Jaitley Stadium, Delhi', 2, 7, 7, 7, 7),      -- Team 7 (184) beat Team 2 (180)
('2025-07-31', 'Narendra Modi Stadium, Ahmedabad', 2, 8, 8, 2, 8), -- Team 8 (141) beat Team 2 (140)
('2025-08-01', 'Rajiv Gandhi International Stadium, Hyderabad', 2, 9, 9, 9, 9), -- Team 9 (196) beat Team 2 (195)
('2025-08-02', 'Sawai Mansingh Stadium, Jaipur', 2, 10, 10, 2, 10),     -- Team 10 (171) beat Team 2 (170)
('2025-08-03', 'Punjab Cricket Association IS Bindra Stadium, Mohali', 3, 4, 3, 4, 3), -- Team 3 (195) beat Team 4 (180)
('2025-08-04', 'M. Chinnaswamy Stadium, Bengaluru', 3, 5, 5, 3, 5),      -- Team 5 (144) beat Team 3 (140)
('2025-08-05', 'Wankhede Stadium, Mumbai', 3, 6, 3, 6, 3),        -- Team 3 (185) beat Team 6 (180)
('2025-08-06', 'MA Chidambaram Stadium, Chennai', 3, 7, 7, 3, 7),      -- Team 7 (161) beat Team 3 (160)
('2025-08-07', 'Eden Gardens, Kolkata', 3, 8, 3, 8, 3), -- Team 3 (175) beat Team 8 (170)
('2025-08-08', 'Arun Jaitley Stadium, Delhi', 3, 9, 9, 3, 9),        -- Team 9 (151) beat Team 3 (150)
('2025-08-09', 'Narendra Modi Stadium, Ahmedabad', 3, 10, 10, 10, 10),    -- Team 10 (191) beat Team 3 (190)
('2025-08-10', 'Rajiv Gandhi International Stadium, Hyderabad', 4, 5, 4, 5, 4), -- Team 4 (185) beat Team 5 (180)
('2025-08-11', 'Sawai Mansingh Stadium, Jaipur', 4, 6, 6, 4, 6),        -- Team 6 (151) beat Team 4 (150)
('2025-08-12', 'Punjab Cricket Association IS Bindra Stadium, Mohali', 4, 7, 7, 7, 7), -- Team 7 (181) beat Team 4 (180)
('2025-08-13', 'M. Chinnaswamy Stadium, Bengaluru', 4, 8, 8, 4, 8), -- Team 8 (131) beat Team 4 (130)
('2025-08-14', 'Wankhede Stadium, Mumbai', 4, 9, 9, 9, 9),        -- Team 9 (191) beat Team 4 (190)
('2025-08-15', 'MA Chidambaram Stadium, Chennai', 4, 10, 10, 4, 10),     -- Team 10 (166) beat Team 4 (165)
('2025-08-16', 'Eden Gardens, Kolkata', 5, 6, 5, 6, 5),        -- Team 5 (190) beat Team 6 (185)
('2025-08-17', 'Arun Jaitley Stadium, Delhi', 5, 7, 7, 5, 7),      -- Team 7 (161) beat Team 5 (160)
('2025-08-18', 'Narendra Modi Stadium, Ahmedabad', 5, 8, 5, 8, 5), -- Team 5 (185) beat Team 8 (184)
('2025-08-19', 'Rajiv Gandhi International Stadium, Hyderabad', 5, 9, 9, 5, 9), -- Team 9 (171) beat Team 5 (170)
('2025-08-20', 'Sawai Mansingh Stadium, Jaipur', 5, 10, 10, 10, 10),    -- Team 10 (189) beat Team 5 (188)
('2025-08-21', 'Punjab Cricket Association IS Bindra Stadium, Mohali', 6, 7, 6, 7, 6), -- Team 6 (200) beat Team 7 (180)
('2025-08-22', 'M. Chinnaswamy Stadium, Bengaluru', 6, 8, 8, 6, 8), -- Team 8 (146) beat Team 6 (145)
('2025-08-23', 'Wankhede Stadium, Mumbai', 6, 9, 6, 9, 6),        -- Team 6 (190) beat Team 9 (188)
('2025-08-24', 'MA Chidambaram Stadium, Chennai', 6, 10, 10, 6, 10),     -- Team 10 (161) beat Team 6 (160)
('2025-08-25', 'Eden Gardens, Kolkata', 7, 8, 7, 8, 7),        -- Team 7 (210) beat Team 8 (190)
('2025-08-26', 'Arun Jaitley Stadium, Delhi', 7, 9, 9, 7, 9),        -- Team 9 (161) beat Team 7 (160)
('2025-08-27', 'Narendra Modi Stadium, Ahmedabad', 7, 10, 7, 10, 7),    -- Team 7 (190) beat Team 10 (185)
('2025-08-28', 'Rajiv Gandhi International Stadium, Hyderabad', 8, 9, 8, 9, 8), -- Team 8 (200) beat Team 9 (195)
('2025-08-29', 'Sawai Mansingh Stadium, Jaipur', 8, 10, 10, 8, 10),     -- Team 10 (161) beat Team 8 (160)
('2025-08-30', 'Punjab Cricket Association IS Bindra Stadium, Mohali', 9, 10, 9, 10, 9); -- Team 9 (210) beat Team 10 (180)


-- Batting_Statistics table
CREATE TABLE Batting_Statistics (
    batting_stat_id INT AUTO_INCREMENT PRIMARY KEY,
    match_id INT NOT NULL,
    player_id INT NOT NULL,
    innings_number TINYINT NOT NULL,
    runs_scored INT NOT NULL,
    balls_faced INT NOT NULL,
    fours INT NOT NULL,
    sixes INT NOT NULL,
    dismissed BOOLEAN NOT NULL DEFAULT TRUE,
    dismissal_type VARCHAR(50),
    dismissed_by INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (match_id) REFERENCES Matches(match_id),
    FOREIGN KEY (player_id) REFERENCES Players(player_id)
) ENGINE=InnoDB;



-- Match 1: Team 1 (205/6) vs Team 2 (185/7). Winner: Team 1. MoM: Albert Einstein
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(1, 1, 1, 102, 55, 10, 6, false, NULL, NULL), -- MoM: Albert Einstein
(1, 11, 1, 35, 25, 4, 1, true, 'Caught', 22),
(1, 21, 1, 15, 18, 1, 0, true, 'Bowled', 2),
(1, 31, 1, 8, 12, 1, 0, true, 'LBW', 12),
(1, 41, 1, 22, 20, 2, 1, true, 'Caught', 2),
(1, 51, 1, 5, 8, 0, 0, true, 'Run Out', NULL),
(1, 61, 1, 18, 12, 2, 0, false, NULL, NULL), -- Jesus Christ
(1, 2, 2, 45, 30, 5, 1, true, 'Bowled', 1),
(1, 12, 2, 25, 22, 3, 0, true, 'Caught', 11),
(1, 22, 2, 18, 15, 2, 0, true, 'Caught', 21),
(1, 32, 2, 10, 14, 1, 0, true, 'Stumped', 41),
(1, 42, 2, 5, 9, 0, 0, true, 'LBW', 1),
(1, 52, 2, 30, 25, 3, 1, true, 'Bowled', 11),
(1, 62, 2, 15, 13, 1, 1, true, 'Caught', 21),
(1, 72, 2, 37, 22, 4, 1, false, NULL, NULL);

-- Match 2: Team 1 (150/7) vs Team 3 (154/2). Winner: Team 3. MoM: Galileo Galilei
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(2, 1, 1, 25, 20, 3, 0, true, 'Caught', 3),
(2, 11, 1, 15, 18, 1, 0, true, 'Bowled', 13),
(2, 21, 1, 5, 8, 0, 0, true, 'LBW', 23),
(2, 31, 1, 45, 30, 5, 1, true, 'Caught', 33),
(2, 41, 1, 12, 15, 1, 0, true, 'Run Out', NULL),
(2, 51, 1, 8, 10, 0, 0, true, 'Bowled', 3),
(2, 61, 1, 30, 19, 3, 1, true, 'Caught', 13),
(2, 71, 1, 10, 10, 1, 0, false, NULL, NULL),
(2, 3, 2, 95, 50, 8, 5, false, NULL, NULL), -- MoM: Galileo Galilei
(2, 13, 2, 40, 28, 5, 1, true, 'Caught', 1),
(2, 23, 2, 19, 15, 2, 1, false, NULL, NULL);

-- Match 3: Team 1 (195/5) vs Team 4 (170/8). Winner: Team 1. MoM: Abraham
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(3, 1, 1, 40, 30, 5, 1, true, 'Caught', 4),
(3, 11, 1, 25, 20, 3, 0, true, 'Bowled', 14),
(3, 64, 1, 110, 60, 12, 5, true, 'Caught', 24), -- MoM: Abraham
(3, 31, 1, 8, 10, 1, 0, true, 'LBW', 4),
(3, 41, 1, 2, 5, 0, 0, true, 'Run Out', NULL),
(3, 51, 1, 10, 10, 1, 0, false, NULL, NULL),
(3, 4, 2, 30, 25, 4, 0, true, 'Bowled', 1),
(3, 14, 2, 20, 18, 2, 0, true, 'Caught', 11),
(3, 24, 2, 50, 35, 6, 1, true, 'Bowled', 61),
(3, 34, 2, 15, 12, 1, 1, true, 'Caught', 1),
(3, 44, 2, 5, 8, 0, 0, true, 'LBW', 11),
(3, 54, 2, 25, 20, 3, 0, true, 'Stumped', 41),
(3, 74, 2, 10, 8, 1, 0, true, 'Caught', 1),
(3, 84, 2, 15, 14, 1, 1, false, NULL, NULL);

-- Match 4: Team 1 (160/8) vs Team 5 (164/3). Winner: Team 5. MoM: Buddha
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(4, 1, 1, 15, 15, 2, 0, true, 'Bowled', 5),
(4, 11, 1, 30, 25, 4, 0, true, 'Caught', 15),
(4, 21, 1, 50, 35, 5, 2, true, 'LBW', 25),
(4, 31, 1, 10, 12, 1, 0, true, 'Caught', 5),
(4, 41, 1, 20, 18, 2, 1, true, 'Bowled', 15),
(4, 51, 1, 5, 7, 0, 0, true, 'Run Out', NULL),
(4, 61, 1, 15, 8, 2, 1, true, 'Caught', 25),
(4, 71, 1, 15, 10, 1, 1, false, NULL, NULL),
(4, 5, 2, 50, 35, 6, 1, true, 'Caught', 1),
(4, 15, 2, 20, 18, 2, 0, true, 'Bowled', 11),
(4, 65, 2, 80, 45, 7, 4, false, NULL, NULL), -- MoM: Buddha
(4, 25, 2, 14, 12, 2, 0, false, NULL, NULL);

-- Match 5: Team 1 (180/6) vs Team 6 (181/4). Winner: Team 6. MoM: Nikola Tesla
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(5, 1, 1, 45, 30, 6, 1, true, 'Caught', 16),
(5, 11, 1, 20, 18, 2, 0, true, 'Bowled', 6),
(5, 21, 1, 60, 40, 5, 3, true, 'LBW', 26),
(5, 31, 1, 15, 12, 1, 1, true, 'Caught', 6),
(5, 41, 1, 25, 15, 3, 1, true, 'Bowled', 16),
(5, 51, 1, 15, 10, 1, 1, false, NULL, NULL),
(5, 6, 2, 90, 50, 10, 5, false, NULL, NULL), -- MoM: Nikola Tesla
(5, 16, 2, 30, 22, 4, 0, true, 'Bowled', 11),
(5, 26, 2, 25, 20, 3, 0, true, 'Caught', 1),
(5, 36, 2, 15, 10, 1, 1, true, 'LBW', 21),
(5, 46, 2, 21, 18, 2, 1, false, NULL, NULL);

-- Match 6: Team 1 (170/7) vs Team 7 (174/1). Winner: Team 7. MoM: Leonardo da Vinci
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(6, 1, 1, 30, 25, 4, 0, true, 'Bowled', 7),
(6, 11, 1, 20, 15, 2, 1, true, 'Caught', 17),
(6, 21, 1, 50, 35, 6, 1, true, 'LBW', 27),
(6, 31, 1, 10, 12, 1, 0, true, 'Caught', 7),
(6, 41, 1, 25, 20, 3, 0, true, 'Bowled', 17),
(6, 51, 1, 15, 8, 1, 1, true, 'Run Out', NULL),
(6, 61, 1, 20, 15, 2, 1, false, NULL, NULL),
(6, 7, 2, 120, 65, 15, 4, false, NULL, NULL), -- MoM: Leonardo da Vinci
(6, 17, 2, 50, 33, 6, 2, true, 'Bowled', 1);

-- Match 7: Team 1 (190/5) vs Team 8 (185/8). Winner: Team 1. MoM: William Shakespeare
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(7, 1, 1, 55, 38, 6, 1, false, NULL, NULL),
(7, 11, 1, 40, 30, 5, 1, true, 'Caught', 8),
(7, 21, 1, 30, 20, 3, 1, true, 'Bowled', 18),
(7, 31, 1, 25, 15, 2, 2, true, 'LBW', 28),
(7, 41, 1, 15, 10, 1, 1, true, 'Caught', 8),
(7, 51, 1, 25, 17, 3, 1, false, NULL, NULL),
(7, 8, 2, 65, 40, 6, 2, true, 'Caught', 1),
(7, 18, 2, 25, 20, 3, 0, true, 'Bowled', 11),
(7, 28, 2, 40, 30, 4, 1, true, 'LBW', 21),
(7, 38, 2, 15, 12, 1, 1, true, 'Caught', 1),
(7, 48, 2, 10, 8, 1, 0, true, 'Bowled', 11),
(7, 58, 2, 5, 5, 0, 0, true, 'Run Out', NULL),
(7, 68, 2, 15, 10, 2, 0, true, 'Caught', 21),
(7, 78, 2, 10, 10, 1, 0, false, NULL, NULL);

-- Match 8: Team 1 (160/9) vs Team 9 (162/2). Winner: Team 9. MoM: Martin Luther King Jr.
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(8, 1, 1, 20, 18, 2, 0, true, 'LBW', 9),
(8, 11, 1, 10, 12, 1, 0, true, 'Caught', 19),
(8, 21, 1, 40, 30, 5, 1, true, 'Bowled', 29),
(8, 31, 1, 30, 25, 3, 1, true, 'Caught', 9),
(8, 41, 1, 15, 10, 1, 1, true, 'Bowled', 19),
(8, 51, 1, 5, 5, 0, 0, true, 'Run Out', NULL),
(8, 61, 1, 10, 8, 1, 0, true, 'Caught', 29),
(8, 71, 1, 20, 15, 2, 1, true, 'LBW', 9),
(8, 81, 1, 10, 7, 1, 0, false, NULL, NULL),
(8, 9, 2, 88, 52, 9, 3, false, NULL, NULL), -- MoM: Martin Luther King Jr.
(8, 19, 2, 40, 30, 5, 1, true, 'Caught', 1),
(8, 29, 2, 34, 28, 4, 1, false, NULL, NULL);

-- Match 9: Team 1 (175/8) vs Team 10 (176/3). Winner: Team 10. MoM: Nelson Mandela
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(9, 1, 1, 42, 35, 5, 1, true, 'Caught', 10),
(9, 11, 1, 28, 22, 3, 1, true, 'Bowled', 20),
(9, 21, 1, 30, 25, 4, 0, true, 'LBW', 30),
(9, 31, 1, 15, 12, 1, 1, true, 'Caught', 10),
(9, 41, 1, 20, 15, 2, 1, true, 'Bowled', 20),
(9, 51, 1, 10, 8, 1, 0, true, 'Run Out', NULL),
(9, 61, 1, 15, 10, 2, 0, true, 'Caught', 30),
(9, 71, 1, 15, 13, 1, 1, false, NULL, NULL),
(9, 10, 2, 70, 48, 7, 2, false, NULL, NULL), -- MoM: Nelson Mandela
(9, 20, 2, 50, 35, 6, 1, true, 'Caught', 1),
(9, 30, 2, 30, 20, 3, 1, true, 'Bowled', 11),
(9, 40, 2, 26, 17, 3, 1, false, NULL, NULL);

-- Match 10: Team 2 (200/5) vs Team 3 (170/9). Winner: Team 2. MoM: Isaac Newton
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(10, 2, 1, 98, 58, 11, 4, false, NULL, NULL), -- MoM: Isaac Newton
(10, 12, 1, 45, 30, 5, 1, true, 'Bowled', 3),
(10, 22, 1, 20, 15, 2, 1, true, 'Caught', 13),
(10, 32, 1, 15, 12, 1, 1, true, 'LBW', 23),
(10, 42, 1, 12, 10, 1, 0, true, 'Caught', 3),
(10, 52, 1, 10, 5, 1, 1, false, NULL, NULL),
(10, 3, 2, 50, 40, 6, 1, true, 'Bowled', 2),
(10, 13, 2, 30, 25, 4, 0, true, 'Caught', 12),
(10, 23, 2, 20, 18, 2, 0, true, 'LBW', 22),
(10, 33, 2, 10, 12, 1, 0, true, 'Bowled', 2),
(10, 43, 2, 15, 10, 1, 1, true, 'Caught', 12),
(10, 53, 2, 5, 5, 0, 0, true, 'Run Out', NULL),
(10, 63, 2, 10, 8, 1, 0, true, 'Caught', 22),
(10, 73, 2, 20, 15, 2, 1, true, 'Bowled', 2),
(10, 83, 2, 10, 7, 1, 0, false, NULL, NULL);

-- Match 11: Team 2 (160/7) vs Team 4 (162/4). Winner: Team 4. MoM: Marie Curie
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(11, 2, 1, 35, 28, 4, 1, true, 'Caught', 4),
(11, 12, 1, 22, 18, 3, 0, true, 'LBW', 14),
(11, 22, 1, 40, 30, 5, 1, true, 'Bowled', 24),
(11, 32, 1, 15, 12, 1, 1, true, 'Caught', 4),
(11, 42, 1, 10, 8, 1, 0, true, 'Bowled', 14),
(11, 52, 1, 20, 15, 2, 1, true, 'Run Out', NULL),
(11, 62, 1, 18, 14, 2, 0, false, NULL, NULL),
(11, 4, 2, 65, 42, 7, 2, false, NULL, NULL), -- MoM: Marie Curie
(11, 14, 2, 40, 30, 5, 1, true, 'Caught', 2),
(11, 24, 2, 20, 15, 2, 1, true, 'Bowled', 12),
(11, 34, 2, 15, 12, 1, 1, true, 'LBW', 22),
(11, 44, 2, 22, 19, 2, 1, false, NULL, NULL);

-- Match 12: Team 2 (190/6) vs Team 5 (188/8). Winner: Team 2. MoM: Isaac Newton
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(12, 2, 1, 68, 40, 7, 3, false, NULL, NULL), -- MoM: Isaac Newton
(12, 12, 1, 41, 29, 5, 1, true, 'Caught', 5),
(12, 22, 1, 30, 20, 3, 1, true, 'Bowled', 15),
(12, 32, 1, 20, 15, 2, 1, true, 'LBW', 25),
(12, 42, 1, 15, 10, 1, 1, true, 'Caught', 5),
(12, 52, 1, 16, 11, 2, 0, false, NULL, NULL),
(12, 5, 2, 72, 45, 8, 2, true, 'Caught', 2),
(12, 15, 2, 33, 25, 4, 1, true, 'Bowled', 12),
(12, 25, 2, 25, 20, 3, 0, true, 'LBW', 22),
(12, 35, 2, 15, 12, 1, 1, true, 'Caught', 2),
(12, 45, 2, 10, 8, 1, 0, true, 'Bowled', 12),
(12, 55, 2, 5, 5, 0, 0, true, 'Run Out', NULL),
(12, 65, 2, 15, 10, 2, 0, true, 'Caught', 22),
(12, 75, 2, 13, 10, 1, 1, false, NULL, NULL);

-- Match 13: Team 2 (150/8) vs Team 6 (151/3). Winner: Team 6. MoM: Nikola Tesla
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(13, 2, 1, 22, 20, 3, 0, true, 'Bowled', 6),
(13, 12, 1, 15, 14, 2, 0, true, 'Caught', 16),
(13, 22, 1, 35, 25, 4, 1, true, 'LBW', 26),
(13, 32, 1, 25, 20, 3, 0, true, 'Caught', 6),
(13, 42, 1, 10, 8, 1, 0, true, 'Bowled', 16),
(13, 52, 1, 20, 15, 2, 1, true, 'Run Out', NULL),
(13, 62, 1, 13, 10, 1, 1, true, 'Caught', 26),
(13, 72, 1, 10, 8, 1, 0, false, NULL, NULL),
(13, 6, 2, 90, 55, 10, 4, false, NULL, NULL), -- MoM: Nikola Tesla
(13, 16, 2, 35, 26, 4, 1, true, 'Caught', 2),
(13, 26, 2, 15, 12, 1, 1, true, 'Bowled', 12),
(13, 36, 2, 11, 8, 1, 0, false, NULL, NULL);

-- Match 14: Team 2 (180/6) vs Team 7 (184/5). Winner: Team 7. MoM: Leonardo da Vinci
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(14, 2, 1, 75, 48, 8, 2, true, 'Bowled', 7),
(14, 12, 1, 45, 31, 5, 1, true, 'Caught', 17),
(14, 22, 1, 20, 15, 2, 1, true, 'LBW', 27),
(14, 32, 1, 15, 12, 1, 1, true, 'Caught', 7),
(14, 42, 1, 10, 8, 1, 0, true, 'Bowled', 17),
(14, 52, 1, 15, 11, 2, 0, false, NULL, NULL),
(14, 7, 2, 85, 50, 9, 3, false, NULL, NULL), -- MoM: Leonardo da Vinci
(14, 17, 2, 30, 24, 4, 0, true, 'Bowled', 12),
(14, 27, 2, 25, 20, 3, 0, true, 'Caught', 2),
(14, 37, 2, 15, 12, 1, 1, true, 'LBW', 22),
(14, 47, 2, 29, 20, 3, 1, false, NULL, NULL);

-- Match 15: Team 2 (140/9) vs Team 8 (141/1). Winner: Team 8. MoM: William Shakespeare
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(15, 2, 1, 18, 15, 2, 0, true, 'LBW', 8),
(15, 12, 1, 10, 11, 1, 0, true, 'Caught', 18),
(15, 22, 1, 30, 25, 4, 0, true, 'Bowled', 28),
(15, 32, 1, 20, 18, 2, 1, true, 'Caught', 8),
(15, 42, 1, 15, 12, 1, 1, true, 'Bowled', 18),
(15, 52, 1, 5, 5, 0, 0, true, 'Run Out', NULL),
(15, 62, 1, 12, 10, 1, 1, true, 'Caught', 28),
(15, 72, 1, 20, 16, 2, 1, true, 'LBW', 8),
(15, 82, 1, 10, 8, 1, 0, false, NULL, NULL),
(15, 8, 2, 78, 49, 8, 3, false, NULL, NULL), -- MoM: William Shakespeare
(15, 18, 2, 42, 30, 5, 1, true, 'Bowled', 2);

-- Match 16: Team 2 (195/5) vs Team 9 (196/4). Winner: Team 9. MoM: Martin Luther King Jr.
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(16, 2, 1, 82, 50, 9, 3, true, 'Caught', 9),
(16, 12, 1, 51, 35, 6, 2, true, 'Bowled', 19),
(16, 22, 1, 25, 20, 3, 0, true, 'LBW', 29),
(16, 32, 1, 15, 12, 1, 1, true, 'Caught', 9),
(16, 42, 1, 22, 18, 2, 1, false, NULL, NULL),
(16, 9, 2, 92, 54, 10, 4, false, NULL, NULL), -- MoM: Martin Luther King Jr.
(16, 19, 2, 38, 28, 4, 1, true, 'Bowled', 12),
(16, 29, 2, 30, 25, 4, 0, true, 'Caught', 2),
(16, 39, 2, 15, 12, 1, 1, true, 'LBW', 22),
(16, 49, 2, 21, 13, 2, 1, false, NULL, NULL);

-- Match 17: Team 2 (170/8) vs Team 10 (171/2). Winner: Team 10. MoM: Nelson Mandela
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(17, 2, 1, 48, 38, 5, 1, true, 'Bowled', 10),
(17, 12, 1, 25, 20, 3, 1, true, 'Caught', 20),
(17, 22, 1, 30, 25, 4, 0, true, 'LBW', 30),
(17, 32, 1, 15, 12, 1, 1, true, 'Caught', 10),
(17, 42, 1, 20, 15, 2, 1, true, 'Bowled', 20),
(17, 52, 1, 10, 8, 1, 0, true, 'Run Out', NULL),
(17, 62, 1, 12, 10, 1, 1, true, 'Caught', 30),
(17, 72, 1, 10, 7, 1, 0, false, NULL, NULL),
(17, 10, 2, 76, 46, 8, 2, false, NULL, NULL), -- MoM: Nelson Mandela
(17, 20, 2, 49, 33, 5, 2, true, 'Caught', 2),
(17, 30, 2, 46, 31, 5, 2, false, NULL, NULL);

-- Match 18: Team 3 (195/4) vs Team 4 (180/9). Winner: Team 3. MoM: Galileo Galilei
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(18, 3, 1, 89, 51, 10, 3, false, NULL, NULL), -- MoM: Galileo Galilei
(18, 13, 1, 41, 30, 5, 1, true, 'Caught', 4),
(18, 23, 1, 30, 20, 3, 1, true, 'Bowled', 14),
(18, 33, 1, 20, 15, 2, 1, true, 'LBW', 24),
(18, 43, 1, 15, 14, 1, 1, false, NULL, NULL),
(18, 4, 2, 55, 40, 6, 1, true, 'Bowled', 3),
(18, 14, 2, 25, 22, 3, 0, true, 'LBW', 13),
(18, 24, 2, 30, 25, 4, 0, true, 'Caught', 23),
(18, 34, 2, 15, 12, 1, 1, true, 'Bowled', 3),
(18, 44, 2, 10, 8, 1, 0, true, 'Caught', 13),
(18, 54, 2, 5, 5, 0, 0, true, 'Run Out', NULL),
(18, 64, 2, 15, 10, 2, 0, true, 'Caught', 23),
(18, 74, 2, 20, 15, 2, 1, true, 'Bowled', 3),
(18, 84, 2, 5, 3, 1, 0, false, NULL, NULL);

-- Match 19: Team 3 (140/8) vs Team 5 (144/3). Winner: Team 5. MoM: Charles Darwin
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(19, 3, 1, 33, 25, 4, 1, true, 'Caught', 5),
(19, 13, 1, 15, 18, 2, 0, true, 'Bowled', 15),
(19, 23, 1, 25, 20, 3, 0, true, 'LBW', 25),
(19, 33, 1, 20, 15, 2, 1, true, 'Caught', 5),
(19, 43, 1, 10, 8, 1, 0, true, 'Bowled', 15),
(19, 53, 1, 15, 12, 1, 1, true, 'Run Out', NULL),
(19, 63, 1, 12, 10, 1, 1, true, 'Caught', 25),
(19, 73, 1, 10, 7, 1, 0, false, NULL, NULL),
(19, 5, 2, 77, 48, 8, 2, false, NULL, NULL), -- MoM: Charles Darwin
(19, 15, 2, 44, 31, 5, 1, true, 'Caught', 3),
(19, 25, 2, 15, 12, 1, 1, true, 'Bowled', 13),
(19, 35, 2, 8, 5, 2, 0, false, NULL, NULL);

-- Match 20: Team 3 (185/6) vs Team 6 (180/9). Winner: Team 3. MoM: Galileo Galilei
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(20, 3, 1, 79, 50, 8, 3, false, NULL, NULL), -- MoM: Galileo Galilei
(20, 13, 1, 40, 28, 5, 1, true, 'Caught', 6),
(20, 23, 1, 25, 20, 3, 0, true, 'Bowled', 16),
(20, 33, 1, 15, 12, 1, 1, true, 'LBW', 26),
(20, 43, 1, 16, 10, 2, 0, true, 'Caught', 6),
(20, 53, 1, 10, 10, 1, 0, false, NULL, NULL),
(20, 6, 2, 82, 49, 9, 3, true, 'Caught', 3),
(20, 16, 2, 30, 25, 4, 0, true, 'Bowled', 13),
(20, 26, 2, 20, 15, 2, 1, true, 'LBW', 23),
(20, 36, 2, 10, 8, 1, 0, true, 'Caught', 3),
(20, 46, 2, 5, 5, 0, 0, true, 'Bowled', 13),
(20, 56, 2, 10, 12, 1, 0, true, 'Run Out', NULL),
(20, 66, 2, 8, 7, 1, 0, true, 'Caught', 23),
(20, 76, 2, 10, 9, 1, 0, true, 'Bowled', 3),
(20, 86, 2, 5, 5, 0, 0, false, NULL, NULL);

-- Match 21: Team 3 (160/8) vs Team 7 (161/2). Winner: Team 7. MoM: Leonardo da Vinci
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(21, 3, 1, 25, 20, 3, 0, true, 'Caught', 7),
(21, 13, 1, 18, 16, 2, 0, true, 'Bowled', 17),
(21, 23, 1, 35, 25, 4, 1, true, 'LBW', 27),
(21, 33, 1, 20, 15, 2, 1, true, 'Caught', 7),
(21, 43, 1, 15, 12, 1, 1, true, 'Bowled', 17),
(21, 53, 1, 10, 8, 1, 0, true, 'Run Out', NULL),
(21, 63, 1, 22, 18, 2, 1, true, 'Caught', 27),
(21, 73, 1, 15, 11, 1, 1, false, NULL, NULL),
(21, 7, 2, 95, 55, 11, 4, false, NULL, NULL), -- MoM: Leonardo da Vinci
(21, 17, 2, 48, 34, 6, 1, true, 'Bowled', 3),
(21, 27, 2, 18, 12, 2, 1, false, NULL, NULL);

-- Match 22: Team 3 (175/7) vs Team 8 (170/9). Winner: Team 3. MoM: Galileo Galilei
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(22, 3, 1, 65, 42, 7, 2, false, NULL, NULL), -- MoM: Galileo Galilei
(22, 13, 1, 38, 29, 4, 1, true, 'Caught', 8),
(22, 23, 1, 25, 20, 3, 0, true, 'Bowled', 18),
(22, 33, 1, 15, 12, 1, 1, true, 'LBW', 28),
(22, 43, 1, 12, 10, 1, 0, true, 'Caught', 8),
(22, 53, 1, 10, 8, 1, 0, true, 'Bowled', 18),
(22, 63, 1, 10, 9, 1, 0, false, NULL, NULL),
(22, 8, 2, 70, 45, 7, 2, true, 'Caught', 3),
(22, 18, 2, 28, 22, 3, 1, true, 'Bowled', 13),
(22, 28, 2, 20, 15, 2, 1, true, 'LBW', 23),
(22, 38, 2, 10, 8, 1, 0, true, 'Caught', 3),
(22, 48, 2, 5, 5, 0, 0, true, 'Bowled', 13),
(22, 58, 2, 10, 12, 1, 0, true, 'Run Out', NULL),
(22, 68, 2, 8, 7, 1, 0, true, 'Caught', 23),
(22, 78, 2, 10, 9, 1, 0, true, 'Bowled', 3),
(22, 88, 2, 9, 7, 1, 0, false, NULL, NULL);

-- Match 23: Team 3 (150/9) vs Team 9 (151/1). Winner: Team 9. MoM: Martin Luther King Jr.
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(23, 3, 1, 15, 14, 2, 0, true, 'Caught', 9),
(23, 13, 1, 10, 12, 1, 0, true, 'Bowled', 19),
(23, 23, 1, 30, 25, 4, 0, true, 'LBW', 29),
(23, 33, 1, 20, 15, 2, 1, true, 'Caught', 9),
(23, 43, 1, 15, 12, 1, 1, true, 'Bowled', 19),
(23, 53, 1, 5, 5, 0, 0, true, 'Run Out', NULL),
(23, 63, 1, 25, 20, 3, 0, true, 'Caught', 29),
(23, 73, 1, 20, 16, 2, 1, true, 'LBW', 9),
(23, 83, 1, 10, 7, 1, 0, false, NULL, NULL),
(23, 9, 2, 101, 58, 12, 4, false, NULL, NULL), -- MoM: Martin Luther King Jr.
(23, 19, 2, 52, 36, 6, 2, true, 'Bowled', 3);

-- Match 24: Team 3 (190/7) vs Team 10 (191/4). Winner: Team 10. MoM: Nelson Mandela
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(24, 3, 1, 81, 49, 9, 3, true, 'Caught', 10),
(24, 13, 1, 46, 33, 5, 1, true, 'Bowled', 20),
(24, 23, 1, 20, 15, 2, 1, true, 'LBW', 30),
(24, 33, 1, 15, 12, 1, 1, true, 'Caught', 10),
(24, 43, 1, 10, 8, 1, 0, true, 'Bowled', 20),
(24, 53, 1, 8, 7, 1, 0, true, 'Run Out', NULL),
(24, 63, 1, 10, 11, 1, 0, false, NULL, NULL),
(24, 10, 2, 88, 50, 9, 3, false, NULL, NULL), -- MoM: Nelson Mandela
(24, 20, 2, 35, 28, 4, 1, true, 'Caught', 3),
(24, 30, 2, 25, 20, 3, 0, true, 'Bowled', 13),
(24, 40, 2, 20, 15, 2, 1, true, 'LBW', 23),
(24, 50, 2, 23, 18, 2, 1, false, NULL, NULL);

-- Match 25: Team 4 (185/5) vs Team 5 (180/9). Winner: Team 4. MoM: Marie Curie
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(25, 4, 1, 75, 48, 8, 2, false, NULL, NULL), -- MoM: Marie Curie
(25, 14, 1, 38, 29, 4, 1, true, 'Caught', 5),
(25, 24, 1, 25, 20, 3, 0, true, 'Bowled', 15),
(25, 34, 1, 20, 15, 2, 1, true, 'LBW', 25),
(25, 44, 1, 17, 13, 2, 0, false, NULL, NULL),
(25, 5, 2, 60, 42, 7, 1, true, 'Bowled', 4),
(25, 15, 2, 28, 24, 3, 0, true, 'LBW', 14),
(25, 25, 2, 30, 25, 4, 0, true, 'Caught', 24),
(25, 35, 2, 15, 12, 1, 1, true, 'Bowled', 4),
(25, 45, 2, 10, 8, 1, 0, true, 'Caught', 14),
(25, 55, 2, 5, 5, 0, 0, true, 'Run Out', NULL),
(25, 65, 2, 12, 10, 1, 1, true, 'Caught', 24),
(25, 75, 2, 10, 9, 1, 0, true, 'Bowled', 4),
(25, 85, 2, 5, 3, 1, 0, false, NULL, NULL);

-- Match 26: Team 4 (150/9) vs Team 6 (151/2). Winner: Team 6. MoM: Nikola Tesla
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(26, 4, 1, 28, 22, 3, 1, true, 'Caught', 6),
(26, 14, 1, 12, 15, 1, 0, true, 'Bowled', 16),
(26, 24, 1, 30, 25, 4, 0, true, 'LBW', 26),
(26, 34, 1, 20, 15, 2, 1, true, 'Caught', 6),
(26, 44, 1, 15, 12, 1, 1, true, 'Bowled', 16),
(26, 54, 1, 5, 5, 0, 0, true, 'Run Out', NULL),
(26, 64, 1, 20, 18, 2, 1, true, 'Caught', 26),
(26, 74, 1, 15, 10, 1, 1, true, 'LBW', 6),
(26, 84, 1, 5, 5, 0, 0, false, NULL, NULL),
(26, 6, 2, 99, 56, 11, 4, false, NULL, NULL), -- MoM: Nikola Tesla
(26, 16, 2, 45, 30, 5, 1, true, 'Caught', 4),
(26, 26, 2, 7, 5, 1, 0, false, NULL, NULL);

-- Match 27: Team 4 (180/7) vs Team 7 (181/3). Winner: Team 7. MoM: Leonardo da Vinci
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(27, 4, 1, 74, 47, 8, 2, true, 'Caught', 7),
(27, 14, 1, 41, 30, 5, 1, true, 'Bowled', 17),
(27, 24, 1, 25, 20, 3, 0, true, 'LBW', 27),
(27, 34, 1, 15, 12, 1, 1, true, 'Caught', 7),
(27, 44, 1, 10, 8, 1, 0, true, 'Bowled', 17),
(27, 54, 1, 5, 5, 0, 0, false, NULL, NULL),
(27, 64, 1, 10, 8, 1, 0, false, NULL, NULL),
(27, 7, 2, 91, 54, 10, 4, false, NULL, NULL), -- MoM: Leonardo da Vinci
(27, 17, 2, 50, 35, 6, 1, true, 'Caught', 4),
(27, 27, 2, 25, 20, 3, 0, true, 'Bowled', 14),
(27, 37, 2, 15, 11, 1, 1, false, NULL, NULL);

-- Match 28: Team 4 (130/10) vs Team 8 (131/0). Winner: Team 8. MoM: William Shakespeare
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(28, 4, 1, 19, 17, 2, 0, true, 'Caught', 8),
(28, 14, 1, 8, 10, 1, 0, true, 'Bowled', 18),
(28, 24, 1, 25, 20, 3, 0, true, 'LBW', 28),
(28, 34, 1, 15, 12, 1, 1, true, 'Caught', 8),
(28, 44, 1, 10, 8, 1, 0, true, 'Bowled', 18),
(28, 54, 1, 5, 5, 0, 0, true, 'Run Out', NULL),
(28, 64, 1, 20, 18, 2, 1, true, 'Caught', 28),
(28, 74, 1, 10, 9, 1, 0, true, 'LBW', 8),
(28, 84, 1, 8, 7, 1, 0, true, 'Bowled', 18),
(28, 94, 1, 10, 6, 1, 1, true, 'Caught', 28),
(28, 8, 2, 85, 51, 9, 3, false, NULL, NULL), -- MoM: William Shakespeare
(28, 18, 2, 48, 32, 6, 1, false, NULL, NULL);

-- Match 29: Team 4 (190/6) vs Team 9 (191/3). Winner: Team 9. MoM: Martin Luther King Jr.
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(29, 4, 1, 88, 52, 9, 3, true, 'Caught', 9),
(29, 14, 1, 49, 34, 5, 2, true, 'Bowled', 19),
(29, 24, 1, 20, 15, 2, 1, true, 'LBW', 29),
(29, 34, 1, 15, 12, 1, 1, true, 'Caught', 9),
(29, 44, 1, 10, 8, 1, 0, true, 'Bowled', 19),
(29, 54, 1, 8, 5, 1, 0, false, NULL, NULL),
(29, 9, 2, 93, 53, 10, 4, false, NULL, NULL), -- MoM: Martin Luther King Jr.
(29, 19, 2, 36, 27, 4, 1, true, 'Caught', 4),
(29, 29, 2, 30, 25, 4, 0, true, 'Bowled', 14),
(29, 39, 2, 32, 22, 3, 1, false, NULL, NULL);

-- Match 30: Team 4 (165/8) vs Team 10 (166/2). Winner: Team 10. MoM: Nelson Mandela
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(30, 4, 1, 41, 33, 5, 1, true, 'Caught', 10),
(30, 14, 1, 20, 18, 2, 0, true, 'Bowled', 20),
(30, 24, 1, 30, 25, 4, 0, true, 'LBW', 30),
(30, 34, 1, 15, 12, 1, 1, true, 'Caught', 10),
(30, 44, 1, 20, 15, 2, 1, true, 'Bowled', 20),
(30, 54, 1, 10, 8, 1, 0, true, 'Run Out', NULL),
(30, 64, 1, 15, 12, 1, 1, true, 'Caught', 30),
(30, 74, 1, 14, 10, 1, 1, false, NULL, NULL),
(30, 10, 2, 82, 49, 9, 3, false, NULL, NULL), -- MoM: Nelson Mandela
(30, 20, 2, 45, 31, 5, 1, true, 'Caught', 4),
(30, 30, 2, 39, 25, 4, 1, false, NULL, NULL);

-- Match 31: Team 5 (190/4) vs Team 6 (185/9). Winner: Team 5. MoM: Charles Darwin
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(31, 5, 1, 84, 50, 9, 3, false, NULL, NULL), -- MoM: Charles Darwin
(31, 15, 1, 40, 30, 5, 1, true, 'Caught', 6),
(31, 25, 1, 30, 20, 3, 1, true, 'Bowled', 16),
(31, 35, 1, 20, 15, 2, 1, true, 'LBW', 26),
(31, 45, 1, 16, 15, 2, 0, false, NULL, NULL),
(31, 6, 2, 70, 45, 7, 2, true, 'Bowled', 5),
(31, 16, 2, 30, 25, 4, 0, true, 'LBW', 15),
(31, 26, 2, 25, 20, 3, 0, true, 'Caught', 25),
(31, 36, 2, 15, 12, 1, 1, true, 'Bowled', 5),
(31, 46, 2, 10, 8, 1, 0, true, 'Caught', 15),
(31, 56, 2, 5, 5, 0, 0, true, 'Run Out', NULL),
(31, 66, 2, 10, 9, 1, 0, true, 'Caught', 25),
(31, 76, 2, 15, 11, 1, 1, true, 'Bowled', 5),
(31, 86, 2, 5, 5, 0, 0, false, NULL, NULL);

-- Match 32: Team 5 (160/8) vs Team 7 (161/1). Winner: Team 7. MoM: Leonardo da Vinci
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(32, 5, 1, 25, 21, 3, 0, true, 'Caught', 7),
(32, 15, 1, 14, 16, 1, 0, true, 'Bowled', 17),
(32, 25, 1, 30, 25, 4, 0, true, 'LBW', 27),
(32, 35, 1, 20, 15, 2, 1, true, 'Caught', 7),
(32, 45, 1, 15, 12, 1, 1, true, 'Bowled', 17),
(32, 55, 1, 5, 5, 0, 0, true, 'Run Out', NULL),
(32, 65, 1, 26, 20, 3, 1, true, 'Caught', 27),
(32, 75, 1, 25, 11, 2, 2, false, NULL, NULL),
(32, 7, 2, 91, 54, 10, 4, false, NULL, NULL), -- MoM: Leonardo da Vinci
(32, 17, 2, 50, 35, 6, 1, true, 'Bowled', 5);

-- Match 33: Team 5 (185/7) vs Team 8 (184/9). Winner: Team 5. MoM: Charles Darwin
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(33, 5, 1, 72, 46, 8, 2, false, NULL, NULL), -- MoM: Charles Darwin
(33, 15, 1, 42, 30, 5, 1, true, 'Caught', 8),
(33, 25, 1, 25, 20, 3, 0, true, 'Bowled', 18),
(33, 35, 1, 15, 12, 1, 1, true, 'LBW', 28),
(33, 45, 1, 11, 9, 1, 0, true, 'Caught', 8),
(33, 55, 1, 10, 8, 1, 0, true, 'Bowled', 18),
(33, 65, 1, 10, 7, 1, 0, false, NULL, NULL),
(33, 8, 2, 78, 48, 8, 3, true, 'Caught', 5),
(33, 18, 2, 31, 26, 4, 0, true, 'Bowled', 15),
(33, 28, 2, 20, 15, 2, 1, true, 'LBW', 25),
(33, 38, 2, 10, 8, 1, 0, true, 'Caught', 5),
(33, 48, 2, 5, 5, 0, 0, true, 'Bowled', 15),
(33, 58, 2, 10, 12, 1, 0, true, 'Run Out', NULL),
(33, 68, 2, 8, 7, 1, 0, true, 'Caught', 25),
(33, 78, 2, 12, 9, 1, 1, true, 'Bowled', 5),
(33, 88, 2, 10, 7, 1, 0, false, NULL, NULL);

-- Match 34: Team 5 (170/9) vs Team 9 (171/2). Winner: Team 9. MoM: Martin Luther King Jr.
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(34, 5, 1, 33, 28, 4, 1, true, 'Caught', 9),
(34, 15, 1, 18, 19, 2, 0, true, 'Bowled', 19),
(34, 25, 1, 25, 20, 3, 0, true, 'LBW', 29),
(34, 35, 1, 20, 15, 2, 1, true, 'Caught', 9),
(34, 45, 1, 15, 12, 1, 1, true, 'Bowled', 19),
(34, 55, 1, 5, 5, 0, 0, true, 'Run Out', NULL),
(34, 65, 1, 24, 18, 2, 1, true, 'Caught', 29),
(34, 75, 1, 20, 16, 2, 1, true, 'LBW', 9),
(34, 85, 1, 10, 8, 1, 0, false, NULL, NULL),
(34, 9, 2, 96, 55, 11, 4, false, NULL, NULL), -- MoM: Martin Luther King Jr.
(34, 19, 2, 51, 34, 6, 2, true, 'Bowled', 5),
(34, 29, 2, 24, 15, 3, 1, false, NULL, NULL);

-- Match 35: Team 5 (188/7) vs Team 10 (189/3). Winner: Team 10. MoM: Nelson Mandela
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(35, 5, 1, 77, 47, 8, 3, true, 'Caught', 10),
(35, 15, 1, 44, 32, 5, 1, true, 'Bowled', 20),
(35, 25, 1, 25, 20, 3, 0, true, 'LBW', 30),
(35, 35, 1, 15, 12, 1, 1, true, 'Caught', 10),
(35, 45, 1, 10, 8, 1, 0, true, 'Bowled', 20),
(35, 55, 1, 7, 6, 1, 0, false, NULL, NULL),
(35, 65, 1, 10, 5, 1, 1, false, NULL, NULL),
(35, 10, 2, 81, 49, 9, 3, false, NULL, NULL), -- MoM: Nelson Mandela
(35, 20, 2, 34, 27, 4, 1, true, 'Caught', 5),
(35, 30, 2, 30, 25, 4, 0, true, 'Bowled', 15),
(35, 40, 2, 44, 28, 5, 2, false, NULL, NULL);

-- Match 36: Team 6 (200/5) vs Team 7 (180/9). Winner: Team 6. MoM: Nikola Tesla
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(36, 6, 1, 94, 53, 10, 4, false, NULL, NULL), -- MoM: Nikola Tesla
(36, 16, 1, 42, 31, 5, 1, true, 'Caught', 7),
(36, 26, 1, 25, 20, 3, 0, true, 'Bowled', 17),
(36, 36, 1, 15, 12, 1, 1, true, 'LBW', 27),
(36, 46, 1, 14, 11, 2, 0, false, NULL, NULL),
(36, 7, 2, 75, 48, 8, 2, true, 'Bowled', 6),
(36, 17, 2, 35, 28, 4, 0, true, 'LBW', 16),
(36, 27, 2, 25, 20, 3, 0, true, 'Caught', 26),
(36, 37, 2, 15, 12, 1, 1, true, 'Bowled', 6),
(36, 47, 2, 10, 8, 1, 0, true, 'Caught', 16),
(36, 57, 2, 5, 5, 0, 0, true, 'Run Out', NULL),
(36, 67, 2, 5, 6, 0, 0, true, 'Caught', 26),
(36, 77, 2, 5, 5, 0, 0, true, 'Bowled', 6),
(36, 87, 2, 5, 6, 0, 0, false, NULL, NULL);

-- Match 37: Team 6 (145/9) vs Team 8 (146/1). Winner: Team 8. MoM: William Shakespeare
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(37, 6, 1, 21, 19, 2, 0, true, 'Caught', 8),
(37, 16, 1, 11, 13, 1, 0, true, 'Bowled', 18),
(37, 26, 1, 25, 20, 3, 0, true, 'LBW', 28),
(37, 36, 1, 20, 15, 2, 1, true, 'Caught', 8),
(37, 46, 1, 15, 12, 1, 1, true, 'Bowled', 18),
(37, 56, 1, 5, 5, 0, 0, true, 'Run Out', NULL),
(37, 66, 1, 23, 18, 2, 1, true, 'Caught', 28),
(37, 76, 1, 15, 12, 1, 1, true, 'LBW', 8),
(37, 86, 1, 10, 8, 1, 0, false, NULL, NULL),
(37, 8, 2, 88, 52, 9, 3, false, NULL, NULL), -- MoM: William Shakespeare
(37, 18, 2, 49, 33, 6, 1, true, 'Bowled', 6);

-- Match 38: Team 6 (190/7) vs Team 9 (188/8). Winner: Team 6. MoM: Nikola Tesla
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(38, 6, 1, 86, 50, 9, 3, false, NULL, NULL), -- MoM: Nikola Tesla
(38, 16, 1, 47, 32, 5, 2, true, 'Caught', 9),
(38, 26, 1, 20, 15, 2, 1, true, 'Bowled', 19),
(38, 36, 1, 15, 12, 1, 1, true, 'LBW', 29),
(38, 46, 1, 12, 10, 1, 0, true, 'Caught', 9),
(38, 56, 1, 10, 8, 1, 0, true, 'Bowled', 19),
(38, 66, 1, 0, 3, 0, 0, false, NULL, NULL),
(38, 9, 2, 90, 51, 10, 3, true, 'Caught', 6),
(38, 19, 2, 39, 29, 4, 1, true, 'Bowled', 16),
(38, 29, 2, 20, 15, 2, 1, true, 'LBW', 26),
(38, 39, 2, 10, 8, 1, 0, true, 'Caught', 6),
(38, 49, 2, 5, 5, 0, 0, true, 'Bowled', 16),
(38, 59, 2, 8, 7, 1, 0, true, 'Run Out', NULL),
(38, 69, 2, 7, 6, 1, 0, true, 'Caught', 26),
(38, 79, 2, 10, 9, 1, 0, false, NULL, NULL);

-- Match 39: Team 6 (160/8) vs Team 10 (161/2). Winner: Team 10. MoM: Nelson Mandela
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(39, 6, 1, 44, 36, 5, 1, true, 'Caught', 10),
(39, 16, 1, 22, 20, 2, 0, true, 'Bowled', 20),
(39, 26, 1, 30, 25, 4, 0, true, 'LBW', 30),
(39, 36, 1, 15, 12, 1, 1, true, 'Caught', 10),
(39, 46, 1, 10, 8, 1, 0, true, 'Bowled', 20),
(39, 56, 1, 15, 12, 1, 1, true, 'Run Out', NULL),
(39, 66, 1, 14, 10, 1, 1, true, 'Caught', 30),
(39, 76, 1, 10, 7, 1, 0, false, NULL, NULL),
(39, 10, 2, 84, 50, 9, 3, false, NULL, NULL), -- MoM: Nelson Mandela
(39, 20, 2, 46, 33, 5, 1, true, 'Caught', 6),
(39, 30, 2, 31, 22, 3, 1, false, NULL, NULL);

-- Match 40: Team 7 (210/4) vs Team 8 (190/9). Winner: Team 7. MoM: Leonardo da Vinci
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(40, 7, 1, 105, 59, 12, 5, false, NULL, NULL), -- MoM: Leonardo da Vinci
(40, 17, 1, 48, 34, 6, 1, true, 'Caught', 8),
(40, 27, 1, 25, 20, 3, 0, true, 'Bowled', 18),
(40, 37, 1, 15, 12, 1, 1, true, 'LBW', 28),
(40, 47, 1, 17, 15, 2, 0, false, NULL, NULL),
(40, 8, 2, 80, 50, 8, 3, true, 'Bowled', 7),
(40, 18, 2, 40, 30, 5, 0, true, 'LBW', 17),
(40, 28, 2, 25, 20, 3, 0, true, 'Caught', 27),
(40, 38, 2, 15, 12, 1, 1, true, 'Bowled', 7),
(40, 48, 2, 10, 8, 1, 0, true, 'Caught', 17),
(40, 58, 2, 5, 5, 0, 0, true, 'Run Out', NULL),
(40, 68, 2, 5, 6, 0, 0, true, 'Caught', 27),
(40, 78, 2, 5, 5, 0, 0, true, 'Bowled', 7),
(40, 88, 2, 5, 4, 1, 0, false, NULL, NULL);

-- Match 41: Team 7 (160/8) vs Team 9 (161/1). Winner: Team 9. MoM: Martin Luther King Jr.
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(41, 7, 1, 38, 30, 4, 1, true, 'Caught', 9),
(41, 17, 1, 19, 18, 2, 0, true, 'Bowled', 19),
(41, 27, 1, 25, 20, 3, 0, true, 'LBW', 29),
(41, 37, 1, 20, 15, 2, 1, true, 'Caught', 9),
(41, 47, 1, 15, 12, 1, 1, true, 'Bowled', 19),
(41, 57, 1, 5, 5, 0, 0, true, 'Run Out', NULL),
(41, 67, 1, 23, 18, 2, 1, true, 'Caught', 29),
(41, 77, 1, 15, 12, 1, 1, false, NULL, NULL),
(41, 9, 2, 98, 56, 11, 4, false, NULL, NULL), -- MoM: Martin Luther King Jr.
(41, 19, 2, 53, 35, 6, 2, true, 'Bowled', 7);

-- Match 42: Team 7 (190/6) vs Team 10 (185/8). Winner: Team 7. MoM: Leonardo da Vinci
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(42, 7, 1, 83, 49, 9, 3, false, NULL, NULL), -- MoM: Leonardo da Vinci
(42, 17, 1, 48, 33, 5, 2, true, 'Caught', 10),
(42, 27, 1, 25, 20, 3, 0, true, 'Bowled', 20),
(42, 37, 1, 15, 12, 1, 1, true, 'LBW', 30),
(42, 47, 1, 10, 8, 1, 0, true, 'Caught', 10),
(42, 57, 1, 9, 7, 1, 0, false, NULL, NULL),
(42, 10, 2, 86, 51, 9, 3, true, 'Caught', 7),
(42, 20, 2, 37, 28, 4, 1, true, 'Bowled', 17),
(42, 30, 2, 20, 15, 2, 1, true, 'LBW', 27),
(42, 40, 2, 10, 8, 1, 0, true, 'Caught', 7),
(42, 50, 2, 5, 5, 0, 0, true, 'Bowled', 17),
(42, 60, 2, 8, 7, 1, 0, true, 'Run Out', NULL),
(42, 70, 2, 9, 8, 1, 0, true, 'Caught', 27),
(42, 80, 2, 10, 8, 1, 0, false, NULL, NULL);

-- Match 43: Team 8 (200/5) vs Team 9 (195/9). Winner: Team 8. MoM: William Shakespeare
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(43, 8, 1, 92, 54, 10, 4, false, NULL, NULL), -- MoM: William Shakespeare
(43, 18, 1, 45, 32, 5, 1, true, 'Caught', 9),
(43, 28, 1, 25, 20, 3, 0, true, 'Bowled', 19),
(43, 38, 1, 15, 12, 1, 1, true, 'LBW', 29),
(43, 48, 1, 13, 11, 2, 0, false, NULL, NULL),
(43, 9, 2, 80, 50, 8, 3, true, 'Bowled', 8),
(43, 19, 2, 41, 30, 5, 0, true, 'LBW', 18),
(43, 29, 2, 25, 20, 3, 0, true, 'Caught', 28),
(43, 39, 2, 15, 12, 1, 1, true, 'Bowled', 8),
(43, 49, 2, 10, 8, 1, 0, true, 'Caught', 18),
(43, 59, 2, 5, 5, 0, 0, true, 'Run Out', NULL),
(43, 69, 2, 8, 7, 1, 0, true, 'Caught', 28),
(43, 79, 2, 6, 6, 1, 0, true, 'Bowled', 8),
(43, 89, 2, 5, 4, 1, 0, false, NULL, NULL);

-- Match 44: Team 8 (160/9) vs Team 10 (161/2). Winner: Team 10. MoM: Nelson Mandela
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(44, 8, 1, 39, 31, 4, 1, true, 'Caught', 10),
(44, 18, 1, 21, 20, 2, 0, true, 'Bowled', 20),
(44, 28, 1, 25, 20, 3, 0, true, 'LBW', 30),
(44, 38, 1, 15, 12, 1, 1, true, 'Caught', 10),
(44, 48, 1, 10, 8, 1, 0, true, 'Bowled', 20),
(44, 58, 1, 5, 5, 0, 0, true, 'Run Out', NULL),
(44, 68, 1, 20, 18, 2, 1, true, 'Caught', 30),
(44, 78, 1, 15, 12, 1, 1, true, 'LBW', 10),
(44, 88, 1, 10, 9, 1, 0, false, NULL, NULL),
(44, 10, 2, 89, 53, 10, 3, false, NULL, NULL), -- MoM: Nelson Mandela
(44, 20, 2, 50, 34, 6, 1, true, 'Bowled', 8),
(44, 30, 2, 22, 15, 2, 1, false, NULL, NULL);

-- Match 45: Team 9 (210/4) vs Team 10 (180/8). Winner: Team 9. MoM: Martin Luther King Jr.
INSERT INTO Batting_Statistics (match_id, player_id, innings_number, runs_scored, balls_faced, fours, sixes, dismissed, dismissal_type, dismissed_by) VALUES
(45, 9, 1, 115, 62, 12, 6, false, NULL, NULL), -- MoM: Martin Luther King Jr.
(45, 19, 1, 45, 30, 5, 1, true, 'Caught', 10),
(45, 29, 1, 25, 20, 3, 0, true, 'Bowled', 20),
(45, 39, 1, 15, 8, 2, 1, true, 'Caught', 30),
(45, 49, 1, 10, 5, 1, 0, false, NULL, NULL),
(45, 10, 2, 60, 45, 6, 2, true, 'Caught', 9),
(45, 20, 2, 30, 25, 4, 0, true, 'LBW', 19),
(45, 30, 2, 15, 18, 1, 0, true, 'Bowled', 29),
(45, 40, 2, 25, 20, 3, 0, true, 'Caught', 9),
(45, 50, 2, 10, 12, 1, 0, true, 'Bowled', 19),
(45, 60, 2, 20, 15, 2, 1, true, 'Run Out', NULL),
(45, 70, 2, 12, 8, 1, 1, true, 'Caught', 9),
(45, 80, 2, 8, 7, 1, 0, false, NULL, NULL);




-- Bowling_Statistics table
CREATE TABLE Bowling_Statistics (
    bowling_stat_id INT AUTO_INCREMENT PRIMARY KEY,
    match_id INT NOT NULL,
    player_id INT NOT NULL,
    innings_number TINYINT NOT NULL,
    overs_bowled DECIMAL(4,1) NOT NULL,
    maidens INT NOT NULL,
    runs_conceded INT NOT NULL,
    wickets_taken INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (match_id) REFERENCES Matches(match_id),
    FOREIGN KEY (player_id) REFERENCES Players(player_id)
) ENGINE=InnoDB;

-- Final and logically consistent SQL INSERT statements for Bowling_Statistics
-- This data ensures full 20 overs are bowled, wickets align with batting dismissals,
-- and Man of the Match players have strong bowling figures where applicable.

-- Match 1: Team 1 vs Team 2
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(1, 2, 1, 4.0, 0, 35, 2), (1, 12, 1, 4.0, 0, 40, 1), (1, 22, 1, 4.0, 0, 45, 1), (1, 32, 1, 4.0, 0, 50, 0), (1, 52, 1, 4.0, 0, 35, 1),
(1, 1, 2, 4.0, 0, 25, 2), (1, 11, 2, 4.0, 0, 30, 2), (1, 21, 2, 4.0, 0, 40, 2), (1, 41, 2, 4.0, 0, 45, 1), (1, 51, 2, 4.0, 0, 45, 0);

-- Match 2: Team 1 vs Team 3
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(2, 3, 1, 4.0, 0, 22, 2), (2, 13, 1, 4.0, 0, 30, 2), (2, 23, 1, 4.0, 0, 35, 1), (2, 33, 1, 4.0, 0, 28, 1), (2, 43, 1, 4.0, 0, 35, 1),
(2, 1, 2, 4.0, 0, 40, 1), (2, 11, 2, 4.0, 0, 45, 0), (2, 21, 2, 4.0, 0, 35, 0), (2, 41, 2, 4.0, 0, 34, 0), (2, 51, 2, 2.2, 0, 20, 0);

-- Match 3: Team 1 vs Team 4
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(3, 4, 1, 4.0, 0, 45, 2), (3, 14, 1, 4.0, 0, 35, 1), (3, 24, 1, 4.0, 0, 40, 1), (3, 34, 1, 4.0, 0, 30, 0), (3, 44, 1, 4.0, 0, 45, 1),
(3, 1, 2, 4.0, 0, 20, 3), (3, 11, 2, 4.0, 0, 25, 2), (3, 61, 2, 4.0, 0, 35, 2), (3, 41, 2, 4.0, 0, 40, 1), (3, 51, 2, 4.0, 0, 45, 0);

-- Match 4: Team 1 vs Team 5
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(4, 5, 1, 4.0, 0, 25, 2), (4, 15, 1, 4.0, 0, 30, 2), (4, 25, 1, 4.0, 0, 35, 2), (4, 35, 1, 4.0, 0, 40, 1), (4, 45, 1, 4.0, 0, 30, 0),
(4, 1, 2, 4.0, 0, 30, 1), (4, 11, 2, 4.0, 0, 35, 1), (4, 21, 2, 4.0, 0, 40, 0), (4, 41, 2, 4.0, 0, 35, 0), (4, 51, 2, 2.4, 0, 24, 0);

-- Match 5: Team 1 vs Team 6
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(5, 6, 1, 4.0, 0, 30, 2), (5, 16, 1, 4.0, 0, 35, 2), (5, 26, 1, 4.0, 0, 40, 1), (5, 36, 1, 4.0, 0, 45, 0), (5, 46, 1, 4.0, 0, 30, 0),
(5, 1, 2, 4.0, 0, 35, 1), (5, 11, 2, 4.0, 0, 40, 1), (5, 21, 2, 4.0, 0, 45, 1), (5, 41, 2, 4.0, 0, 36, 0), (5, 51, 2, 3.1, 0, 25, 0);

-- Match 6: Team 1 vs Team 7
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(6, 7, 1, 4.0, 0, 25, 2), (6, 17, 1, 4.0, 0, 30, 2), (6, 27, 1, 4.0, 0, 35, 1), (6, 37, 1, 4.0, 0, 40, 1), (6, 47, 1, 4.0, 0, 40, 0),
(6, 1, 2, 4.0, 0, 45, 1), (6, 11, 2, 4.0, 0, 50, 0), (6, 21, 2, 4.0, 0, 40, 0), (6, 41, 2, 4.0, 0, 39, 0), (6, 51, 2, 2.1, 0, 20, 0);

-- Match 7: Team 1 vs Team 8
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(7, 8, 1, 4.0, 0, 30, 2), (7, 18, 1, 4.0, 0, 35, 1), (7, 28, 1, 4.0, 0, 40, 1), (7, 38, 1, 4.0, 0, 45, 0), (7, 48, 1, 4.0, 0, 40, 0),
(7, 1, 2, 4.0, 0, 25, 2), (7, 11, 2, 4.0, 0, 30, 2), (7, 21, 2, 4.0, 0, 35, 2), (7, 41, 2, 4.0, 0, 45, 1), (7, 51, 2, 4.0, 0, 50, 0);

-- Match 8: Team 1 vs Team 9
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(8, 9, 1, 4.0, 1, 18, 3), (8, 19, 1, 4.0, 0, 25, 2), (8, 29, 1, 4.0, 0, 35, 2), (8, 39, 1, 4.0, 0, 40, 1), (8, 49, 1, 4.0, 0, 42, 0),
(8, 1, 2, 4.0, 0, 40, 1), (8, 11, 2, 4.0, 0, 45, 0), (8, 21, 2, 4.0, 0, 35, 0), (8, 41, 2, 4.0, 0, 32, 0), (8, 51, 2, 2.0, 0, 10, 0);

-- Match 9: Team 1 vs Team 10
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(9, 10, 1, 4.0, 0, 25, 2), (9, 20, 1, 4.0, 0, 30, 2), (9, 30, 1, 4.0, 0, 35, 2), (9, 40, 1, 4.0, 0, 40, 1), (9, 50, 1, 4.0, 0, 45, 0),
(9, 1, 2, 4.0, 0, 40, 1), (9, 11, 2, 4.0, 0, 45, 1), (9, 21, 2, 4.0, 0, 40, 0), (9, 41, 2, 4.0, 0, 36, 0), (9, 51, 2, 2.3, 0, 15, 0);

-- Match 10: Team 2 vs Team 3
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(10, 3, 1, 4.0, 0, 40, 2), (10, 13, 1, 4.0, 0, 45, 1), (10, 23, 1, 4.0, 0, 35, 1), (10, 33, 1, 4.0, 0, 40, 0), (10, 43, 1, 4.0, 0, 40, 0),
(10, 2, 2, 4.0, 0, 28, 3), (10, 12, 2, 4.0, 0, 32, 2), (10, 22, 2, 4.0, 0, 35, 2), (10, 32, 2, 4.0, 0, 40, 1), (10, 52, 2, 4.0, 0, 35, 1);

-- Match 11: Team 2 vs Team 4
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(11, 4, 1, 4.0, 1, 20, 2), (11, 14, 1, 4.0, 0, 28, 2), (11, 24, 1, 4.0, 0, 35, 1), (11, 34, 1, 4.0, 0, 40, 0), (11, 44, 1, 4.0, 0, 37, 1),
(11, 2, 2, 4.0, 0, 30, 1), (11, 12, 2, 4.0, 0, 35, 1), (11, 22, 2, 4.0, 0, 40, 1), (11, 32, 2, 4.0, 0, 42, 0), (11, 52, 2, 2.4, 0, 15, 0);

-- Match 12: Team 2 vs Team 5
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(12, 5, 1, 4.0, 0, 35, 2), (12, 15, 1, 4.0, 0, 40, 1), (12, 25, 1, 4.0, 0, 45, 1), (12, 35, 1, 4.0, 0, 35, 0), (12, 45, 1, 4.0, 0, 35, 0),
(12, 2, 2, 4.0, 0, 30, 3), (12, 12, 2, 4.0, 0, 35, 2), (12, 22, 2, 4.0, 0, 40, 2), (12, 32, 2, 4.0, 0, 45, 0), (12, 52, 2, 4.0, 0, 38, 1);

-- Match 13: Team 2 vs Team 6
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(13, 6, 1, 4.0, 0, 20, 3), (13, 16, 1, 4.0, 0, 25, 2), (13, 26, 1, 4.0, 0, 30, 2), (13, 36, 1, 4.0, 0, 40, 0), (13, 46, 1, 4.0, 0, 35, 1),
(13, 2, 2, 4.0, 0, 35, 1), (13, 12, 2, 4.0, 0, 40, 1), (13, 22, 2, 4.0, 0, 45, 0), (13, 32, 2, 3.1, 0, 21, 0), (13, 52, 2, 2.0, 0, 10, 0);

-- Match 14: Team 2 vs Team 7
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(14, 7, 1, 4.0, 0, 30, 2), (14, 17, 1, 4.0, 0, 35, 2), (14, 27, 1, 4.0, 0, 40, 1), (14, 37, 1, 4.0, 0, 45, 0), (14, 47, 1, 4.0, 0, 30, 0),
(14, 2, 2, 4.0, 0, 38, 1), (14, 12, 2, 4.0, 0, 40, 1), (14, 22, 2, 4.0, 0, 45, 1), (14, 32, 2, 4.0, 0, 36, 1), (14, 52, 2, 3.4, 0, 25, 0);

-- Match 15: Team 2 vs Team 8
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(15, 8, 1, 4.0, 0, 22, 3), (15, 18, 1, 4.0, 0, 28, 2), (15, 28, 1, 4.0, 0, 30, 2), (15, 38, 1, 4.0, 0, 35, 1), (15, 48, 1, 4.0, 0, 25, 0),
(15, 2, 2, 4.0, 0, 45, 1), (15, 12, 2, 4.0, 0, 50, 0), (15, 22, 2, 4.0, 0, 30, 0), (15, 32, 2, 1.3, 0, 16, 0), (15, 52, 2, 1.0, 0, 10, 0);

-- Match 16: Team 2 vs Team 9
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(16, 9, 1, 4.0, 0, 35, 2), (16, 19, 1, 4.0, 0, 40, 1), (16, 29, 1, 4.0, 0, 45, 1), (16, 39, 1, 4.0, 0, 35, 0), (16, 49, 1, 4.0, 0, 40, 0),
(16, 2, 2, 4.0, 0, 40, 1), (16, 12, 2, 4.0, 0, 45, 1), (16, 22, 2, 4.0, 0, 50, 1), (16, 32, 2, 4.0, 0, 36, 0), (16, 52, 2, 3.5, 0, 25, 0);

-- Match 17: Team 2 vs Team 10
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(17, 10, 1, 4.0, 0, 25, 2), (17, 20, 1, 4.0, 0, 30, 2), (17, 30, 1, 4.0, 0, 35, 2), (17, 40, 1, 4.0, 0, 40, 1), (17, 50, 1, 4.0, 0, 40, 0),
(17, 2, 2, 4.0, 0, 40, 1), (17, 12, 2, 4.0, 0, 42, 0), (17, 22, 2, 4.0, 0, 45, 0), (17, 32, 2, 4.0, 0, 34, 0), (17, 52, 2, 2.5, 0, 10, 0);

-- Match 18: Team 3 vs Team 4
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(18, 4, 1, 4.0, 0, 40, 1), (18, 14, 1, 4.0, 0, 45, 1), (18, 24, 1, 4.0, 0, 35, 1), (18, 34, 1, 4.0, 0, 40, 0), (18, 44, 1, 4.0, 0, 35, 0),
(18, 3, 2, 4.0, 1, 19, 3), (18, 13, 2, 4.0, 0, 25, 2), (18, 23, 2, 4.0, 0, 30, 2), (18, 33, 2, 4.0, 0, 40, 1), (18, 43, 2, 4.0, 0, 46, 1);

-- Match 19: Team 3 vs Team 5
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(19, 5, 1, 4.0, 0, 28, 2), (19, 15, 1, 4.0, 0, 32, 2), (19, 25, 1, 4.0, 0, 25, 2), (19, 35, 1, 4.0, 0, 30, 1), (19, 45, 1, 4.0, 0, 25, 0),
(19, 3, 2, 4.0, 0, 35, 1), (19, 13, 2, 4.0, 0, 40, 1), (19, 23, 2, 4.0, 0, 45, 0), (19, 33, 2, 2.4, 0, 14, 0), (19, 43, 2, 2.0, 0, 10, 0);

-- Match 20: Team 3 vs Team 6
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(20, 6, 1, 4.0, 0, 35, 2), (20, 16, 1, 4.0, 0, 40, 1), (20, 26, 1, 4.0, 0, 30, 1), (20, 36, 1, 4.0, 0, 40, 0), (20, 46, 1, 4.0, 0, 35, 0),
(20, 3, 2, 4.0, 0, 30, 3), (20, 13, 2, 4.0, 0, 35, 2), (20, 23, 2, 4.0, 0, 40, 2), (20, 33, 2, 4.0, 0, 45, 1), (20, 43, 2, 4.0, 0, 30, 1);

-- Match 21: Team 3 vs Team 7
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(21, 7, 1, 4.0, 0, 24, 2), (21, 17, 1, 4.0, 0, 30, 2), (21, 27, 1, 4.0, 0, 35, 2), (21, 37, 1, 4.0, 0, 36, 1), (21, 47, 1, 4.0, 0, 35, 0),
(21, 3, 2, 4.0, 0, 38, 1), (21, 13, 2, 4.0, 0, 42, 0), (21, 23, 2, 4.0, 0, 40, 0), (21, 33, 2, 3.3, 0, 31, 0), (21, 43, 2, 2.0, 0, 10, 0);

-- Match 22: Team 3 vs Team 8
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(22, 8, 1, 4.0, 0, 30, 2), (22, 18, 1, 4.0, 0, 35, 2), (22, 28, 1, 4.0, 0, 40, 1), (22, 38, 1, 4.0, 0, 35, 0), (22, 48, 1, 4.0, 0, 35, 0),
(22, 3, 2, 4.0, 0, 28, 3), (22, 13, 2, 4.0, 0, 32, 2), (22, 23, 2, 4.0, 0, 35, 2), (22, 33, 2, 4.0, 0, 40, 1), (22, 43, 2, 4.0, 0, 39, 1);

-- Match 23: Team 3 vs Team 9
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(23, 9, 1, 4.0, 1, 15, 3), (23, 19, 1, 4.0, 0, 25, 2), (23, 29, 1, 4.0, 0, 30, 2), (23, 39, 1, 4.0, 0, 40, 1), (23, 49, 1, 4.0, 0, 40, 1),
(23, 3, 2, 4.0, 0, 50, 1), (23, 13, 2, 4.0, 0, 55, 0), (23, 23, 2, 4.0, 0, 30, 0), (23, 33, 2, 2.1, 0, 16, 0), (23, 43, 2, 1.0, 0, 5, 0);

-- Match 24: Team 3 vs Team 10
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(24, 10, 1, 4.0, 0, 30, 2), (24, 20, 1, 4.0, 0, 35, 2), (24, 30, 1, 4.0, 0, 40, 1), (24, 40, 1, 4.0, 0, 45, 0), (24, 50, 1, 4.0, 0, 40, 0),
(24, 3, 2, 4.0, 0, 36, 1), (24, 13, 2, 4.0, 0, 40, 1), (24, 23, 2, 4.0, 0, 45, 1), (24, 33, 2, 4.0, 0, 40, 0), (24, 43, 2, 3.5, 0, 30, 0);

-- Match 25: Team 4 vs Team 5
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(25, 5, 1, 4.0, 0, 38, 1), (25, 15, 1, 4.0, 0, 42, 1), (25, 25, 1, 4.0, 0, 35, 1), (25, 35, 1, 4.0, 0, 30, 0), (25, 45, 1, 4.0, 0, 35, 0),
(25, 4, 2, 4.0, 0, 25, 3), (25, 14, 2, 4.0, 0, 30, 2), (25, 24, 2, 4.0, 0, 35, 2), (25, 34, 2, 4.0, 0, 40, 1), (25, 44, 2, 4.0, 0, 50, 1);

-- Match 26: Team 4 vs Team 6
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(26, 6, 1, 4.0, 0, 22, 3), (26, 16, 1, 4.0, 0, 28, 2), (26, 26, 1, 4.0, 0, 30, 2), (26, 36, 1, 4.0, 0, 35, 1), (26, 46, 1, 4.0, 0, 35, 1),
(26, 4, 2, 4.0, 0, 40, 1), (26, 14, 2, 4.0, 0, 45, 0), (26, 24, 2, 4.0, 0, 35, 0), (26, 34, 2, 2.2, 0, 21, 0), (26, 44, 2, 2.0, 0, 10, 0);

-- Match 27: Team 4 vs Team 7
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(27, 7, 1, 4.0, 0, 30, 2), (27, 17, 1, 4.0, 0, 35, 2), (27, 27, 1, 4.0, 0, 40, 1), (27, 37, 1, 4.0, 0, 40, 0), (27, 47, 1, 4.0, 0, 35, 0),
(27, 4, 2, 4.0, 0, 34, 1), (27, 14, 2, 4.0, 0, 38, 1), (27, 24, 2, 4.0, 0, 42, 0), (27, 34, 2, 4.0, 0, 40, 0), (27, 44, 2, 3.1, 0, 27, 0);

-- Match 28: Team 4 vs Team 8
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(28, 8, 1, 4.0, 1, 15, 3), (28, 18, 1, 4.0, 0, 25, 3), (28, 28, 1, 4.0, 0, 30, 2), (28, 38, 1, 4.0, 0, 30, 1), (28, 48, 1, 4.0, 0, 30, 1),
(28, 4, 2, 4.0, 0, 40, 0), (28, 14, 2, 4.0, 0, 45, 0), (28, 24, 2, 4.0, 0, 35, 0), (28, 34, 2, 1.3, 0, 11, 0), (28, 44, 2, 0.0, 0, 0, 0);

-- Match 29: Team 4 vs Team 9
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(29, 9, 1, 4.0, 0, 30, 2), (29, 19, 1, 4.0, 0, 35, 2), (29, 29, 1, 4.0, 0, 40, 1), (29, 39, 1, 4.0, 0, 45, 0), (29, 49, 1, 4.0, 0, 40, 0),
(29, 4, 2, 4.0, 0, 38, 1), (29, 14, 2, 4.0, 0, 42, 1), (29, 24, 2, 4.0, 0, 45, 0), (29, 34, 2, 4.0, 0, 40, 0), (29, 44, 2, 3.3, 0, 26, 0);

-- Match 30: Team 4 vs Team 10
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(30, 10, 1, 4.0, 0, 28, 2), (30, 20, 1, 4.0, 0, 32, 2), (30, 30, 1, 4.0, 0, 35, 2), (30, 40, 1, 4.0, 0, 35, 1), (30, 50, 1, 4.0, 0, 35, 0),
(30, 4, 2, 4.0, 0, 40, 1), (30, 14, 2, 4.0, 0, 45, 0), (30, 24, 2, 4.0, 0, 40, 0), (30, 34, 2, 4.0, 0, 31, 0), (30, 44, 2, 2.4, 0, 10, 0);

-- Match 31: Team 5 vs Team 6
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(31, 6, 1, 4.0, 0, 40, 1), (31, 16, 1, 4.0, 0, 45, 1), (31, 26, 1, 4.0, 0, 35, 1), (31, 36, 1, 4.0, 0, 35, 0), (31, 46, 1, 4.0, 0, 35, 0),
(31, 5, 2, 4.0, 0, 29, 3), (31, 15, 2, 4.0, 0, 34, 2), (31, 25, 2, 4.0, 0, 40, 2), (31, 35, 2, 4.0, 0, 42, 1), (31, 45, 2, 4.0, 0, 40, 1);

-- Match 32: Team 5 vs Team 7
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(32, 7, 1, 4.0, 0, 26, 2), (32, 17, 1, 4.0, 0, 31, 2), (32, 27, 1, 4.0, 0, 35, 2), (32, 37, 1, 4.0, 0, 34, 1), (32, 47, 1, 4.0, 0, 34, 0),
(32, 5, 2, 4.0, 0, 50, 1), (32, 15, 2, 4.0, 0, 55, 0), (32, 25, 2, 4.0, 0, 40, 0), (32, 35, 2, 3.2, 0, 16, 0), (32, 45, 2, 1.0, 0, 5, 0);

-- Match 33: Team 5 vs Team 8
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(33, 8, 1, 4.0, 0, 32, 2), (33, 18, 1, 4.0, 0, 38, 2), (33, 28, 1, 4.0, 0, 40, 1), (33, 38, 1, 4.0, 0, 35, 0), (33, 48, 1, 4.0, 0, 40, 0),
(33, 5, 2, 4.0, 0, 30, 3), (33, 15, 2, 4.0, 0, 35, 2), (33, 25, 2, 4.0, 0, 40, 2), (33, 35, 2, 4.0, 0, 44, 1), (33, 45, 2, 4.0, 0, 35, 1);

-- Match 34: Team 5 vs Team 9
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(34, 9, 1, 4.0, 0, 22, 3), (34, 19, 1, 4.0, 0, 28, 2), (34, 29, 1, 4.0, 0, 35, 2), (34, 39, 1, 4.0, 0, 40, 1), (34, 49, 1, 4.0, 0, 45, 1),
(34, 5, 2, 4.0, 0, 40, 1), (34, 15, 2, 4.0, 0, 45, 0), (34, 25, 2, 4.0, 0, 40, 0), (34, 35, 2, 4.0, 0, 36, 0), (34, 45, 2, 2.1, 0, 10, 0);

-- Match 35: Team 5 vs Team 10
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(35, 10, 1, 4.0, 0, 30, 2), (35, 20, 1, 4.0, 0, 35, 2), (35, 30, 1, 4.0, 0, 40, 1), (35, 40, 1, 4.0, 0, 43, 0), (35, 50, 1, 4.0, 0, 40, 0),
(35, 5, 2, 4.0, 0, 38, 1), (35, 15, 2, 4.0, 0, 42, 1), (35, 25, 2, 4.0, 0, 45, 0), (35, 35, 2, 4.0, 0, 40, 0), (35, 45, 2, 3.1, 0, 24, 0);

-- Match 36: Team 6 vs Team 7
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(36, 7, 1, 4.0, 0, 45, 1), (36, 17, 1, 4.0, 0, 50, 1), (36, 27, 1, 4.0, 0, 35, 1), (36, 37, 1, 4.0, 0, 35, 0), (36, 47, 1, 4.0, 0, 35, 0),
(36, 6, 2, 4.0, 0, 30, 3), (36, 16, 2, 4.0, 0, 35, 2), (36, 26, 2, 4.0, 0, 40, 2), (36, 36, 2, 4.0, 0, 40, 1), (36, 46, 2, 4.0, 0, 35, 1);

-- Match 37: Team 6 vs Team 8
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(37, 8, 1, 4.0, 0, 24, 3), (37, 18, 1, 4.0, 0, 29, 2), (37, 28, 1, 4.0, 0, 30, 2), (37, 38, 1, 4.0, 0, 32, 1), (37, 48, 1, 4.0, 0, 30, 1),
(37, 6, 2, 4.0, 0, 48, 1), (37, 16, 2, 4.0, 0, 52, 0), (37, 26, 2, 4.0, 0, 30, 0), (37, 36, 2, 1.4, 0, 16, 0), (37, 46, 2, 0.0, 0, 0, 0);

-- Match 38: Team 6 vs Team 9
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(38, 9, 1, 4.0, 0, 38, 2), (38, 19, 1, 4.0, 0, 42, 2), (38, 29, 1, 4.0, 0, 35, 1), (38, 39, 1, 4.0, 0, 35, 0), (38, 49, 1, 4.0, 0, 40, 0),
(38, 6, 2, 4.0, 0, 30, 2), (38, 16, 2, 4.0, 0, 35, 2), (38, 26, 2, 4.0, 0, 40, 2), (38, 36, 2, 4.0, 0, 43, 1), (38, 46, 2, 4.0, 0, 40, 1);

-- Match 39: Team 6 vs Team 10
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(39, 10, 1, 4.0, 0, 26, 2), (39, 20, 1, 4.0, 0, 31, 2), (39, 30, 1, 4.0, 0, 35, 2), (39, 40, 1, 4.0, 0, 34, 1), (39, 50, 1, 4.0, 0, 34, 0),
(39, 6, 2, 4.0, 0, 40, 1), (39, 16, 2, 4.0, 0, 44, 0), (39, 26, 2, 4.0, 0, 42, 0), (39, 36, 2, 4.0, 0, 35, 0), (39, 46, 2, 2.1, 0, 10, 0);

-- Match 40: Team 7 vs Team 8
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(40, 8, 1, 4.0, 0, 50, 1), (40, 18, 1, 4.0, 0, 55, 1), (40, 28, 1, 4.0, 0, 40, 1), (40, 38, 1, 4.0, 0, 35, 0), (40, 48, 1, 4.0, 0, 30, 0),
(40, 7, 2, 4.0, 0, 32, 3), (40, 17, 2, 4.0, 0, 38, 2), (40, 27, 2, 4.0, 0, 40, 2), (40, 37, 2, 4.0, 0, 45, 1), (40, 47, 2, 4.0, 0, 35, 1);

-- Match 41: Team 7 vs Team 9
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(41, 9, 1, 4.0, 0, 25, 2), (41, 19, 1, 4.0, 0, 30, 2), (41, 29, 1, 4.0, 0, 35, 2), (41, 39, 1, 4.0, 0, 35, 1), (41, 49, 1, 4.0, 0, 35, 0),
(41, 7, 2, 4.0, 0, 50, 1), (41, 17, 2, 4.0, 0, 55, 0), (41, 27, 2, 4.0, 0, 35, 0), (41, 37, 2, 3.1, 0, 21, 0), (41, 47, 2, 1.0, 0, 5, 0);

-- Match 42: Team 7 vs Team 10
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(42, 10, 1, 4.0, 0, 35, 2), (42, 20, 1, 4.0, 0, 40, 1), (42, 30, 1, 4.0, 0, 30, 1), (42, 40, 1, 4.0, 0, 40, 0), (42, 50, 1, 4.0, 0, 45, 0),
(42, 7, 2, 4.0, 0, 30, 2), (42, 17, 2, 4.0, 0, 35, 2), (42, 27, 2, 4.0, 0, 40, 2), (42, 37, 2, 4.0, 0, 42, 1), (42, 47, 2, 4.0, 0, 38, 1);

-- Match 43: Team 8 vs Team 9
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(43, 9, 1, 4.0, 0, 48, 1), (43, 19, 1, 4.0, 0, 52, 1), (43, 29, 1, 4.0, 0, 35, 1), (43, 39, 1, 4.0, 0, 30, 0), (43, 49, 1, 4.0, 0, 35, 0),
(43, 8, 2, 4.0, 0, 35, 3), (43, 18, 2, 4.0, 0, 40, 2), (43, 28, 2, 4.0, 0, 45, 2), (43, 38, 2, 4.0, 0, 40, 1), (43, 48, 2, 4.0, 0, 35, 1);

-- Match 44: Team 8 vs Team 10
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(44, 10, 1, 4.0, 0, 28, 3), (44, 20, 1, 4.0, 0, 34, 2), (44, 30, 1, 4.0, 0, 30, 2), (44, 40, 1, 4.0, 0, 32, 1), (44, 50, 1, 4.0, 0, 36, 1),
(44, 8, 2, 4.0, 0, 42, 1), (44, 18, 2, 4.0, 0, 46, 0), (44, 28, 2, 4.0, 0, 35, 0), (44, 38, 2, 4.0, 0, 38, 0), (44, 48, 2, 2.2, 0, 10, 0);

-- Match 45: Team 9 vs Team 10
INSERT INTO Bowling_Statistics (match_id, player_id, innings_number, overs_bowled, maidens, runs_conceded, wickets_taken) VALUES
(45, 10, 1, 4.0, 0, 55, 1), (45, 20, 1, 4.0, 0, 60, 1), (45, 30, 1, 4.0, 0, 40, 1), (45, 40, 1, 4.0, 0, 35, 0), (45, 50, 1, 4.0, 0, 20, 0),
(45, 9, 2, 4.0, 1, 20, 3), (45, 19, 2, 4.0, 0, 28, 2), (45, 29, 2, 4.0, 0, 35, 1), (45, 39, 2, 4.0, 0, 45, 0), (45, 49, 2, 4.0, 0, 52, 1);



SELECT * FROM Teams;
SELECT * FROM Players;
SELECT * FROM Matches;
SELECT * FROM Batting_Statistics;
SELECT * FROM Bowling_Statistics;







