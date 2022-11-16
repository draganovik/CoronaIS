DROP TABLE IF EXISTS SHOE_PRODUCTS;
CREATE TABLE SHOE_PRODUCTS (
    code int primary key auto_increment,
    name nvarchar(100) not null,
    quantity integer,
    toDelete bool default false,
    description nvarchar(512)
);

INSERT INTO SHOE_PRODUCTS
VALUES (default, 'Nike Air Max 97', 30, default,
        'Featuring the original ripple design inspired by Japanese bullet trains, the Nike Air Max 97 lets you push your style full-speed ahead. Taking the revolutionary full-length Nike Air unit that shook up the running world and adding fresh colors and crisp details, it lets you ride in first-class comfort.');
INSERT INTO SHOE_PRODUCTS
VALUES (default, 'Nike LeBron XX "Trinity"', 100, default,
        'Harmony returns with the LeBron 20 “Trinity.” Honoring the King’s Miami reign with the “Big 3,” a Black and University Red colorway reps the history-making squad while flashes of Metallic Gold nod to their 2 championship wins. The light, low-to-the-ground and ultra-cushioned design sets you up with comfort and support—so you can stay on top of today’s frenzied style of play and mark your mark on the next era of hoops.');
INSERT INTO SHOE_PRODUCTS
VALUES (default, 'Nike Air Max Flyknit Racer Next Nature', 85, default,
        'Paying homage to both heritage and innovation, we\'ve blended 2 icons (old and new) to go beyond what\'s expected in the Nike Air Max Flyknit Racer. Incredibly light and stretchy Flyknit pairs with oh-so-soft cushioning. Lace up and let your feet do the talking.');
INSERT INTO SHOE_PRODUCTS
VALUES (default, 'Nike Air Jordan 1 Mid SE',20, default,
        'Slap some holiday cheer on your feet with these AJ1 mids. Made with high quality leather, they\'ll break in beautifully and stick around for many seasons to come. To top \'em off, plaid accents give you an understated festive look so no one can accuse you of being a grinch');
INSERT INTO SHOE_PRODUCTS
VALUES (default, 'Nike Air Jordan 1 Zoom CMFT',34, default,
        'Making iconic style even more comfortable. The Air Jordan 1 Zoom Cmft remakes the 1st Air Jordan with lightweight, low-profile cushioning and elements that improve wearability. Leathers and textiles in the upper have a broken-in feel. A lined, padded collar cups the heel for a secure fit.');
INSERT INTO SHOE_PRODUCTS
VALUES (default, 'Nike Air Deldon Be True',42, default,
        'When Elena Delle Donne announced her engagement to Amanda Clifton in 2016, she brought her vibrant self to the game. Energized by Elena’s journey, we dipped the superstar’s staple look in radiant hues. And because of the fluctuating scale of the gradient pattern, every shoe is truly one of a kind—just like your journey. The eye-catching design continues to celebrate LGBTQIA+ communities worldwide with its rainbow-specked laces, as well as blue and orange accents that nod to the couple\'s favorite colors.');
INSERT INTO SHOE_PRODUCTS
VALUES (default, 'Nike Air Zoom G.T. Cut 2',75, default,
        'The Nike Air Zoom G.T. Cut 2 helps you stop on a dime and accelerate back into the open lane in a low-to-the-ground design that helps increase court contact while switching direction. Separate the players from the playmakers in a model that’s built on creating separation but supportive enough to help you play all day.');
INSERT INTO SHOE_PRODUCTS
VALUES (default, 'Nike Vapormax 2021 Flyknit',15, default,
        'Made from at least 20% recycled materials by weight, the Nike Air VaporMax 2021 Flyknit is airy, supportive and easy to wear—thanks to its seamless design and Flyknit fabric. The stitched-on Swoosh and plastic heel clip add a splash of intrigue as you float down the streets on incredibly soft cushioning.');


SELECT * FROM SHOE_PRODUCTS;

UPDATE SHOE_PRODUCTS SET toDelete = 0