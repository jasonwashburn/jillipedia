
-- Create the table to hold video information
CREATE TABLE IF NOT EXISTS videos (
    id TEXT PRIMARY KEY,
    season INTEGER,
    episode INTEGER,
    title TEXT,
    description TEXT,
    url TEXT
);

-- Create the table to hold thumbnail information
CREATE TABLE IF NOT EXISTS thumbnails (
    video_id TEXT,
    url TEXT,
    width INTEGER,
    height INTEGER,
    FOREIGN KEY (video_id) REFERENCES videos(id)
);


-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('efWB4qNjiVI', 4, 1, 'Mickey''s Art Show', 'Mickey''s putting on an arts and crafts show and everyone busily works on their art.', 'https://www.youtube.com/watch?v=efWB4qNjiVI');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('efWB4qNjiVI', 'https://i.ytimg.com/vi/efWB4qNjiVI/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('8WQCQsJaT1g', 4, 2, 'Mickey''s Camp Out', 'Mickey and his friends set out to earn Clubhouse Camp Out Badges.', 'https://www.youtube.com/watch?v=8WQCQsJaT1g');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('8WQCQsJaT1g', 'https://i.ytimg.com/vi/8WQCQsJaT1g/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('6gu3MG-3gbo', 4, 3, 'Mickey''s Round Up', 'A box of wild numbers with minds of their own run loose in the Clubhouse!', 'https://www.youtube.com/watch?v=6gu3MG-3gbo');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('6gu3MG-3gbo', 'https://i.ytimg.com/vi/6gu3MG-3gbo/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('BMwKR8dNKi0', 4, 4, 'Mickey''s Big Job', 'When the Giant decides to visit his Mama, he asks Mickey and his friends to house-sit his farm.', 'https://www.youtube.com/watch?v=BMwKR8dNKi0');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('BMwKR8dNKi0', 'https://i.ytimg.com/vi/BMwKR8dNKi0/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('mvG1oJpYrP8', 4, 5, 'Pluto''s Bubble Bath', 'When Pluto''s bubble bath gets out of hand, Mickey and Pluto each get stuck in a Giant Bubble!', 'https://www.youtube.com/watch?v=mvG1oJpYrP8');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('mvG1oJpYrP8', 'https://i.ytimg.com/vi/mvG1oJpYrP8/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('-VOJ13KTMh8', 4, 6, 'Mickey''s Silly Problem', 'When the Clubhouse''s Silly Switch gets stuck on silly, everything turns silly.', 'https://www.youtube.com/watch?v=-VOJ13KTMh8');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('-VOJ13KTMh8', 'https://i.ytimg.com/vi/-VOJ13KTMh8/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('7E3kYbJulP4', 4, 7, 'Mickey''s Thanks a Bunch Day', 'It''s Thanks A Bunch Day, the day that Mickey and friends give thanks.', 'https://www.youtube.com/watch?v=7E3kYbJulP4');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('7E3kYbJulP4', 'https://i.ytimg.com/vi/7E3kYbJulP4/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('qCx0RNk-IbU', 4, 8, 'Secret Spy Daisy', 'Sneaky Pete tries to get Clarabelle''s special recipe for Monster Raisin Cookies.', 'https://www.youtube.com/watch?v=qCx0RNk-IbU');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('qCx0RNk-IbU', 'https://i.ytimg.com/vi/qCx0RNk-IbU/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('q5WBnVDASI8', 4, 9, 'Pluto to the Rescue!', 'Donald and Goofy love making snow sculptures on the top of Mistletoe Mountain!', 'https://www.youtube.com/watch?v=q5WBnVDASI8');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('q5WBnVDASI8', 'https://i.ytimg.com/vi/q5WBnVDASI8/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('u8j1d6w7ots', 4, 10, 'Sir Goofs-a-lot', 'Goofy finally gets his chance to be a knight when Queen Clarabelle sends Goofy on a quest.', 'https://www.youtube.com/watch?v=u8j1d6w7ots');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('u8j1d6w7ots', 'https://i.ytimg.com/vi/u8j1d6w7ots/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('LKeHhDwLQVA', 4, 11, 'Minnie''s Mystery', 'When things in the Clubhouse are missing, everyone sets out to find out how to solve the mystery.', 'https://www.youtube.com/watch?v=LKeHhDwLQVA');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('LKeHhDwLQVA', 'https://i.ytimg.com/vi/LKeHhDwLQVA/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('5rS1tJ4Wk8s', 4, 12, 'Mickey''s Comet', 'When Professor Von Drake sets up a telescope, he forgets to tell everyone where he''s going to be!', 'https://www.youtube.com/watch?v=5rS1tJ4Wk8s');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('5rS1tJ4Wk8s', 'https://i.ytimg.com/vi/5rS1tJ4Wk8s/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('KdWv9sGyFzE', 4, 13, 'Clarabelle''s Clubhouse Mooooo-sical', 'Everyone''s excited today because Clarabelle is putting on a musical about Nursery Rhymes.', 'https://www.youtube.com/watch?v=KdWv9sGyFzE');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('KdWv9sGyFzE', 'https://i.ytimg.com/vi/KdWv9sGyFzE/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('mTpROpe0nTY', 5, 1, 'Minnie''s Rainbow', 'When a rainbow appears over the Clubhouse, Mickey and friends set out to find its end.', 'https://www.youtube.com/watch?v=mTpROpe0nTY');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('mTpROpe0nTY', 'https://i.ytimg.com/vi/mTpROpe0nTY/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('fQWB2lxbMBY', 5, 2, 'Space Captain Donald', 'When Pluto''s bouncy ball bounces all the way into space, Mickey and friends take a trip to the Moon.', 'https://www.youtube.com/watch?v=fQWB2lxbMBY');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('fQWB2lxbMBY', 'https://i.ytimg.com/vi/fQWB2lxbMBY/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('6nU3TvNQHPM', 5, 3, 'The Friendship Team', 'Daisy and Minnie team up to find the stolen hats for Clubhouse Friendship Day.', 'https://www.youtube.com/watch?v=6nU3TvNQHPM');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('6nU3TvNQHPM', 'https://i.ytimg.com/vi/6nU3TvNQHPM/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('VLhOsqk--6g', 5, 4, 'Mickey''s Message From Mars', 'When the Professor finds a mysterious pattern of lights flashing, the gang flies up to space!', 'https://www.youtube.com/watch?v=VLhOsqk--6g');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('VLhOsqk--6g', 'https://i.ytimg.com/vi/VLhOsqk--6g/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('FfgF-SSiEEs', 5, 5, 'Pete''s Beach Blanket Luau', 'It''s the hottest day of the year and Pete decides to put on a Luau down at the lake to cool off.', 'https://www.youtube.com/watch?v=FfgF-SSiEEs');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('FfgF-SSiEEs', 'https://i.ytimg.com/vi/FfgF-SSiEEs/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('ym2R-kYCaRk', 5, 6, 'Minnie''s Bee Story', 'Buzzby the Bee has a problem: A strong wind blew him away from his sunflower in Mickey Park!', 'https://www.youtube.com/watch?v=ym2R-kYCaRk');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('ym2R-kYCaRk', 'https://i.ytimg.com/vi/ym2R-kYCaRk/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('NJOvNxRl6ys', 5, 7, 'Pluto''s Playmate', 'Salty the seal is going to be the star of Mickey''s Circus, but the seal doesn''t know any tricks.', 'https://www.youtube.com/watch?v=NJOvNxRl6ys');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('NJOvNxRl6ys', 'https://i.ytimg.com/vi/NJOvNxRl6ys/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('ti_RpLR_o64', 5, 8, 'Donald''s Ducks', 'Ten ducks need help getting to a beach for the winter and Donald eagerly volunteers to help.', 'https://www.youtube.com/watch?v=ti_RpLR_o64');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('ti_RpLR_o64', 'https://i.ytimg.com/vi/ti_RpLR_o64/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('bw3Uj9bihtg', 5, 9, 'Goofy''s Coconutty Monkey', 'Goofy''s good friend Coco the Monkey is planning to have a Coconutty Milk Party for everyone.', 'https://www.youtube.com/watch?v=bw3Uj9bihtg');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('bw3Uj9bihtg', 'https://i.ytimg.com/vi/bw3Uj9bihtg/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('loCI8eHhLgU', 5, 10, 'Mickey and the Enchanted Egg', 'Mickey finds an egg which soon hatches a Baby Dinosaur.', 'https://www.youtube.com/watch?v=loCI8eHhLgU');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('loCI8eHhLgU', 'https://i.ytimg.com/vi/loCI8eHhLgU/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('YJyhd408Hjw', 5, 11, 'Goofy Goes Goofy', 'Goofy accidentally gets soaked with the Professor''s experimental goo and splits into twelve Goofys!', 'https://www.youtube.com/watch?v=YJyhd408Hjw');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('YJyhd408Hjw', 'https://i.ytimg.com/vi/YJyhd408Hjw/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('XcOej6CAMQ0', 5, 12, 'Goofy''s Super Wish', 'Goofy wishes he could be a super-hero so that he can help out his friends.', 'https://www.youtube.com/watch?v=XcOej6CAMQ0');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('XcOej6CAMQ0', 'https://i.ytimg.com/vi/XcOej6CAMQ0/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('iTERezDrF_g', 5, 13, 'Mickey''s Big Surprise', 'Mickey has a big surprise for everyone if they can solve his five Fun Puzzles.', 'https://www.youtube.com/watch?v=iTERezDrF_g');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('iTERezDrF_g', 'https://i.ytimg.com/vi/iTERezDrF_g/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('29c7wYiMBeM', 8, 1, 'Goofy''s Gone', 'The Go-Getters lead us in an exciting game of hide and seek.', 'https://www.youtube.com/watch?v=29c7wYiMBeM');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('29c7wYiMBeM', 'https://i.ytimg.com/vi/29c7wYiMBeM/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('VsIvatswS2Y', 8, 2, 'Goofy Babysitter', 'Von Drake''s Time Machine accidentally turns Mickey, Minnie, Donald, Daisy and Pluto into toddlers!', 'https://www.youtube.com/watch?v=VsIvatswS2Y');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('VsIvatswS2Y', 'https://i.ytimg.com/vi/VsIvatswS2Y/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('lSCy-O9wvLs', 8, 3, 'Space Adventure', 'Mickey and the gang rocket into space to search for Treasure.', 'https://www.youtube.com/watch?v=lSCy-O9wvLs');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('lSCy-O9wvLs', 'https://i.ytimg.com/vi/lSCy-O9wvLs/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('VhbalCdC_cQ', 8, 4, 'Daisy''s Grasshopper', 'Daisy Duck brings a new friend to the Clubhouse, Wilbur the Grasshopper!', 'https://www.youtube.com/watch?v=VhbalCdC_cQ');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('VhbalCdC_cQ', 'https://i.ytimg.com/vi/VhbalCdC_cQ/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('Zv9SyrjIYjA', 8, 5, 'Pluto''s Tale', 'Prince Pluto saves the Princess from Wizard Pete.', 'https://www.youtube.com/watch?v=Zv9SyrjIYjA');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('Zv9SyrjIYjA', 'https://i.ytimg.com/vi/Zv9SyrjIYjA/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('teJoPNOzr8w', 8, 6, 'Goofy''s Thinking Cap', 'Goofy uses a special Thinking Cap to solve Clarabelle Cow''s Scavenger Hunt!', 'https://www.youtube.com/watch?v=teJoPNOzr8w');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('teJoPNOzr8w', 'https://i.ytimg.com/vi/teJoPNOzr8w/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('HhoHwaM906o', 8, 7, 'Minnie and Daisy''s Flower Shower', 'Minnie and Daisy board the Glove Balloon to make rain clouds so they can water their gardens.', 'https://www.youtube.com/watch?v=HhoHwaM906o');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('HhoHwaM906o', 'https://i.ytimg.com/vi/HhoHwaM906o/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('10om6WvSB9o', 8, 8, 'Prince Pete''s Catnap', 'Prince Pete is cranky - he cannot fall asleep! It''s up to our Clubhouse pals to help him take a nap.', 'https://www.youtube.com/watch?v=10om6WvSB9o');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('10om6WvSB9o', 'https://i.ytimg.com/vi/10om6WvSB9o/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('8hGmBfkhe1s', 8, 9, 'Aye, Aye Captain Mickey', 'The Sensational Six board Professor Von Drake''s new submarine to recover Mickey''s Lucky Coin.', 'https://www.youtube.com/watch?v=8hGmBfkhe1s');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('8hGmBfkhe1s', 'https://i.ytimg.com/vi/8hGmBfkhe1s/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('VEdFtMsIXc4', 8, 10, 'Donald Hatches An Egg', 'Donald has to take care of a lost egg while all the Clubhouse friends look for the egg''s family.', 'https://www.youtube.com/watch?v=VEdFtMsIXc4');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('VEdFtMsIXc4', 'https://i.ytimg.com/vi/VEdFtMsIXc4/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('XhALqK6wAHk', 8, 11, 'The Golden Boo-Boo', 'Daisy O''Dare loves Adventure Day, and we''re with her in search of the Golden Boo-Boo!', 'https://www.youtube.com/watch?v=XhALqK6wAHk');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('XhALqK6wAHk', 'https://i.ytimg.com/vi/XhALqK6wAHk/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('CsUEcqOGdac', 10, 1, 'Mickey''s Happy Mousekeday', 'It''s Mickey''s birthday and for his birthday present, his pals have organized fun things for the big Mousekeday. But when problems occur, Mickey takes time out to help his pals.', 'https://www.youtube.com/watch?v=CsUEcqOGdac');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('CsUEcqOGdac', 'https://i.ytimg.com/vi/CsUEcqOGdac/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('n7Qs-z7DyY4', 10, 2, 'Minnie''s Winter Bow Show', 'While Minnie is preparing for her Winter Bow Show, she and her nieces, Millie and Melody, accidentally go off on a wild winter wonderland adventure to the Clubhouse North Pole!', 'https://www.youtube.com/watch?v=n7Qs-z7DyY4');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('n7Qs-z7DyY4', 'https://i.ytimg.com/vi/n7Qs-z7DyY4/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('i_S28yDTsR0', 10, 3, 'Around the Clubhouse World', 'Professor Von Drake gives Mickey a special Clubhouse Passport that has to get stamped at four different "farrrrr-away" locations in order to recieve a super-duper, surprise prize!', 'https://www.youtube.com/watch?v=i_S28yDTsR0');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('i_S28yDTsR0', 'https://i.ytimg.com/vi/i_S28yDTsR0/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('Fp9LIihtkxI', 10, 4, 'Mickey''s Mousekeball', 'Professor Von Drake introduces the Clubhouse pals to a high-tech new game, Floatin'' Fun-Time Mousekeball!  But when the ball escapes, the game takes to the skies!', 'https://www.youtube.com/watch?v=Fp9LIihtkxI');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('Fp9LIihtkxI', 'https://i.ytimg.com/vi/Fp9LIihtkxI/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('UZKytWLhTfM', 10, 5, 'Donald''s Brand New Clubhouse', 'When Donald feels like everybody''s getting in his way in Mickey''s Clubhouse, he decides that he wants his own. So, Mickey and pals help Donald build a clubhouse just for himself.', 'https://www.youtube.com/watch?v=UZKytWLhTfM');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('UZKytWLhTfM', 'https://i.ytimg.com/vi/UZKytWLhTfM/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('ujplKNvAcuA', 10, 6, 'Mickey''s Mousekedoer Adventure', 'When the Mousekedoer malfunctions, Professor Von Drake comes to a realization. The only way to make the repairs is to shrink the Clubhousers and send them inside the machine.', 'https://www.youtube.com/watch?v=ujplKNvAcuA');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('ujplKNvAcuA', 'https://i.ytimg.com/vi/ujplKNvAcuA/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('h7R63SVhKas', 10, 7, 'Mickey''s Monster Musical', 'When the toon car breaks down, Mickey, Minnie, and Pluto head over to an old castle to see if anyone can help them. As they enter the castle, Mickey and Minnie meet COUNT MIKULA!', 'https://www.youtube.com/watch?v=h7R63SVhKas');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('h7R63SVhKas', 'https://i.ytimg.com/vi/h7R63SVhKas/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('oVFh9I6n7fw', 10, 8, 'Pop Star Minnie', 'When Minnie is invited to sing at the top of Mistletoe Mountain, Mickey gathers all their friends to be the back-up band. But, soon they realize all the instruments are missing!', 'https://www.youtube.com/watch?v=oVFh9I6n7fw');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('oVFh9I6n7fw', 'https://i.ytimg.com/vi/oVFh9I6n7fw/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('Qksx-5-zM_Y', 10, 9, 'Chef Goofy on the Go!', 'Word is out that Goofy''s got a lunch truck and all the Clubhouse pals phone in their orders! Nothing will stop Chef Goofy from making his deeelicious deliveries!', 'https://www.youtube.com/watch?v=Qksx-5-zM_Y');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('Qksx-5-zM_Y', 'https://i.ytimg.com/vi/Qksx-5-zM_Y/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('zmWsNqSUah8', 10, 10, 'Oh, Toodles!', 'Professor Von Drake is working on a surprise invention when he discovers that he is missing four of his tools. Toodles helps Mickey find them with Mouseketools and a checklist.', 'https://www.youtube.com/watch?v=zmWsNqSUah8');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('zmWsNqSUah8', 'https://i.ytimg.com/vi/zmWsNqSUah8/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('INmiVXz9_Po', 10, 11, 'Mickey''s Sport-Y-Thon', 'Put on your sneakers, sports fans! Today is the first ever Mickey Mouse Sport-a-thon! It’s an action-filled sports tournament that draws athletes from around the Clubhouse.', 'https://www.youtube.com/watch?v=INmiVXz9_Po');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('INmiVXz9_Po', 'https://i.ytimg.com/vi/INmiVXz9_Po/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('Rrd5OnT7pGg', 10, 12, 'Martian Minnie''s Tea Party', 'Minnie''s on her way to Mars on an urgent mission! Her assignment? Help her outer space twin, Martian Minnie, host a tea party for our Clubhouse friends throughout the galaxy!', 'https://www.youtube.com/watch?v=Rrd5OnT7pGg');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('Rrd5OnT7pGg', 'https://i.ytimg.com/vi/Rrd5OnT7pGg/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('gLWfcaDAMRo', 10, 13, 'A Goofy Fairy Tale', 'It’s bedtime at the Clubhouse and everyone’s ready for their favorite bedtime stories! Unfortunately, Goofy’s magic trick makes all the stories disappear from the Clubhouse books!', 'https://www.youtube.com/watch?v=gLWfcaDAMRo');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('gLWfcaDAMRo', 'https://i.ytimg.com/vi/gLWfcaDAMRo/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('EjB1kz2tn5s', 1, 1, 'Daisy Bo Peep', 'Daisy Duck has lost Bo Peep''s sheep and doesn''t know where to find them!', 'https://www.youtube.com/watch?v=EjB1kz2tn5s');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('EjB1kz2tn5s', 'https://i.ytimg.com/vi/EjB1kz2tn5s/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('AifnGzNrdwE', 1, 2, 'A Surprise for Minnie', 'Mickey needs help to make and deliver a Valentine''s Day card to Minnie.', 'https://www.youtube.com/watch?v=AifnGzNrdwE');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('AifnGzNrdwE', 'https://i.ytimg.com/vi/AifnGzNrdwE/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('YV7ZilaSdaU', 1, 3, 'Goofy''s Bird', 'Goofy finds a lost baby bird and Mickey helps him bring it back home to his mommy in the forest.', 'https://www.youtube.com/watch?v=YV7ZilaSdaU');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('YV7ZilaSdaU', 'https://i.ytimg.com/vi/YV7ZilaSdaU/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('wgGXfRV6GyQ', 1, 4, 'Donald''s Big Balloon Race', 'Mickey helps Donald fly in the Big Balloon Race so he can win a Big Blue Ribbon.', 'https://www.youtube.com/watch?v=wgGXfRV6GyQ');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('wgGXfRV6GyQ', 'https://i.ytimg.com/vi/wgGXfRV6GyQ/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('UhR7U8ZD3_s', 1, 5, 'Mickey Goes Fishing', 'Goofy drops off his kitten, Mr. Pettibone, at the Clubhouse for the day.', 'https://www.youtube.com/watch?v=UhR7U8ZD3_s');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('UhR7U8ZD3_s', 'https://i.ytimg.com/vi/UhR7U8ZD3_s/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('FlxiFv7KAEk', 1, 6, 'Donald and the Beanstalk', 'Donald trades his favorite pet, Boo Boo Chicken, for five magic beans.', 'https://www.youtube.com/watch?v=FlxiFv7KAEk');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('FlxiFv7KAEk', 'https://i.ytimg.com/vi/FlxiFv7KAEk/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('2MYag92llCw', 1, 7, 'Mickey Mouse Clubhouse - Minnie''s Birthday', 'Mickey and friends need help throwing a surprise party for Minnie.', 'https://www.youtube.com/watch?v=2MYag92llCw');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('2MYag92llCw', 'https://i.ytimg.com/vi/2MYag92llCw/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('0u5KXmWpfbQ', 1, 8, 'Donald and the Frog Prince', 'Donald gets turned into a frog when he drinks Professor Von Drake''s new potion.', 'https://www.youtube.com/watch?v=0u5KXmWpfbQ');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('0u5KXmWpfbQ', 'https://i.ytimg.com/vi/0u5KXmWpfbQ/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('l9UqMSZEs8w', 1, 9, 'Goofy''s Mars', 'When Goofy crash lands on Mars, it''s up to Mickey and friends to save him.', 'https://www.youtube.com/watch?v=l9UqMSZEs8w');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('l9UqMSZEs8w', 'https://i.ytimg.com/vi/l9UqMSZEs8w/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('udojj8-pqCM', 1, 10, 'Mickey-Go-Seek', 'During a game of Hide-and-Seek, Mickey has to find Donald, who''s never been found before.', 'https://www.youtube.com/watch?v=udojj8-pqCM');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('udojj8-pqCM', 'https://i.ytimg.com/vi/udojj8-pqCM/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('Z4483_8qT7U', 1, 11, 'Daisy''s Dance', 'Daisy wants to enter the Talent Show but suddenly comes down with a bad case of stage fright.', 'https://www.youtube.com/watch?v=Z4483_8qT7U');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('Z4483_8qT7U', 'https://i.ytimg.com/vi/Z4483_8qT7U/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('m4V375FuO0Q', 1, 12, 'Pluto''s Ball', 'Mickey and the gang get Pluto''s favorite Super-Duper Bouncy Ball back when it bounces away.', 'https://www.youtube.com/watch?v=m4V375FuO0Q');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('m4V375FuO0Q', 'https://i.ytimg.com/vi/m4V375FuO0Q/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('RRTwQuVdIRE', 1, 13, 'Mickey''s Treasure Hunt', 'Mickey finds a note with riddle-like directions to a treasure hidden somewhere in the Clubhouse.', 'https://www.youtube.com/watch?v=RRTwQuVdIRE');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('RRTwQuVdIRE', 'https://i.ytimg.com/vi/RRTwQuVdIRE/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('TDrMuaGjcHQ', 3, 1, 'Fancy Dancin'' Goofy', 'Goofy''s going to the Dance with Clarabelle, but he needs help learning how to "fancy dance!"', 'https://www.youtube.com/watch?v=TDrMuaGjcHQ');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('TDrMuaGjcHQ', 'https://i.ytimg.com/vi/TDrMuaGjcHQ/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('3vzsyoyaGTc', 3, 2, 'Goofy the Homemaker', 'Goofy decides to build a birdy-house for a baby red bird and his mommy.', 'https://www.youtube.com/watch?v=3vzsyoyaGTc');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('3vzsyoyaGTc', 'https://i.ytimg.com/vi/3vzsyoyaGTc/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('7IPRParmJo4', 3, 3, 'Mickey''s Handy Helpers', 'When the Handy Helpers go limp, Mickey finds the machine that makes the clubhouse work is broken.', 'https://www.youtube.com/watch?v=7IPRParmJo4');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('7IPRParmJo4', 'https://i.ytimg.com/vi/7IPRParmJo4/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('3ag0fdwizeU', 3, 4, 'Goofy Baby', 'Professor Von Drake has invented a time machine and Goofy is his first volunteer.', 'https://www.youtube.com/watch?v=3ag0fdwizeU');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('3ag0fdwizeU', 'https://i.ytimg.com/vi/3ag0fdwizeU/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('vpfWzRtMocY', 3, 5, 'Minnie''s Picnic', 'Minnie''s having a picnic to celebrate the new Mickey Mouse Clubhouse Picnic Grounds!', 'https://www.youtube.com/watch?v=vpfWzRtMocY');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('vpfWzRtMocY', 'https://i.ytimg.com/vi/vpfWzRtMocY/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('cZV9WCK3g6g', 3, 6, 'Goofy in Training', 'Goofy needs help learning the difference between left and right, and up, down and over.', 'https://www.youtube.com/watch?v=cZV9WCK3g6g');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('cZV9WCK3g6g', 'https://i.ytimg.com/vi/cZV9WCK3g6g/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('qwlW2ePH84g', 3, 7, 'Mickey''s Big Band Concert', 'The Polka Band is planning to provide musical accompaniment for a dance performance.', 'https://www.youtube.com/watch?v=qwlW2ePH84g');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('qwlW2ePH84g', 'https://i.ytimg.com/vi/qwlW2ePH84g/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('fc9D_HbEfZI', 3, 8, 'Goofy''s Hat', 'When Goofy loses his hat, he doesn''t feel goofy anymore, so Mickey and friends must find it!', 'https://www.youtube.com/watch?v=fc9D_HbEfZI');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('fc9D_HbEfZI', 'https://i.ytimg.com/vi/fc9D_HbEfZI/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('OT79CX7PP2Y', 3, 9, 'Donald''s Special Delivery', 'Donald gets upset when all of his friends get mail, but he doesn''t get any.', 'https://www.youtube.com/watch?v=OT79CX7PP2Y');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('OT79CX7PP2Y', 'https://i.ytimg.com/vi/OT79CX7PP2Y/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('zNdtuXY-Bxc', 3, 10, 'Daisy''s Pet Project', 'There''s going to be a Pet Parade at the Clubhouse, but Daisy doesn''t have her own pet!', 'https://www.youtube.com/watch?v=zNdtuXY-Bxc');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('zNdtuXY-Bxc', 'https://i.ytimg.com/vi/zNdtuXY-Bxc/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('rhe7SkTGRwk', 3, 11, 'Clarabelle''s Clubhouse Carnival', 'Mickey and his friends put on a carnival to help Clarabelle collect pieces of corn for her chickens.', 'https://www.youtube.com/watch?v=rhe7SkTGRwk');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('rhe7SkTGRwk', 'https://i.ytimg.com/vi/rhe7SkTGRwk/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('RTqLNNtsA2A', 3, 12, 'Mickey and Minnie''s Jungle Safari', 'Minnie is determined to snap a photo of the rare Hula Hibiscus that only blooms once a year.', 'https://www.youtube.com/watch?v=RTqLNNtsA2A');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('RTqLNNtsA2A', 'https://i.ytimg.com/vi/RTqLNNtsA2A/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('_7C5GGfPv5k', 6, 1, 'Mickey Mouse Clubhouse - Choo-Choo Express', 'Mickey and his friends put together a Choo-Choo train and use it to help Professor Von Drake.', 'https://www.youtube.com/watch?v=_7C5GGfPv5k');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('_7C5GGfPv5k', 'https://i.ytimg.com/vi/_7C5GGfPv5k/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('Y7AWhUM_8YU', 6, 2, 'Goofy''s Goofbot', 'Today is Build-Your-Own-Toy Day, and Goofy needs help building his toy robot in time for the Fair.', 'https://www.youtube.com/watch?v=Y7AWhUM_8YU');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('Y7AWhUM_8YU', 'https://i.ytimg.com/vi/Y7AWhUM_8YU/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('tJp0I8P2UhM', 6, 3, 'Mickey''s Springtime Surprise', 'It''s the first day of spring and Mickey and friends celebrate by looking for decorated eggs.', 'https://www.youtube.com/watch?v=tJp0I8P2UhM');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('tJp0I8P2UhM', 'https://i.ytimg.com/vi/tJp0I8P2UhM/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('p6pPJCI9cL4', 6, 4, 'Super Goof''s Super Puzzle', 'The super-"villain" Puzzler-Pete challenges Goofy and his friends to solve his Super-Duper Puzzle.', 'https://www.youtube.com/watch?v=p6pPJCI9cL4');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('p6pPJCI9cL4', 'https://i.ytimg.com/vi/p6pPJCI9cL4/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('nB-73I_NEh8', 6, 5, 'Donald of the Desert', 'Mickey and his friends meet Genie-Pete who grants Donald a single wish!', 'https://www.youtube.com/watch?v=nB-73I_NEh8');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('nB-73I_NEh8', 'https://i.ytimg.com/vi/nB-73I_NEh8/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('5EB9IiQCBvA', 6, 6, 'Mickey Mouse Clubhouse - Happy Birthday, Toodles', 'It''s Toodles'' birthday and the Sensational Six set out to celebrate with a surprise party.', 'https://www.youtube.com/watch?v=5EB9IiQCBvA');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('5EB9IiQCBvA', 'https://i.ytimg.com/vi/5EB9IiQCBvA/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('kF3jKWQflzU', 6, 7, 'Goofy''s Magical Mix-Up', 'When Goofy accidentally causes things to disappear, he needs everyone''s help finding all of it.', 'https://www.youtube.com/watch?v=kF3jKWQflzU');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('kF3jKWQflzU', 'https://i.ytimg.com/vi/kF3jKWQflzU/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('v8kXpGzs42g', 6, 8, 'Pluto''s Dinosaur Romp', 'When Pluto''s bouncy-ball bounces into the Time Machine, it bounces out again followed by a dinosaur!', 'https://www.youtube.com/watch?v=v8kXpGzs42g');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('v8kXpGzs42g', 'https://i.ytimg.com/vi/v8kXpGzs42g/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('tX5CHPooAms', 6, 9, 'Minnie''s Pajama Party', 'Minnie sets up a fun Pajama Party sleepover. But when it''s time to go to sleep, nobody''s sleey yet!', 'https://www.youtube.com/watch?v=tX5CHPooAms');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('tX5CHPooAms', 'https://i.ytimg.com/vi/tX5CHPooAms/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('Lm_sW05veRE', 6, 10, 'Road Rally', 'For the big Road Rally, Mickey and friends zoom around the Clubhouse in a race where everyone wins!', 'https://www.youtube.com/watch?v=Lm_sW05veRE');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('Lm_sW05veRE', 'https://i.ytimg.com/vi/Lm_sW05veRE/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('TSUFm7HP154', 6, 11, 'Donald the Genie', 'The magical Genie of the Desert arrives and fixes Donald''s fishing rod with a magical zap.', 'https://www.youtube.com/watch?v=TSUFm7HP154');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('TSUFm7HP154', 'https://i.ytimg.com/vi/TSUFm7HP154/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('OGjdfb5guB4', 7, 1, 'Mickey''s Mousekersize!', 'Mickey and his friends show Pete that exercising can be fun!', 'https://www.youtube.com/watch?v=OGjdfb5guB4');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('OGjdfb5guB4', 'https://i.ytimg.com/vi/OGjdfb5guB4/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('KXJtNFWhw3Q', 7, 2, 'Mickey''s Little Parade', 'The Clubhouse''s smallest friends are all set to march in the Little Parade.', 'https://www.youtube.com/watch?v=KXJtNFWhw3Q');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('KXJtNFWhw3Q', 'https://i.ytimg.com/vi/KXJtNFWhw3Q/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('LxvlKPNsjKI', 7, 3, 'Minnie''s Mouseke-Calendar', 'After a wind blows away the pages from Minnie''s calendar, she needs help finding the missing pages.', 'https://www.youtube.com/watch?v=LxvlKPNsjKI');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('LxvlKPNsjKI', 'https://i.ytimg.com/vi/LxvlKPNsjKI/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('RHB00vL9FJo', 7, 4, 'Pluto Lends a Paw', 'When Minnie''s cat Figaro wanders off, Pluto the Rescue Dog takes charge and finds the missing pet.', 'https://www.youtube.com/watch?v=RHB00vL9FJo');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('RHB00vL9FJo', 'https://i.ytimg.com/vi/RHB00vL9FJo/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('R8Tt9eX7CVg', 7, 5, 'Minnie''s Bow-tique', 'It''s the grand opening of Minnie''s Bow-tique, a store packed with all kinds of bows and bowties!', 'https://www.youtube.com/watch?v=R8Tt9eX7CVg');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('R8Tt9eX7CVg', 'https://i.ytimg.com/vi/R8Tt9eX7CVg/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('Vhrcl2ZNhWI', 7, 6, 'Minnie''s Masquerade', 'The Clubhouse pals are excited to dress up in their favorite costumes for Minnie''s Masquerade Ball.', 'https://www.youtube.com/watch?v=Vhrcl2ZNhWI');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('Vhrcl2ZNhWI', 'https://i.ytimg.com/vi/Vhrcl2ZNhWI/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('a_5tM6q2rQg', 7, 7, 'Goofy''s Giant Adventure', 'Sir Goofs-a-lot goes on a fairytale quest to bring back the cure for Willy the Giant''s tummy ache.', 'https://www.youtube.com/watch?v=a_5tM6q2rQg');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('a_5tM6q2rQg', 'https://i.ytimg.com/vi/a_5tM6q2rQg/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('qDsvLEm6gcw', 7, 8, 'Donald''s Clubhouse', 'When Mickey goes to help Clarabelle at the Moo Mart, Donald takes care of the Clubhouse.', 'https://www.youtube.com/watch?v=qDsvLEm6gcw');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('qDsvLEm6gcw', 'https://i.ytimg.com/vi/qDsvLEm6gcw/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('vDLAEzmWswg', 7, 9, 'Mickey''s Show and Tell', 'Mickey''s having Show and Tell with Shapes and everybody''s bringing their favorite shapes.', 'https://www.youtube.com/watch?v=vDLAEzmWswg');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('vDLAEzmWswg', 'https://i.ytimg.com/vi/vDLAEzmWswg/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('qXNSvqdO9nU', 7, 10, 'Mickey''s Fishy Story', 'When Daisy wants to find a friend for her fish, the gang helps her find other fish in the Jungle.', 'https://www.youtube.com/watch?v=qXNSvqdO9nU');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('qXNSvqdO9nU', 'https://i.ytimg.com/vi/qXNSvqdO9nU/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('9_0RiEOBZTI', 7, 11, 'The Go-Getters', 'The Go-Getters must find some Giant Baby Chicks.', 'https://www.youtube.com/watch?v=9_0RiEOBZTI');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('9_0RiEOBZTI', 'https://i.ytimg.com/vi/9_0RiEOBZTI/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('EcHGZR1xYmA', 9, 1, 'Mickey and Donald Have a Farm', 'Mickey and his pals set out to rescue all of the missing animals from the Clubhouse Farm!', 'https://www.youtube.com/watch?v=EcHGZR1xYmA');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('EcHGZR1xYmA', 'https://i.ytimg.com/vi/EcHGZR1xYmA/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('7fn4WQ1ClOE', 9, 2, 'Quest for the Crystal Mickey!', 'An extraordinary hero shows up to save the day after a legendary statue is taken from the Clubhouse.', 'https://www.youtube.com/watch?v=7fn4WQ1ClOE');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('7fn4WQ1ClOE', 'https://i.ytimg.com/vi/7fn4WQ1ClOE/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('Q1yEPGjBL-o', 9, 3, 'Daisy''s Pony Tale', 'Professor Von Drake''s new invention accidentally makes Daisy''s hair grow super long!', 'https://www.youtube.com/watch?v=Q1yEPGjBL-o');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('Q1yEPGjBL-o', 'https://i.ytimg.com/vi/Q1yEPGjBL-o/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('IXEOVrCVvFA', 9, 4, 'Mickey''s Farm Fun-Fair!', 'Mickey hosts a farm fun-fair with an Egg-in-the-Spoon Race, a Bake-Off, and more!', 'https://www.youtube.com/watch?v=IXEOVrCVvFA');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('IXEOVrCVvFA', 'https://i.ytimg.com/vi/IXEOVrCVvFA/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('IScZa8VgnC8', 9, 5, 'The Wizard of Dizz!', 'Minnie and Pluto get swept up and find themselves in a strange and wonderful world.', 'https://www.youtube.com/watch?v=IScZa8VgnC8');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('IScZa8VgnC8', 'https://i.ytimg.com/vi/IScZa8VgnC8/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('1oZmAxNQDcE', 9, 6, 'Super Adventure!', 'Super Mickey and the Clubhouse Heroes must work as a team to save the Clubhouse from Megamort!', 'https://www.youtube.com/watch?v=1oZmAxNQDcE');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('1oZmAxNQDcE', 'https://i.ytimg.com/vi/1oZmAxNQDcE/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('xlIIWvtkCb4', 9, 7, 'Mickey''s Mystery!', 'Kansas City Mickey returns to lead the Clubhouse team on another adventure.', 'https://www.youtube.com/watch?v=xlIIWvtkCb4');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('xlIIWvtkCb4', 'https://i.ytimg.com/vi/xlIIWvtkCb4/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('4gAMC4p0SUw', 9, 8, 'Minnie''s Pet Salon', 'It''s time for Pluto''s All-Star Pet Show at Minnie''s Pet Salon.', 'https://www.youtube.com/watch?v=4gAMC4p0SUw');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('4gAMC4p0SUw', 'https://i.ytimg.com/vi/4gAMC4p0SUw/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('frE1xIlv_Yc', 9, 9, 'Minnie-rella', 'Minnie-rella can''t wait for Prince Mickey''s Grand Ball, but the magical spell from her Fairy Godmother is going to be broken at midnight!', 'https://www.youtube.com/watch?v=frE1xIlv_Yc');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('frE1xIlv_Yc', 'https://i.ytimg.com/vi/frE1xIlv_Yc/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('243rYbKDOqU', 9, 10, 'Mickey Mouse Clubhouse - Mickey''s Clubhouse Rocks', 'Mickey and Minnie are working on a rockin'' song for a Clubhouse Battle of the Bands.', 'https://www.youtube.com/watch?v=243rYbKDOqU');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('243rYbKDOqU', 'https://i.ytimg.com/vi/243rYbKDOqU/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('LUOCT1SLIqU', 9, 11, 'Donald Jr.', 'Donald teaches Donald Jr. the steps to a special song and dance on "Show Your Special Talent Day."', 'https://www.youtube.com/watch?v=LUOCT1SLIqU');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('LUOCT1SLIqU', 'https://i.ytimg.com/vi/LUOCT1SLIqU/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('TMqAQSmpYmk', 9, 12, 'Mickey Mouse Clubhouse - Sea Captain Mickey', 'Mickey and the gang hop into the Clubhouse Submarine and set out to find the "Big Something".', 'https://www.youtube.com/watch?v=TMqAQSmpYmk');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('TMqAQSmpYmk', 'https://i.ytimg.com/vi/TMqAQSmpYmk/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('xsQikrTiDPI', 9, 13, 'Mickey''s Pirate Adventure', 'The Clubhousers are spending the day at the beach, when Pegleg Pete sails to shore with a note from Goofy''s long lost Grandpappy, Captain Goof-Beard.', 'https://www.youtube.com/watch?v=xsQikrTiDPI');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('xsQikrTiDPI', 'https://i.ytimg.com/vi/xsQikrTiDPI/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('Eyvt59GrgtI', 2, 1, 'Pluto''s Puppy-Sitting Adventure', 'Clarabelle Cow asks Mickey and Pluto to puppy-sit her new pooch, Ginger.', 'https://www.youtube.com/watch?v=Eyvt59GrgtI');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('Eyvt59GrgtI', 'https://i.ytimg.com/vi/Eyvt59GrgtI/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('RkHF___Ir9c', 2, 2, 'Daisy in the Sky', 'On Balloon Day, Daisy grabs a large batch of balloons and gets literally carried away.', 'https://www.youtube.com/watch?v=RkHF___Ir9c');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('RkHF___Ir9c', 'https://i.ytimg.com/vi/RkHF___Ir9c/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('cqUZ3Zzk5gY', 2, 3, 'Pluto''s Best', 'Pluto plays a series of games with Pete''s dog Butch to see who''ll win the big gold dog-bone trophy.', 'https://www.youtube.com/watch?v=cqUZ3Zzk5gY');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('cqUZ3Zzk5gY', 'https://i.ytimg.com/vi/cqUZ3Zzk5gY/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('uQIxiGMWtb0', 2, 4, 'Mickey''s Treat', 'The Sensational Six enlist our help in getting to the Trick-or-Treat Tower for the Halloween Party.', 'https://www.youtube.com/watch?v=uQIxiGMWtb0');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('uQIxiGMWtb0', 'https://i.ytimg.com/vi/uQIxiGMWtb0/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('tV-PyJHenXY', 2, 5, 'Minnie Red Riding Hood', 'Mickey and Minnie set out to take some Feel Better Soup to a cold-stricken Goofy.', 'https://www.youtube.com/watch?v=tV-PyJHenXY');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('tV-PyJHenXY', 'https://i.ytimg.com/vi/tV-PyJHenXY/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('jXR5kl94Bbw', 2, 6, 'Sleeping Minnie', 'Minnie accidentally picks a Sleeping Rose from the Clubhouse Garden and falls into a 100-year sleep.', 'https://www.youtube.com/watch?v=jXR5kl94Bbw');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('jXR5kl94Bbw', 'https://i.ytimg.com/vi/jXR5kl94Bbw/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('6v5QkdoCstI', 2, 7, 'Mickey Saves Santa', 'The gang is ready to celebrate Christmas Eve when Santa''s sleigh breaks down!', 'https://www.youtube.com/watch?v=6v5QkdoCstI');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('6v5QkdoCstI', 'https://i.ytimg.com/vi/6v5QkdoCstI/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('PshRC0d6X1M', 2, 8, 'Goofy the Great', 'Goofy''s getting ready to perform in his magic show when suddenly all his tricks fall apart!', 'https://www.youtube.com/watch?v=PshRC0d6X1M');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('PshRC0d6X1M', 'https://i.ytimg.com/vi/PshRC0d6X1M/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('Ck13CojIllU', 2, 9, 'Mickey''s Color Adventure', 'The Rainbow Color Machine is running low and colors are draining out of the Clubhouse!', 'https://www.youtube.com/watch?v=Ck13CojIllU');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('Ck13CojIllU', 'https://i.ytimg.com/vi/Ck13CojIllU/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('kVRJEaxJ5Yc', 2, 10, 'Goofy''s Petting Zoo', 'The animals at the petting zoo escape so Mickey and Goofy set out to round them up.', 'https://www.youtube.com/watch?v=kVRJEaxJ5Yc');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('kVRJEaxJ5Yc', 'https://i.ytimg.com/vi/kVRJEaxJ5Yc/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('1w3AbkZDB_k', 2, 11, 'Donald''s Lost Lion', 'Donald loses his favorite toy Sparky, a roaring, stuffed lion.', 'https://www.youtube.com/watch?v=1w3AbkZDB_k');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('1w3AbkZDB_k', 'https://i.ytimg.com/vi/1w3AbkZDB_k/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('YJqFe7mv8Ck', 2, 12, 'Doctor Daisy, MD', 'When Daisy helps make Goofy feel better, the word spreads and she soon has a line of "patients."', 'https://www.youtube.com/watch?v=YJqFe7mv8Ck');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('YJqFe7mv8Ck', 'https://i.ytimg.com/vi/YJqFe7mv8Ck/default.jpg', 120, 90);

-- Insert data into the videos table
INSERT INTO videos (id, season, episode, title, description, url) VALUES
('Oe7BMS2WLJU', 2, 13, 'Donald''s Hiccups', 'Donald gets the hiccups and spreads them to the rest of the Sensational Six!', 'https://www.youtube.com/watch?v=Oe7BMS2WLJU');

-- Insert data into the thumbnails table
INSERT INTO thumbnails (video_id, url, width, height) VALUES
('Oe7BMS2WLJU', 'https://i.ytimg.com/vi/Oe7BMS2WLJU/default.jpg', 120, 90);

