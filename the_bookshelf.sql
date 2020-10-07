-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2020 at 11:15 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `the bookshelf`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `name` varchar(100) NOT NULL,
  `about_author` varchar(6000) NOT NULL,
  `facebook_link` varchar(2000) DEFAULT NULL,
  `twitter_link` varchar(2000) DEFAULT NULL,
  `liinkedin_link` varchar(2000) DEFAULT NULL,
  `image_src` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`name`, `about_author`, `facebook_link`, `twitter_link`, `liinkedin_link`, `image_src`) VALUES
('J. K. Rowling', 'J.K. Rowling is best-known as the author of the seven Harry Potter books, which were published between 1997 and 2007. The enduringly popular adventures of Harry, Ron and Hermione have gone on to sell over 500 million copies, be translated into over 80 languages and made into eight blockbuster films.\r\n<br><br>\r\nIn 2016 J.K. Rowling collaborated with playwright Jack Thorne and director John Tiffany to continue Harry’s story in a stage play, Harry Potter and the Cursed Child, which opened in London and is now also playing in Europe, the USA and Australia.\r\n<br>\r\nIn the same year, she made her debut as a screenwriter with the film Fantastic Beasts and Where to Find Them. Inspired by the original companion volume, it was the first in a series of new adventures featuring wizarding world magizoologist Newt Scamander. The second, Fantastic Beasts: The Crimes of Grindelwald, was released in 2018.\r\n<br><br>\r\nJ.K. Rowling also writes novels for adults. The Casual Vacancy was published in 2012 and adapted for television in 2015. Under the pseudonym Robert Galbraith, she is also the author of the highly acclaimed ‘Strike’ crime series, featuring private detective Cormoran Strike and his assistant Robin Ellacott. Four books and audiobooks have been published in the series so far and have also been adapted for television by the BBC and HBO. The fifth book, Troubled Blood, is to be published in 2020.\r\n<br><br>\r\nIn 2020, J.K. Rowling released for free online the serialisation of The Ickabog, an original fairy tale, which she wrote over ten years ago as a bedtime story for her younger children. She decided to share the personal family favourite to help entertain children, parents and carers confined at home during the Coronavirus lockdown.\r\n<br><br>\r\nThe story will be published as a book (hardback, ebook and audio) in the English language in November 2020, with international editions to follow soon after. J.K. Rowling will be donating her royalties to her charitable trust, The Volant Charitable Trust, to assist vulnerable groups who have been particularly impacted by the Covid-19 pandemic in the UK and internationally.', 'https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwi1g8K86oPsAhWuzzgGHbB7AVQQ9zAwMXoECAYQBQ&url=https%3A%2F%2Fwww.facebook.com%2FJKRowling&usg=AOvVaw2fgrYtuyeY7YNttGAgXZ25', 'https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwi1g8K86oPsAhWuzzgGHbB7AVQQ9zAwMXoECAYQAw&url=https%3A%2F%2Ftwitter.com%2Fjk_rowling&usg=AOvVaw3MSNSIOapcgKsoM99-oQWX', NULL, 'images\\authors\\J. K. Rowling.jpg'),
('Rick Riordan', 'Rick Riordan is the #1 New York Times bestselling author of the Percy Jackson and the Olympians series, the Kane Chronicles, and the Heroes of Olympus. He is also the author of the multi-award-winning Tres Navarre mystery series for adults.\r\n<br><br>\r\nFor fifteen years, Rick taught English and history at public and private middle schools in the San Francisco Bay Area and in Texas. In 2002, Saint Mary\'s Hall honored him with the school\'s first Master Teacher Award.\r\n<br><br>\r\nWhile teaching full time, Riordan began writing mystery novels for grownups. His Tres Navarre series went on to win the top three national awards in the mystery genre - the Edgar, the Anthony and the Shamus. Riordan turned to children\'s fiction when he started The Lightning Thief as a bedtime story for his oldest son.\r\n<br><br>\r\nToday over 35 million copies of his Percy Jackson, Kane Chronicles, and Heroes of Olympus books are in print in the United States, and rights have been sold into more than 35 countries. Rick is also the author of The 39 Clues: The Maze of Bones, another #1 New York Times bestseller.\r\n<br><br>\r\nRick Riordan now writes full-time. He lives in Boston with his wife and two sons.', 'https://www.facebook.com/rick.riordan.author', 'https://twitter.com/rickriordan', NULL, 'images\\authors\\Rick Riordan.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(300) NOT NULL,
  `author` varchar(100) NOT NULL,
  `year` int(11) NOT NULL,
  `price` float NOT NULL,
  `description` varchar(5000) NOT NULL,
  `genre` varchar(50) NOT NULL,
  `image_src` varchar(500) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `year`, `price`, `description`, `genre`, `image_src`, `qty`) VALUES
(101, 'Blackout', 'Candace Amber Owens Farmer', 2020, 960, '<strong>It’s time for a black exit.</strong>\r\n<br><br>\r\nPolitical activist and social media star Candace Owens addresses the many ways that Democrat Party policies hurt, rather than help, the African American community, and why she and many others are turning right', 'thriller', 'images\\books\\Blackout.jpg', 20),
(102, 'T-Minus AI', 'Michael Kanaan\r\n', 2020, 1100, '<strong>\"Mike Kanaan is an influential new voice in the field of AI, and his thoughts paint an insightful perspective. A thought-provoking read.\" Eric Schmidt, former CEO and executive chairman of Google</strong>\r\n<br><br>\r\nLate in 2017, the conversation about the global impact of artificial intelligence (AI) changed forever. China delivered a bold message when it released a national plan to dominate all aspects of AI across the planet. Within weeks, Russia\'s Vladimir Putin raised the stakes by declaring AI the future for all humankind, and proclaiming that, \"Whoever becomes the leader in this sphere will become the ruler of the world.\"', 'Science and technology', 'images\\books\\T-Minus AI.webp', 10),
(103, 'Tales from the Ant World', 'Edward O. Wilson', 2020, 1450, '<strong>Edward O. Wilson recalls his lifetime with ants, from his first boyhood encounters in the woods of Alabama to perilous journeys into the Brazilian rainforest.</strong>\r\n<br><br>\r\n“Ants are the most warlike of all animals, with colony pitted against colony,” writes E.O. Wilson, one of the world’s most beloved scientists, “their clashes dwarf Waterloo and Gettysburg.” In Tales from the Ant World, two-time Pulitzer Prize-winner Wilson takes us on a myrmecological tour to such far-flung destinations as Mozambique and New Guinea, the Gulf of Mexico’s Dauphin Island and even his parent’s overgrown backyard, thrillingly relating his nine-decade-long scientific obsession with over 15,000 ant species.', 'Science and technology', 'images\\books\\Tales from the Ant World.jpg', 30),
(104, 'Astrophysics for People in a Hurry', 'Neil deGrasse Tyson', 2017, 1250, '<strong>Over a year on the New York Times bestseller list and more than a million copies sold.</strong>\r\n<br><br>\r\nThe essential universe, from our most celebrated and beloved astrophysicist.\r\n<br><br>\r\nWhat is the nature of space and time? How do we fit within the universe? How does the universe fit within us? There’s no better guide through these mind-expanding questions than acclaimed astrophysicist and best-selling author Neil deGrasse Tyson', 'Science and technology', 'images\\books\\Astrophysics for People in a Hurry.jpg', 10),
(105, 'The Night Tiger', 'Yangsze Choo', 2020, 550, '<strong>The Reese Witherspoon x Hello Sunshine Book Club Pick\r\nINSTANT NEW YORK TIMES BESTSELLER</strong>\r\n<br><br>\r\n“A sumptuous garden maze of a novel that immerses readers in a complex, vanished world.” ―Kirkus (starred review)\r\n\r\nAn utterly transporting novel set in 1930s colonial Malaysia, perfect for fans of Isabel Allende and Min Jin Lee\r\n\r\nQuick-witted, ambitious Ji Lin is stuck as an apprentice dressmaker, moonlighting as a dancehall girl to help pay off her mother’s Mahjong debts. But when one of her dance partners accidentally leaves behind a gruesome souvenir, Ji Lin may finally get the adventure she has been longing for.', 'Children', 'images/books/The Night Tiger.webp', 50),
(106, 'My First Learn to Write Workbook', 'Crystal Radke', 2019, 580, '<strong>A lifetime of communication skills starts here―the ultimate writing workbook for kids 3 to 5</strong>\r\n<br><br>\r\nSet kids up to succeed in school with a learn to write for kids guide that teaches them letters, shapes, and numbers―and makes it fun. My First Learn-to-Write Workbook introduces your early writer to proper pen control, steady line tracing, new words, and more with dozens of exercises that will engage their minds and boost their reading and writing comprehension skills', 'Children', 'images/books/My First Learn to Write Workbook.webp', 80),
(107, 'Harry Potter and the Philosopher\'s Stone', 'J. K. Rowling', 1997, 1150, 'Turning the envelope over, his hand trembling, Harry saw a purple wax seal bearing a coat of arms; a lion, an eagle, a badger and a snake surrounding a large letter \'H\'.\r\n<br><br>\r\nHarry Potter has never even heard of Hogwarts when the letters start dropping on the doormat at number four, Privet Drive. Addressed in green ink on yellowish parchment with a purple seal, they are swiftly confiscated by his grisly aunt and uncle. Then, on Harry\'s eleventh birthday, a great beetle-eyed giant of a man called Rubeus Hagrid bursts in with some astonishing news: Harry Potter is a wizard, and he has a place at Hogwarts School of Witchcraft and Wizardry. An incredible adventure is about to begin!', 'Fantasy', 'images\\books\\Harry Potter\\Harry Potter and the Philosophers Stone.jpg', 30),
(108, 'Harry Potter and the Chamber of Secrets', 'J. K. Rowling', 1998, 1150, 'Harry Potter\'s summer has included the worst birthday ever, doomy warnings from a house-elf called Dobby, and rescue from the Dursleys by his friend Ron Weasley in a magical flying car! Back at Hogwarts School of Witchcraft and Wizardry for his second year, Harry hears strange whispers echo through empty corridors - and then the attacks start. Students are found as though turned to stone... Dobby\'s sinister predictions seem to be coming true.', 'Fantasy', 'images\\books\\Harry Potter\\Harry Potter and the Chamber of Secrets.jpg', 30),
(109, 'Harry Potter and the Prisoner of Azkaban', 'J. K. Rowling', 1999, 1150, 'When the Knight Bus crashes through the darkness and screeches to a halt in front of him, it\'s the start of another far from ordinary year at Hogwarts for Harry Potter. Sirius Black, escaped mass-murderer and follower of Lord Voldemort, is on the run - and they say he is coming after Harry. In his first ever Divination class, Professor Trelawney sees an omen of death in Harry\'s tea leaves... But perhaps most terrifying of all are the Dementors patrolling the school grounds, with their soul-sucking kiss...', 'Fantasy', 'images\\books\\Harry Potter\\Harry Potter and the Prisoner of Azkaban.jpg', 30),
(110, 'Harry Potter and the Goblet of Fire', 'J. K. Rowling', 2000, 1150, 'The Triwizard Tournament is to be held at Hogwarts. Only wizards who are over seventeen are allowed to enter - but that doesn\'t stop Harry dreaming that he will win the competition. Then at Hallowe\'en, when the Goblet of Fire makes its selection, Harry is amazed to find his name is one of those that the magical cup picks out. He will face death-defying tasks, dragons and Dark wizards, but with the help of his best friends, Ron and Hermione, he might just make it through - alive!', 'Fantasy', 'images\\books\\Harry Potter\\Harry Potter and the Goblet of Fire.jpg', 30),
(111, 'Harry Potter and the Order of the Phoenix', 'J. K. Rowling', 2003, 1150, 'Dark times have come to Hogwarts. After the Dementors\' attack on his cousin Dudley, Harry Potter knows that Voldemort will stop at nothing to find him. There are many who deny the Dark Lord\'s return, but Harry is not alone: a secret order gathers at Grimmauld Place to fight against the Dark forces. Harry must allow Professor Snape to teach him how to protect himself from Voldemort\'s savage assaults on his mind. But they are growing stronger by the day and Harry is running out of time...', 'Fantasy', 'images\\books\\Harry Potter\\Harry Potter and the Order of the Phoenix.jpg', 30),
(112, 'Harry Potter and the Half-Blood Prince', 'J. K. Rowling', 2005, 1150, 'When Dumbledore arrives at Privet Drive one summer night to collect Harry Potter, his wand hand is blackened and shrivelled, but he does not reveal why. Secrets and suspicion are spreading through the wizarding world, and Hogwarts itself is not safe. Harry is convinced that Malfoy bears the Dark Mark: there is a Death Eater amongst them. Harry will need powerful magic and true friends as he explores Voldemort\'s darkest secrets, and Dumbledore prepares him to face his destiny...', 'Fantasy', 'images/books/Harry Potter/Harry Potter and the Half-Blood Prince.jpg', 30),
(113, 'Harry Potter and the Deathly Hallows', 'J. K. Rowling', 2007, 1150, 'As he climbs into the sidecar of Hagrid\'s motorbike and takes to the skies, leaving Privet Drive for the last time, Harry Potter knows that Lord Voldemort and the Death Eaters are not far behind. The protective charm that has kept Harry safe until now is broken, but he cannot keep hiding. The Dark Lord is breathing fear into everything Harry loves and to stop him Harry will have to find and destroy the remaining Horcruxes. The final battle must begin - Harry must stand and face his enemy...', 'Fantasy', 'images/books/Harry Potter/Harry Potter and the Deathly Hallows.jpg', 30),
(114, 'Percy Jackson and the Olympians : The Lightning Thief (Book 1)', 'Rick Riordan', 2005, 940, 'Percy Jackson is a good kid, but he can\'t seem to focus on his schoolwork or control his temper. And lately, being away at boarding school is only getting worse-Percy could have sworn his pre-algebra teacher turned into a monster and tried to kill him.', 'Fantasy', 'images\\books\\Percy Jackson\\Lightning Thief, The (Percy Jackson and the Olympians, Book 1).jpg', 30);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `c_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `comment` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`c_id`, `book_id`, `name`, `comment`) VALUES
(0, 106, 'Saman', 'thank you Crystal Radke, it is very helpful to my kid.'),
(2, 114, 'Kavindu', ' More than likely if you are looking to read this you have heard at least a bit about the series or seen the movies.'),
(3, 101, 'Amal', 'Easy reading, highly informative, and sometimes shocking. More when I finish reading, but I can already tell you, black, white, Republican, Democrat, Independent, young or old, you need to read this book!'),
(6, 103, 'Amal', 'I have found so many information for my research.\r\nThank you Edward O. Wilson'),
(7, 111, 'nimal', 'I loved this book as it makes you imagine what it would be like to have that experience of being at Hogwarts.'),
(8, 102, 'Saman', 'This book is highly informative.');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(11) NOT NULL,
  `offer_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `offer_price`) VALUES
(102, 850),
(105, 490),
(111, 980),
(114, 880);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
