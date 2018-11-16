-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: nov. 16, 2018 la 08:37 PM
-- Versiune server: 10.1.36-MariaDB
-- Versiune PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `cart`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `checkout`
--

CREATE TABLE `checkout` (
  `id` int(11) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `city` varchar(20) NOT NULL,
  `county` varchar(20) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `postalcode` varchar(10) NOT NULL,
  `transport` varchar(20) NOT NULL,
  `plata` varchar(20) NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `checkout`
--

INSERT INTO `checkout` (`id`, `lastname`, `firstname`, `address`, `email`, `city`, `county`, `phone`, `postalcode`, `transport`, `plata`, `order_id`, `user_id`) VALUES
(38, 'Solschi', 'Eliza', 'MyAddress', 'elizasolschi@yahoo.com', 'Timisoara', 'Timis', '987654321', '111111', 'store', 'creditcard', 43, 9),
(39, 'Solschi', 'Eliza', 'MyOtherAddress', 'elizasolschi@yahoo.com', 'Arad', 'arad', '987654321', '0000000', 'store', 'creditcard', 44, 9),
(40, 'Name', 'Max', 'MyAddress', 'max@yahoo.com', 'Arad', 'arad', '987654321', '111111', 'store', 'creditcard', 45, 2),
(41, 'Name', 'Max2', 'MyAddress', 'max@yahoo.com', 'Arad', 'dolj', '987654321', '111111', 'store', 'creditcard', 46, 2);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `manga`
--

CREATE TABLE `manga` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `writer` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `type` int(1) NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `manga`
--

INSERT INTO `manga` (`id`, `image`, `name`, `writer`, `price`, `type`) VALUES
(1, 'manga/attackontitan.jpg', 'Attack On Titan', 'Hajime Isayama', 40, 2),
(2, 'manga/bleach (1).jpg', 'Bleach Volume 1', 'Tite Kubo', 40, 2),
(3, 'manga/bleach (14).jpg', 'Bleach Volume 2', 'Tite Kubo', 40, 2),
(4, 'manga/bleach (12).jpg', 'Bleach Volume 3', 'Tite Kubo', 40, 2),
(5, 'manga/bleach (11).jpg', 'Bleach Volume 4', 'Tite Kubo', 40, 2),
(6, 'manga/bleach (2).jpg', 'Bleach Volume 5', 'Tite Kubo', 40, 2),
(7, 'manga/bleach (8).jpg', 'Bleach Volume 11', 'Tite Kubo', 40, 2),
(8, 'manga/bleach (3).jpg', 'Bleach Volume 12', 'Tite Kubo', 40, 2),
(9, 'manga/bleach (6).jpg', 'Bleach Volume 16', 'Tite Kubo', 40, 2),
(10, 'manga/bleach (17).jpg', 'Bleach Volume 17', 'Tite Kubo', 40, 2),
(11, 'manga/bleach (16).jpg', 'Bleach Volume 18', 'Tite Kubo', 40, 2),
(12, 'manga/bleach (5).jpg', 'Bleach Volume 22', 'Tite Kubo', 40, 2),
(13, 'manga/bleach (15).jpg', 'Bleach Volume 24', 'Tite Kubo', 40, 2),
(14, 'manga/bleach (9).jpg', 'Bleach Volume 30', 'Tite Kubo', 40, 2),
(15, 'manga/bleach (13).jpg', 'Bleach Volume 38', 'Tite Kubo', 40, 2),
(16, 'manga/bleach (4).jpg', 'Bleach Volume 53', 'Tite Kubo', 40, 2),
(17, 'manga/bleach (7).jpg', 'Bleach Volume 60', 'Tite Kubo', 40, 2),
(18, 'manga/bleach (10).jpg', 'Bleach Volume 64', 'Tite Kubo', 40, 2),
(19, 'manga/deathnote (1).jpg', 'Death Note Volume 1', 'Takeshi Obata', 40, 2),
(20, 'manga/deathnote (3).jpg', 'Death Note Volume 5', 'Takeshi Obata', 40, 2),
(21, 'manga/deathnote (2).jpg', 'Death Note Volume 9', 'Takeshi Obata', 40, 2),
(22, 'manga/fairytail (1).jpg', 'Fiary Tail Volume 1', 'Hiro Mashima', 35, 2),
(23, 'manga/fairytail (4).jpg', 'Fiary Tail Volume 29', 'Hiro Mashima', 35, 2),
(24, 'manga/fairytail (3).jpg', 'Fiary Tail Volume 52', 'Hiro Mashima', 35, 2),
(25, 'manga/fairytail (2).jpg', 'Fiary Tail Volume 55', 'Hiro Mashima', 35, 2),
(26, 'manga/fairytail (1).png', 'Fiary Tail Volume 60', 'Hiro Mashima', 35, 2),
(27, 'manga/fullmetal.jpg', 'Fullmetal Alchemist Volume 55', ' Hiromu Arakawa', 45, 2),
(28, 'manga/hunter (1).jpg', 'Hunter X Hunter Volume 1', 'Yoshihiro Togashi', 45, 2),
(29, 'manga/hunter (2).jpg', 'Hunter X Hunter Volume 30', 'Yoshihiro Togashi', 45, 2),
(30, 'manga/naruto (24).jpg', 'Naruto Volume 4: Hero\'s Bridge', 'Masashi Kishimoto', 40, 2),
(31, 'manga/naruto (21).jpg', 'Naruto Volume 9: Neji vs Hinata', 'Masashi Kishimoto', 40, 2),
(32, 'manga/naruto (2).jpg', 'Naruto Volume 11: Impassioned Efforts', 'Masashi Kishimoto', 40, 2),
(33, 'manga/naruto (16).jpg', 'Naruto Volume 15: Naruto\'s Ninja Handbook', 'Masashi Kishimoto', 40, 2),
(34, 'manga/naruto (22).jpg', 'Naruto Volume 16: Eulogy', 'Masashi Kishimoto', 40, 2),
(35, 'manga/naruto (19).jpg', 'Naruto Volume 20: Naruto vs Sasuke', 'Masashi Kishimoto', 40, 2),
(36, 'manga/naruto (11).jpg', 'Naruto Volume 26: Awakening', 'vMasashi Kishimoto', 40, 2),
(37, 'manga/naruto (8).jpg', 'Naruto Volume 27: Departure', 'Masashi Kishimoto', 40, 2),
(38, 'manga/naruto (12).jpg', 'Naruto Volume 34: The Reunion', 'Masashi Kishimoto', 40, 2),
(39, 'manga/naruto (25).jpg', 'Naruto Volume 35: The New Two', 'Masashi Kishimoto', 40, 2),
(40, 'manga/naruto (20).jpg', 'Naruto Volume 42: The Secret of the Mangekyo', 'Masashi Kishimoto', 40, 2),
(41, 'manga/naruto (14).jpg', 'Volume 43: The Man with the Truth', 'Masashi Kishimoto', 40, 2),
(42, 'manga/naruto (1).jpg', 'Naruto Volume 47: The Seal Destroyed', 'Masashi Kishimoto', 40, 2),
(43, 'manga/naruto (5).jpg', 'Naruto Volume 49: The Gokage Summit', 'Masashi Kishimoto', 40, 2),
(44, 'manga/naruto (6).jpg', 'Naruto Volume 48: The Cheering Village', 'Masashi Kishimoto', 40, 2),
(45, 'manga/naruto (4).jpg', 'Naruto Volume 53: The Birth of Naruto', 'Masashi Kishimoto', 40, 2),
(46, 'manga/naruto (7).jpg', 'Naruto Volume 60: Kurama', 'Masashi Kishimoto', 40, 2),
(47, 'manga/naruto (13).jpg', 'Naruto Volume 63: World of Dreams', 'Masashi Kishimoto', 40, 2),
(48, 'manga/naruto (17).jpg', 'Naruto Volume 64: Ten Tails', 'Masashi Kishimoto', 40, 2),
(49, 'manga/naruto (23).jpg', 'Naruto Volume 67: An Opening', 'Masashi Kishimoto', 40, 2),
(50, 'manga/naruto (3).jpg', 'Naruto Volume 68: Furrow', 'Masashi Kishimoto', 40, 2),
(51, 'manga/naruto (10).jpg', 'Naruto Volume 69: Start of Red Spring', 'Masashi Kishimoto', 40, 2),
(52, 'manga/naruto (15).jpg', 'Naruto Volume 70: Naruto and the Sage of Six Paths', 'Masashi Kishimoto', 40, 2),
(53, 'manga/naruto (18).jpg', 'Naruto Volume 71: I Love You', 'Masashi Kishimoto', 40, 2),
(54, 'manga/naruto (9).jpg', 'Naruto Volume 72: Naruto Uzumaki', 'Masashi Kishimoto', 40, 2),
(55, 'manga/onepiece (8).jpg', 'One Piece Volume 43', 'Eiichiro Oda', 35, 2),
(56, 'manga/onepiece (10).jpg', 'One Piece Volume 44', 'Eiichiro Oda', 35, 2),
(57, 'manga/onepiece (11).jpg', 'One Piece Volume 49', 'Eiichiro Oda', 35, 2),
(58, 'manga/onepiece (5).jpg', 'One Piece Volume 58', 'Eiichiro Oda', 35, 2),
(59, 'manga/onepiece (7).jpg', 'One Piece Volume 59', 'Eiichiro Oda', 35, 2),
(60, 'manga/onepiece (9).jpg', 'One Piece Volume 68', 'Eiichiro Oda', 35, 2),
(61, 'manga/onepiece (2).jpg', 'One Piece Volume 74', 'Eiichiro Oda', 35, 2),
(62, 'manga/onepiece (12).jpg', 'One Piece Volume 75', 'Eiichiro Oda', 35, 2),
(63, 'manga/onepiece (4).jpg', 'One Piece Volume 76', 'Eiichiro Oda', 35, 2),
(64, 'manga/onepiece (6).jpg', 'One Piece Volume 78', 'Eiichiro Oda', 35, 2),
(65, 'manga/onepiece (1).jpg', 'One Piece Volume 82', 'Eiichiro Oda', 35, 2),
(66, 'manga/onepunch (5).png', 'One Punch-Man Volume 1', 'MURATA Yuusuke, ONE', 30, 2),
(67, 'manga/onepunch (2).jpg', 'One Punch-Man Volume 5', 'MURATA Yuusuke, ONE', 30, 2),
(68, 'manga/onepunch (3).jpg', 'One Punch-Man Volume 9', 'MURATA Yuusuke, ONE', 30, 2),
(69, 'manga/onepunch (1).jpg', 'One Punch-Man Volume 11', 'MURATA Yuusuke, ONE', 30, 2),
(70, 'manga/onepunch (4).jpg', 'One Punch-Man Volume 12', 'MURATA Yuusuke, ONE', 30, 2);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `total` float NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `orders`
--

INSERT INTO `orders` (`id`, `total`, `user_id`) VALUES
(43, 115, 9),
(44, 150, 9),
(45, 75, 2),
(46, 45, 2);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `orders_products`
--

CREATE TABLE `orders_products` (
  `id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `manga_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `orders_products`
--

INSERT INTO `orders_products` (`id`, `quantity`, `order_id`, `product_id`, `manga_id`, `user_id`) VALUES
(83, 2, 43, 59, 0, 9),
(84, 1, 43, 89, 0, 9),
(85, 1, 44, 59, 0, 9),
(86, 1, 44, 89, 0, 9),
(87, 1, 44, 88, 0, 9),
(88, 1, 44, 29, 0, 9),
(89, 1, 45, 59, 0, 2),
(90, 1, 45, 0, 2, 2),
(91, 1, 46, 89, 0, 2);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `writer` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `info` longtext NOT NULL,
  `type` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `products`
--

INSERT INTO `products` (`id`, `name`, `writer`, `image`, `price`, `info`, `type`) VALUES
(1, 'All Our Names', 'Dinaw Mengestu', 'books/2014 (28).png', 25, 'Â  Â  Â All Our Names is the story of two young men who come of age during an African revolution, drawn from the safe confines of the university campus into the intensifying clamor of the streets outside.', 1),
(2, 'All The Birds, Singing', 'Evie Wyld', 'books/2014 (27).png', 30, '&nbsp; &nbsp; &nbsp;From one of Granta\'s Best Young British Novelists, a stunningly insightful, emotionally powerful new novel about an outsider haunted by an inescapable past: a story of loneliness and survival, guilt and loss, and the power of forgiveness.', 1),
(3, 'Cartwheel', 'Jennifer duBois', 'books/2014 (10).png', 25, '&nbsp; &nbsp; &nbsp;Written with the riveting storytelling and moral seriousness of authors like Emma Donoghue, Adam Johnson, Ann Patchett, and Curtis Sittenfeld, Cartwheel is a suspenseful and haunting novel of an American foreign exchange student arrested for murder, and a father trying to hold his family together.', 1),
(4, 'Convulsing Bodies: Religion and Resistance in Foucault', 'Mark D. Jordan ', 'books/2014 (7).png', 30, '&nbsp; &nbsp; &nbsp;By using religion to get at the core concepts of Michel Foucault\'s thinking, this book offers a strong alternative to the way that the philosopher\'s work is read across the humanities.', 1),
(5, 'Dept. Of Speculation', 'Jenny Offill', 'books/2014 (11).png', 25, '&nbsp; &nbsp; &nbsp;Dept. of Speculation is a portrait of a marriage. It is also a beguiling rumination on the mysteries of intimacy, trust, faith, knowledge, and the condition of universal shipwreck that unites us all. \r\n			', 1),
(6, 'Flings: Stories', 'Justin Taylor', 'books/2014 (13).png', 30, '&nbsp; &nbsp; &nbsp;The acclaimed author of Everything Here Is the Best Thing Ever and The Gospel of Anarchy makes his hardcover debut with a piercing collection of short fiction that illuminates our struggle to find love, comfort, and identity.', 1),
(7, 'Give Me Everything You Have: On Being Stalked', 'James Lasdun', 'books/2014 (25).png', 25, '&nbsp; &nbsp; &nbsp;A true story of obsessive love turning to obsessive hate, Give Me Everything You Have chronicles the author\'s strange and harrowing ordeal at the hands of a former student, a self-styled \"verbal terrorist,\" who began trying, in her words, to \"ruin him.\" ', 1),
(8, 'Hack Attack: How the Truth Caught Up with the World\'s Most Powerful Man', 'Nick Davies', 'books/2014 (14).png', 30, '&nbsp; &nbsp; &nbsp;The definitive book on the phone-hacking scandal from the journalist who broke the biggest story of corruption since Watergate.', 1),
(9, 'Horrorst?r', 'Grady Hendrix', 'books/2014 (15).png', 25, '&nbsp; &nbsp; &nbsp;Something strange is happening at the Orsk furniture superstore in Cleveland, Ohio. Every morning, employees arrive to find broken Kjerring bookshelves, shattered Glans water goblets, and smashed Liripip wardrobes. Sales are down, security cameras reveal nothing, and store managers are panicking.', 1),
(10, 'In Case Of Emergency', 'Courtney Moreno', 'books/2014 (24).png', 30, '&nbsp; &nbsp; &nbsp;What do you do when you can\'t function? After rookie EMT Piper Gallagher responds to a call outside a Los Angeles shopping mall for a man who can only tell her, \"I can\'t function\", the question begins to haunt her. How will Piper continue to function despite the horror she sees working in South Central, and despite her own fractured past?', 1),
(11, 'Karate Chop: Stories', 'Dorthe Nors, Martin Aitken', 'books/2014 (17).png', 25, '&nbsp; &nbsp; &nbsp;Karate Chop, Dorthe Nors\'s acclaimed story collection, is the debut book in the collaboration between Graywolf Press and A Public Space. These fifteen compact stories are meticulously observed glimpses of everyday life that expose the ominous lurking under the ordinary.', 1),
(12, 'Mistakes I Made at Work: 25 Influential Women Reflect on What They Got Out of Getting It Wrong', ' Jessica Bacal', 'books/2014 (18).png', 30, '&nbsp; &nbsp; &nbsp;High-achieving women share their worst mistakes at work—and how learning from them paved the way to success.<br>\r\n&nbsp; &nbsp; &nbsp;Named by Fast Company as a \"Top 10 Book You Need to Read This Year\".', 1),
(13, 'My Life In Middlemarch', 'Rebecca Mead', 'books/2014 (1).png', 25, '&nbsp; &nbsp; &nbsp;A New Yorker writer revisits the seminal book of her youth-Middlemarch-and fashions a singular, involving story of how a passionate attachment to a great work of literature can shape our lives and help us to read our own histories. ', 1),
(14, 'No Country', 'Kalyan Ray', 'books/2014 (19).png', 30, '&nbsp; &nbsp; &nbsp;Spanning two centuries and three continents, from famine-stricken Ireland to colonial India to modern-day upstate New York, No Country is a riveting, enchanting melting pot of a story about history, family, fate, and the enduring ties of friendship.', 1),
(15, 'On Such A Full Sea', 'Chang-rae Lee', 'books/2014 (2).png', 25, '&nbsp; &nbsp; &nbsp;Against a vividly imagined future America, Lee tells a stunning, surprising, and riveting story that will change the way readers think about the world they live in.', 1),
(16, 'Playing For The Commandant', 'Suzy Zail', 'books/2014 (20).png', 30, '&nbsp; &nbsp; &nbsp;A young Jewish pianist at Auschwitz, desperate to save her family, is chosen to play at the camp commandant\'s house. How could she know she would fall in love with the wrong boy?', 1),
(17, 'Resurrection', 'Wolf Haas, Annie Janusch', 'books/2014 (21).png', 25, '&nbsp; &nbsp; &nbsp;When the corpses of an American couple are found frozen to death on a ski lift in a pristine Alpine village, Brenner is called in to investigate, in his first case as a P.I.', 1),
(18, 'The Assassination Of Margaret Thatchen', 'Hilary Mantel', 'books/2014 (9).png', 30, '&nbsp; &nbsp; &nbsp;HILARY MANTEL is one of Britain\'s most accomplished and acclaimed writers. In these ten bracingly transgressive tales, all her gifts of characterisation and observation are fully engaged, ushering concealed horrors into the light.', 1),
(19, 'The Axeman\'s Jazz', 'Ray Celestin', 'books/2014 (6).png', 25, '&nbsp; &nbsp; &nbsp;New Orleans, 1919. As a dark serial killer - The Axeman - stalks the city, three individuals set out to unmask him.', 1),
(20, 'The Bees', 'Laline Paull', 'books/2014 (22).png', 30, '&nbsp; &nbsp; &nbsp;The Handmaid\'s Tale meets The Hunger Games in this brilliantly imagined debut.Born into the lowest class of her society, Flora 717 is a sanitation bee, only fit to clean her orchard hive. Living to accept, obey and serve, she is prepared to sacrifice everything for her beloved holy mother, the Queen.', 1),
(21, 'The City Under The Skin', 'Geoff Nicholson', 'books/2014 (26).png', 25, '&nbsp; &nbsp; &nbsp;A cartography-obsessed misfit clerk from an antique map store in a district that\'s not quite trendy yet. A bold young woman chasing the answer to a question she can\'t quite formulate. A petty criminal hoping the parking lot he\'s just purchased is the ticket to a new life of respectability with his school-age daughter.', 1),
(22, 'The Hoarders', 'Scott Herring', 'books/2014 (3).png', 30, '&nbsp; &nbsp; &nbsp;In The Hoarders, Scott Herring provides an in-depth examination of how modern hoarders came into being, from their onset in the late 1930s to the present day.', 1),
(23, 'The Improbability Principle', 'David J. Hans', 'books/2014 (4).png', 25, '&nbsp; &nbsp; &nbsp;In The Improbability Principle, the renowned statistician David J. Hand argues that extraordinarily rare events are anything but. In fact, they\'re commonplace. Not only that, we should all expect to experience a miracle roughly once every month.', 1),
(24, 'The Intervals Of Cinema', 'Jacques Rancière', 'books/2014 (16).png', 30, '&nbsp; &nbsp; &nbsp;An essential analysis of cinema from one of the great figures of French philosophy.', 1),
(25, 'The Martian', 'Andy Weir', 'books/2014 (23).png', 25, '&nbsp; &nbsp; &nbsp;Six days ago, astronaut Mark Watney became one of the first people to walk on Mars.<br>\r\n&nbsp; &nbsp; &nbsp;Now, he\'s sure he\'ll be the first person to die there.', 1),
(26, 'The New Annotated H.P. Lovecraft', 'H.P. Lovecraft', 'books/2014 (8).png', 30, '&nbsp;&nbsp;&nbsp;\"Here\'s an annotated edition of \"the 20th century\'s greatest practitioner of the classic horror tale\" (Stephen King). ', 1),
(27, 'The Reef: A Passionate History: The Great Barrier Reef from Captain Cook to Climate Change', 'Iain McCalman', 'books/2014 (0).jpg', 25, '&nbsp;&nbsp;&nbsp;The tone shifts from the boy\'s own adventure to scientific excitement and dizzying disaster-epic suspense. But never for a moment does the literary skill falter.', 1),
(28, 'Wolf In White Van', 'John Darnielle', 'books/2014 (5).png', 30, '&nbsp;&nbsp;&nbsp;Welcome to Trace Italian, a game of strategy and survival! You may now make your first move. Isolated by a disfiguring injury since the age of 17, Sean Phillips crafts imaginary worlds for strangers to play in.', 1),
(29, 'Act Of God', 'Jill Ciment ', 'books/2015 (1).png', 30, '&nbsp;&nbsp;&nbsp;From the author of Heroic Measures (\"Smart and funny and completely surprising... I loved every page,\"-Ann Patchett), a contemporary noir-novel that starts out a comedy-of-errors and turns darker at every hairpin turn.', 1),
(30, 'American Warlord: A True Story', 'Johnny Dwyer', 'books/2015 (2).jpg', 35, '&nbsp;&nbsp;&nbsp;Raised by his mother in the Florida suburbs, at the age of 17 he followed his father to Liberia, where he ended up leading a murderous militia. Chucky is now in a federal penitentiary, the only American ever convicted of torture. ', 1),
(31, 'Avenue Of Mysteries', 'John Irving', 'books/2015 (0).jpg', 30, '&nbsp;&nbsp;&nbsp;John Irving returns to the themes that established him as one of our most admired and beloved authors in this absorbing novel of fate and memory.<br>As we grow older—most of all, in what we remember and what we dream—we live in the past. Sometimes, we live more vividly in the past than in the present.', 1),
(32, 'Book Of Numbers', 'Joshua Cohen', 'books/2015 (21).jpg', 35, '&nbsp;&nbsp;&nbsp;The enigmatic billionaire founder of Tetration, the world\'s most powerful tech company, hires a failed novelist, Josh Cohen, to ghostwrite his memoirs.', 1),
(33, 'Boring Girls', 'Sara Taylor', 'books/2015 (20).jpg', 30, '&nbsp;&nbsp;&nbsp;Rachel feels like she doesn\'t fit in - until she finds heavy metal and meets Fern, a kindred spirit. The two form their own band, but the metal scene turns out to be no different than the misogynist world they want to change. Violent encounters escalate, and the friends decide there’s only one way forward .', 1),
(34, 'Church Of Marvels', 'Leslie Parry', 'books/2015 (9).png', 35, '&nbsp;&nbsp;&nbsp;New York, 1895. Sylvan Threadgill, a night soiler cleaning out the privies behind the tenement houses, finds an abandoned newborn baby in the muck. An orphan himself, Sylvan rescues the child, determined to find where she belongs. ', 1),
(35, 'City On Fire', 'Garth Risk Hallberg', 'books/2015 (19).jpg', 30, '&nbsp;&nbsp;&nbsp;New York City, 1976. Meet Regan and William Hamilton-Sweeney, estranged heirs to one of the city\'s great fortunes; Keith and Mercer, the men who, for better or worse, love them; Charlie and Samantha, two suburban teenagers seduced by downtown\'s punk scene; an obsessive magazine reporter, Richard, and his idealistic neighbor, Jenny, - and the detective.', 1),
(36, 'Drinking In America', 'Susan Cheever', 'books/2015 (17).jpg', 35, '&nbsp;&nbsp;&nbsp;In DRINKING IN AMERICA, bestselling author Susan Cheever chronicles our national love affair with liquor, taking a long, thoughtful look at the way alcohol has changed our nation\'s history. This is the often-overlooked story of how alcohol has shaped American events and the American character from the seventeenth to the twentieth century. ', 1),
(37, 'Fates And Furies', 'Lauren Groff', 'books/2015 (16).jpg', 30, '&nbsp;&nbsp;&nbsp;Every story has two sides. Every relationship has two perspectives. And sometimes, it turns out, the key to a great marriage is not its truths but its secrets. At the core of this rich, expansive, layered novel, Lauren Groff presents the story of one such marriage over the course of twenty-four years.', 1),
(38, 'Girl Waits With Gun', 'Amy Stewart', 'books/2015 (15).jpg', 35, '&nbsp;&nbsp;&nbsp;A novel based on the forgotten true story of one of the nation\'s first female deputy sheriffs.', 1),
(39, 'Hausfrau', 'Jill Alexander Essbaum', 'books/2015 (14).jpg', 30, '&nbsp;&nbsp;&nbsp;A striking debut novel of marriage, fidelity, sex, and morality, featuring a fascinating heroine who struggles to live a life with meaning.', 1),
(40, 'Hold Still: A Memoir with Photographs', 'Sally Mann', 'books/2015 (7).png', 35, '&nbsp;&nbsp;&nbsp;In this groundbreaking book, a unique interplay of narrative and image, Mann\'s preoccupation with family, race, mortality, and the storied landscape of the American South are revealed as almost genetically predetermined, written into her DNA by the family history that precedes her.', 1),
(41, 'Hotels Of North America', 'Rick Moody', 'books/2015 (13).jpg', 30, '&nbsp;&nbsp;&nbsp;Reginald Edward Morse is one of the top reviewers on RateYourLodging.com, where his many reviews reveal more than just details of hotels around the globe-they tell his life story.', 1),
(42, 'Hunger Makes Me A Modern Girl', 'Carrie Brownstein', 'books/2015 (12).jpg', 35, '&nbsp;&nbsp;&nbsp;Before Carrie Brownstein codeveloped and starred in the wildly popular TV comedy Portlandia, she was already an icon to young women for her role as a musician in the feminist punk band Sleater-Kinney. ', 1),
(43, 'Mislaid', 'Nell Zink', 'books/2015 (11).jpg', 30, '&nbsp;&nbsp;&nbsp;Stillwater College in Virginia, 1966: Freshman Peggy, an ingénue with literary pretensions, falls under the spell of Lee, a blue-blooded poet and professor, and they begin an ill-advised affair that results in an unplanned pregnancy and marriage. \r\n				', 1),
(44, 'Modern Romance', 'Aziz Ansari, Eric Klinenberg', 'books/2015 (10).jpg', 35, '&nbsp;&nbsp;&nbsp;At some point, every one of us embarks on a journey to find love. We meet people, date, get into and out of relationships, all with the hope of finding someone with whom we share a deep connection. This seems standard now, but it\'s wildly different from what people did even just decades ago. \r\n				', 1),
(45, 'Satin Island', 'Tom McCarthy', 'books/2015 (7).jpg', 30, '&nbsp;&nbsp;&nbsp;When we first meet U., our narrator, he is waiting out a delay in the Turin airport. Clicking through corridors of trivia on his laptop he stumbles on information about the Shroud of Turin--and is struck by the degree to which our access to the truth is always mediated by a set of veils or screens, with any world built on those truths inherently unstable.', 1),
(46, 'So You\'ve Been Publicly Shamed', 'John Ronson', 'books/2015 (8).jpg', 35, '&nbsp;&nbsp;&nbsp;For the past three years, Jon Ronson has travelled the world meeting recipients of high-profile public shamings. The shamed are people like us - people who, say, made a joke on social media that came out badly, or made a mistake at work. \r\n				', 1),
(47, 'Speak', 'Louisa Hall', 'books/2015 (6).png', 30, '&nbsp;&nbsp;&nbsp;In a narrative that spans geography and time, from the Atlantic Ocean in the seventeenth century, to a correctional institute in Texas in the near future, and told from the perspectives of five very different characters, Speak considers what it means to be human, and what it means to be less than fully alive. ', 1),
(48, 'The Harder They Come', 'T. C. Boyle', 'books/2015 (8).png', 35, '&nbsp;&nbsp;&nbsp;Set in contemporary Northern California, The Harder They Come explores the volatile connections between three damaged people—an aging ex-Marine and Vietnam veteran, his psychologically unstable son, and the son\'s paranoid, much older lover—as they careen towards an explosive confrontation.', 1),
(49, 'The Last Pilot', 'Benjamin Johncock', 'books/2015 (5).png', 30, '&nbsp; &nbsp; &nbsp;Jim Harrison is a test pilot in the United States Air Force, one of the exalted few. He spends his days cheating death in the skies above the Mojave Desert and his nights at his friend Pancho\'s bar, often with his wife, Grace. She and Harrison are secretly desperate for a child-and when, against all odds, Grace learns that she is pregnant, the two are overcome with joy.', 1),
(50, 'The Only Street in Paris: Life on the Rue des Martyrs', ' Elaine Sciolino', 'books/2015 (9).jpg', 35, '&nbsp;&nbsp;&nbsp;Elaine Sciolino, the former Paris Bureau Chief of the New York Times, invites us on a tour of her favorite Parisian street, offering an homage to street life and the pleasures of Parisian living. \"I can never be sad on the rue des Martyrs,\" Sciolino explains, as she celebrates the neighborhood’s rich history and vibrant lives. \r\n				', 1),
(51, 'The Water Knife', 'Paolo Bacigalupi', 'books/2015 (5).jpg', 30, '&nbsp; &nbsp; &nbsp;In the American Southwest, Nevada, Arizona, and California skirmish for dwindling shares of the Colorado River. Into the fray steps Angel Velasquez, leg-breaker, assassin, and spy. A Las Vegas water knife, Angel \"cuts\" water for his boss, Catherine Case, ensuring that her luxurious developments can bloom in the desert, so the rich can stay wet while the poor get dust. ', 1),
(52, 'The Wolf Border', 'Sarah Hall', 'books/2015 (3).png', 35, '&nbsp; &nbsp; &nbsp;Rachel Caine is a zoologist working in Nez Perce, Idaho, as part of a wolf recovery project. She spends her days, and often nights, tracking the every move of a wild wolf pack-their size, their behavior, their howl patterns. It is a fairly solitary existence, but Rachel is content.', 1),
(53, 'The World Before Us', 'Aislinn Hunter', 'books/2015 (2).png', 30, '&nbsp; &nbsp; &nbsp;Deep in the woods of northern England, somewhere between a dilapidated estate and an abandoned Victorian asylum, fifteen-year-old Jane Standen lived through a nightmare. She was babysitting a sweet young girl named Lily, and in one fleeting moment, lost her. The little girl was never found, leaving her family and Jane devastated.', 1),
(54, 'Under Major Domo Minor', 'Patrick deWitt', 'books/2015 (4).png', 35, '&nbsp; &nbsp; &nbsp;Friendless and loveless, young and aimless, Lucien (Lucy) Minor is the resident odd duck in his bucolic hamlet of Bury, a weakling and compulsive liar in a town famous for producing brutish giants.', 1),
(55, 'Voices In The Night: Stories', 'Steven Millhauser', 'books/2015 (6).jpg', 30, '&nbsp; &nbsp; &nbsp;From the Pulitzer and Story Prize winner: sixteen new stories—provocative, funny, disturbing, enchanting—that delve into the secret lives and desires of ordinary people, alongside retellings of myths and legends that highlight the aspirations of the human spirit.', 1),
(56, 'Welcome To Night Vale', 'Joseph Fink, Jeffrey Cranor', 'books/2015 (4).jpg', 35, '&nbsp; &nbsp; &nbsp;From the creators of the wildly popular Welcome to Night Vale podcast comes an imaginative mystery of appearances and disappearances that is also a poignant look at the ways in which we all struggle to find ourselves...no matter where we live.', 1),
(57, 'Wildflower', 'Drew Barrymore', 'books/2015 (3).jpg', 30, '&nbsp; &nbsp; &nbsp;Wildflower is a portrait of Drew\'s life in stories as she looks back on the adventures, challenges, and incredible experiences of her earlier years. \r\n				', 1),
(58, 'William Shakespeare\'s The Clone Army Attacketh', 'Ian Doescher', 'books/2015 (18).jpg', 30, '&nbsp;&nbsp;&nbsp;The curtain rises on yeoman Jedi Anakin Skywalker, a man torn between duty to his Masters, attraction to Padmé, and concern for his beloved mother, Shmi. His choices will determine not just his own destiny, but that of the entire Republic. An thereby hangs a tale.', 1),
(59, 'A Burglar\'s Guide To The City', 'Geoff Manaugh', 'books/2016 (3).jpg', 35, '&nbsp;&nbsp;&nbsp;At the core of A Burglar\'s Guide to the City is an unexpected and thrilling insight: how any building transforms when seen through the eyes of someone hoping to break into it. Studying architecture the way a burglar would, Geoff Manaugh takes readers through walls, down elevator shafts, into panic rooms, up to the buried vaults of banks, and out across the rooftops of an unsuspecting city.', 1),
(60, 'American Girls', 'Alison Umminger', 'books/2016 (5).jpg', 40, '&nbsp;&nbsp;&nbsp;Anna is a fifteen-year-old girl slouching toward adulthood, and she\'s had it with her life at home. So Anna \"borrows\" her stepmom\'s credit card and runs away to Los Angeles, where her half-sister takes her in. But LA isn\'t quite the glamorous escape Anna had imagined.', 1),
(61, 'Burned Away', 'Kristen Simmons', 'books/2016 (2).jpg', 35, '&nbsp;&nbsp;&nbsp;When rumors of an uprising in Metaltown\'s factories hits Bakerstown, sixteen-year-old wannabe reporter Caris knows she\'s found the story that will finally prove her worth to the Journal. \"Burned Away\" is a standalone story set in the world of Metaltown (Tor Teen, September 2016).', 1),
(62, 'Cannibals In Love', 'Mike Roberts', 'books/2016 (0).jpg', 40, '&nbsp;&nbsp;&nbsp;Soulful, gritty, and hilarious, Cannibals in Love is the debut novel from a bold new voice in fiction, and a manifesto for the generation that came of age at the dawn of the twenty-first century.', 1),
(63, 'Freedom Is Space For The Spirit', 'Glen Hirshberg', 'books/2016 (24).jpg', 35, '&nbsp;&nbsp;&nbsp;Freedom is Space for the Spirit by Glen Hirshberg is a fantasy about a middle-aged German, drawn back to Russia by a mysterious invitation from a friend he knew during the wild, exuberant period in the midst of the break-up of the Soviet Union. Upon his arrival in St. Petersburg, he begins to see bears, wandering and seemingly lost.', 1),
(64, 'How to Smoke Pot (Properly): A Highbrow Guide to Getting High', 'David Bienenstock', 'books/2016 (14).jpg', 40, '&nbsp;&nbsp;&nbsp;Once literally demonized as \"the Devil\'s lettuce\", and linked to all manner of deviant behavior by the establishment\'s shameless anti-marijuana propaganda campaigns, cannabis sativa has lately been enjoying a long-overdue Renaissance. ', 1),
(65, 'Hurt People', 'Cote Smith', 'books/2016 (22).jpg', 35, '&nbsp;&nbsp;&nbsp;It\'s the summer of 1988 in northeastern Kansas, an area home to four prisons that has been shaken by the recent escape of a convict. But for two young brothers in Leavenworth, the only thing that matters is the pool in their apartment complex. ', 1),
(66, 'Imagine Me Gone', 'Adam Haslett', 'books/2016 (21).jpg', 40, '&nbsp;&nbsp;&nbsp;When Margaret\'s fiancé, John, is hospitalized for depression in 1960s London, she faces a choice: carry on with their plans despite what she now knows of his condition, or back away from the suffering it may bring her. She decides to marry him. Imagine Me Gone is the unforgettable story of what unfolds from this act of love and faith.', 1),
(67, 'Infomocracy', 'Malka Ann Older', 'books/2016 (20).jpg', 35, '&nbsp;&nbsp;&nbsp;It\'s been twenty years and two election cycles since Information, a powerful search engine monopoly, pioneered the switch from warring nation-states to global micro-democracy. The corporate coalition party Heritage has won the last two elections. With another election on the horizon, the Supermajority is in tight contention, and everything\'s on the line.', 1),
(68, 'Pond', 'Claire-Louise Bennett', 'books/2016 (16).jpg', 40, '&nbsp;&nbsp;&nbsp;Feverish and forthright, Pond is an absorbing chronicle of the pitfalls and pleasures of a solitudinous life told by an unnamed woman living on the cusp of a coastal town.', 1),
(69, 'Sex Object', 'Vessica Valenti', 'books/2016 (15).jpg', 35, '&nbsp;&nbsp;&nbsp;Sex Object explores the painful, funny, embarrassing, and sometimes illegal moments that shaped Valenti’s adolescence and young adulthood in New York City, revealing a much shakier inner life than the confident persona she has cultivated as one of the most recognizable feminists of her generation. ', 1),
(70, 'Sudden Death', ' Álvaro Enrigue, Natasha Wimmer', 'books/2016 (2).png', 40, '&nbsp;&nbsp;&nbsp;Sudden Death begins with a brutal tennis match that could decide the fate of the world. The bawdy Italian painter Caravaggio and the loutish Spanish poet Quevedo battle it out before a crowd that includes Galileo, Mary Magdalene, and a generation of popes who would throw Europe into the flames.', 1),
(71, 'Swing Time', 'Zadie Smith', 'books/2016 (13).jpg', 35, '&nbsp;&nbsp;&nbsp;Two brown girls dream of being dancers--but only one, Tracey, has talent. The other has ideas: about rhythm and time, about black bodies and black music, about what constitutes a tribe, or makes a person truly free. It\'s a close but complicated childhood friendship that ends abruptly in their early twenties, never to be revisited, but never quite forgotten, either.', 1),
(72, 'That Game We Played During The War', 'Carrie Vaugh', 'books/2016 (23).jpg', 40, '&nbsp;&nbsp;&nbsp;The people of Gaant are telepaths. The people of Enith are not. The two countries have been at war for decades, but now peace has fallen, and Calla of Enith seeks to renew an unlikely friendship with Gaantish officer Valk over an even more unlikely game of chess, in Carrie Vaughn\'s novella That Game We Played During The War.', 1),
(73, 'The Association Of Small Bombs', 'Karan Mahajan', 'books/2016 (4).jpg', 35, '&nbsp;&nbsp;&nbsp;When brothers Tushar and Nakul Khurana, two Delhi schoolboys, go to pick up their family\'s television set at a repair shop with their friend Mansoor Ahmed one day in 1996, disaster strikes without warning. A bomb-one of the many \"small\" bombs that go off seemingly unheralded across the world-detonates in the Delhi marketplace, instantly claiming the lives of the Khurana boys to the devastation of their parents.', 1),
(74, 'The Children\'s Home', 'Charles Lambert', 'books/2016 (6).png', 40, '&nbsp;&nbsp;&nbsp;For fans of Shirley Jackson, Neil Gaiman, Roald Dahl, and Edward Gorey, a beguiling and disarming debut novel from an award-winning British author about a mysterious group of children who appear to a disfigured recluse and his country doctor,and the startling revelations their behavior evokes.', 1),
(75, 'The Girls', 'Emma Cline', 'books/2016 (12).jpg', 35, '&nbsp;&nbsp;&nbsp;Northern California, during the violent end of the 1960s. At the start of summer, a lonely and thoughtful teenager, Evie Boyd, sees a group of girls in the park, and is immediately caught by their freedom, their careless dress, their dangerous aura of abandon.', 1),
(76, 'The Lesser Bohemians', 'Eimear McBride', 'books/2016 (19).jpg', 40, '&nbsp;&nbsp;&nbsp;Upon her arrival in London, an 18-year-old Irish girl begins anew as a drama student, with all the hopes of any young actress searching for the fame she\'s always dreamed of. She struggles to fit in-she\'s young and unexotic, a naive new girl-but soon she forges friendships and finds a place for herself in the big city.', 1),
(78, 'The Ministry Of Nostalgia', 'Owen Hatherley', 'books/2016 (6).jpg', 35, '&nbsp;&nbsp;&nbsp;In this brilliant polemical rampage, Owen Hatherley shows how our past is being resold in order to defend the indefensible. From the marketing of a \"make do and mend\" aesthetic to the growing nostalgia for a utopian past that never existed, a cultural distraction scam prevents people grasping the truth of their condition.', 1),
(79, 'The Mother', 'Yvvette Edwards', 'books/2016 (11).jpg', 40, '&nbsp;&nbsp;&nbsp;The unimaginable has happened to Marcia Williams. Her bright and beautiful sixteen-year-old son Ryan has been brutally murdered. Consumed by grief and rage, she must bridle her dark feelings and endure something no mother should ever have to experience: she must go to court for the trial of the killer—another teenage boy—accused of taking her son’s life. ', 1),
(80, 'The Mothers', 'Brit Bennett', 'books/2016 (18).jpg', 35, '&nbsp;&nbsp;&nbsp;Set within a contemporary black community in Southern California, Brit Bennett\'s mesmerizing first novel is an emotionally perceptive story about community, love, and ambition. It begins with a secret.', 1),
(81, 'The Night Cyclist', 'Stephen Graham Jones', 'books/2016 (17).jpg', 40, '&nbsp;&nbsp;&nbsp;\"The Night Cyclist\" by Stephen Graham Jones is a horror novelette about a middle-aged chef whose nightly bicycle ride home is interrupted by an unexpected encounter.', 1),
(82, 'The Stargazer\'s Sister', 'Carrie Brown', 'books/2016 (3).png', 35, '&nbsp;&nbsp;&nbsp;This exquisitely imagined novel opens as the great astronomer and composer William Herschel rescues his sister Caroline from a life of drudgery in Germany and brings her to England and a world of music-making and stargazing. Lina, as Caroline is known, serves as William\'s assistant and the captain of his exhilaratingly busy household. \r\n				', 1),
(83, 'The Underground Railroad', 'Colson Whitehead', 'books/2016 (9).jpg', 40, '&nbsp;&nbsp;&nbsp;Cora is a slave on a cotton plantation in Georgia. Life is hellish for all the slaves but especially bad for Cora; an outcast even among her fellow Africans, she is coming into womanhood - where even greater pain awaits. ', 1),
(84, 'The Vegetarian', 'Han Kang', 'books/2016 (1).png', 35, '&nbsp;&nbsp;&nbsp;Before the nightmare, Yeong-hye and her husband lived an ordinary life. But when splintering, blood-soaked images start haunting her thoughts, Yeong-hye decides to purge her mind and renounce eating meat. ', 1),
(85, 'Tuesday Night In 1980', 'Molly Prentiss', 'books/2016 (10).jpg', 40, '&nbsp;&nbsp;&nbsp;A transcendent debut novel that follows a critic, an artist, and a desirous, determined young woman as they find their way—and ultimately collide—amid the ever-evolving New York City art scene of the 1980s.', 1),
(86, 'Version Control', 'Dexter Palmer', 'books/2016 (8).jpg', 35, '&nbsp;&nbsp;&nbsp;Rebecca Wright has reclaimed her life, finding her way out of her grief and depression following a personal tragedy years ago. She spends her days working in customer support for the internet dating site where she first met her husband. But she has a strange, persistent sense that everything around her is somewhat off-kilter.', 1),
(87, 'XX: Poems For The Twentieh Century', 'Campbell McGrath', 'books/2016 (7).jpg', 40, '&nbsp;&nbsp;&nbsp;A poetic history of the twentieth century from one of our most beloved, popular, and highly lauded poets—a stirring, strikingly original, intensely imagined recreation of the most potent voices and searing moments that have shaped our collective experience.', 1),
(88, 'A Man Of Shadows', 'Jeff Noon', 'books/2017 (20).jpg', 40, '&nbsp;&nbsp;&nbsp;Below the neon skies of Dayzone - where the lights never go out, and night has been banished - lowly private eye John Nyquist takes on a teenage runaway case. His quest takes him from Dayzone into the permanent dark of Nocturna.', 1),
(89, 'A Selfie As Big As The Ritz', 'Lara Williams', 'books/2017 (14).jpg', 45, '&nbsp;&nbsp;&nbsp;She finds herself single, twenty-nine, partially-employed, and about a half a stone overweight. Roller dexter of eligible friends rattling thin. Thirties breathing down her neck like an inappropriate uncle. She jogs. Looks good in turquoise. Finds herself punctuating gas \"better out than in!\" patting her stomach like a department store Santa. This is who I am, she thinks.', 1),
(90, 'Always Happy Hour', 'Mary Miller', 'books/2017 (28).jpg', 40, '&nbsp;&nbsp;&nbsp;Combining hard-edged prose and savage Southern charm, Mary Miller showcases transcendent contemporary talent at its best. With its collection of lusty, lazy, hard-drinking characters forever in their own way, Always Happy Hour confirms Miller as an heir apparent to Mary Gaitskill.', 1),
(91, 'An Unkindness Of Magicians', 'Kat Howard', 'books/2017 (9).jpg', 45, '&nbsp;&nbsp;&nbsp;There is a dark secret that is hiding at the heart of New York City and diminishing the city\'s magicians\' power in this fantasy thriller by acclaimed author Kat Howard.', 1),
(92, 'Borne', 'Jeff VanderMeer', 'books/2017 (3).jpg', 40, '&nbsp;&nbsp;&nbsp;In a ruined, nameless city of the future, a woman named Rachel, who makes her living as a scavenger, finds a creature she names \"Borne\" entangled in the fur of Mord, a gigantic, despotic bear. ', 1),
(93, 'Buzz', 'Hallie Lieberman', 'books/2017 (2).jpg', 45, '&nbsp;&nbsp;&nbsp;Once only whispered about in clandestine corners, vibrators have become just another accessory for the suburban soccer mom, showing up in all manner of pop culture, from sitcoms to talk shows to the pages of glossy women’s magazines. But how did these once-taboo toys become so socially acceptable?', 1),
(94, 'Draw Your Weapons', 'Sarah Sentilles', 'books/2017 (1).png', 40, '&nbsp;&nbsp;&nbsp;A single book might not change the world. But this utterly original meditation on art and war might transform the way you see the world-and that makes all the difference.', 1),
(95, 'Heather, The Totality', 'Matthew Weiner', 'books/2017 (26).jpg', 45, '&nbsp;&nbsp;&nbsp;The Breakstone family arrange themselves around their daughter Heather, and the world seems to follow: beautiful, compassionate, entrancing, she is the greatest blessing in their lives of Manhattan luxury. But as Heather grows-and her empathy sharpens to a point, and her radiance attracts more and more dark interest-their perfect existence starts to fracture. ', 1),
(96, 'Home Fire', 'Kamila Shamsie', 'books/2017 (25).jpg', 40, '&nbsp;&nbsp;&nbsp;The suspenseful and heartbreaking story of an immigrant family driven to pit love against loyalty, with devastating consequences <br>\r\n&nbsp;&nbsp;&nbsp;Isma is free. After years of watching out for her younger siblings in the wake of their mother\'s death, she’s accepted an invitation from a mentor in America that allows her to resume a dream long deferred.\r\n				', 1),
(97, 'How To Behave In a Crowd', 'Camille Bordas', 'books/2017 (24).jpg', 45, '&nbsp;&nbsp;&nbsp;Isidore Mazal is eleven years old, the youngest of six siblings living in a small French town. He doesn\'t quite fit in.', 1),
(98, 'I Am Not Your Perfect Mexicam Daughter', 'Erika L. Sánchez ', 'books/2017 (23).jpg', 40, '&nbsp;&nbsp;&nbsp;Perfect Mexican daughters do not go away to college. And they do not move out of their parents\' house after high school graduation. Perfect Mexican daughters never abandon their family.', 1),
(99, 'Investigations of a Dog: And Other Creatures', 'Franz Kafka, Michael Hofmann', 'books/2017 (22).jpg', 45, '&nbsp;&nbsp;&nbsp;Animals, strange beasts, bureaucrats, businessmen, and nightmares populate this collection of stories by Franz Kafka. ', 1),
(100, 'Lotus', 'Lijia Zhang', 'books/2017 (21).jpg', 40, '&nbsp;&nbsp;&nbsp;Inspired by the secret life of the author\'s grandmother, Lotus follows a young woman torn between past traditions and modern desires as she carves out a life for herself in China\'s \"City of Sins\".', 1),
(101, 'New People', 'Danzy Senna', 'books/2017 (18).jpg', 45, '&nbsp;&nbsp;&nbsp;As the twentieth century draws to a close, Maria is at the start of a life she never thought possible. She and Khalil, her college sweetheart, are planning their wedding. They are the perfect couple, \"King and Queen of the Racially Nebulous Prom.\" Their skin is the same shade of beige.', 1),
(102, 'Priestdaddy', 'Patricia Lockwood', 'books/2017 (16).jpg', 40, '&nbsp;&nbsp;&nbsp;The childhood of Patricia Lockwood, the poet dubbed \"The Smutty-Metaphor Queen of Lawrence, Kansas\" by The New York Times, was unusual in many respects. There was the location: an impoverished, nuclear waste-riddled area of the American Midwest.', 1),
(103, 'Retribution Rails', 'Erin Bowman', 'books/2017 (15).jpg', 45, '&nbsp;&nbsp;&nbsp;REDEMPTION IS NEVER FREE<br>\r\n&nbsp;&nbsp;&nbsp;When Reece Murphy is forcibly dragged into the Rose Riders gang because of a mysterious gold coin in his possession, he vows to find the man who gave him the piece and turn him over to the gang in exchange for freedom. Never does he expect a lead to come from an aspiring female journalist. ', 1),
(104, 'Sympathy', 'Olivia Sudjic', 'books/2017 (12).jpg', 40, '&nbsp;&nbsp;&nbsp;An electrifying debut novel of obsessive love, family secrets, and the dangers of living our lives online.', 1),
(105, 'Silencer', 'Marcus Wicker', 'books/2017 (13).jpg', 45, '&nbsp;&nbsp;&nbsp;A suburban park, church, a good job, a cocktail party for the literati: to many, these sound like safe places, but for a young black man these insular spaces don\'t keep out the news—and the actual threat—of gun violence and police brutality, or the biases that keeps body, property, and hope in the crosshairs. ', 1),
(106, 'The Ends Of The World', 'Peter Brannen', 'books/2017 (0).jpg', 40, '&nbsp;&nbsp;&nbsp;Our world has ended five times: it has been broiled, frozen, poison-gassed, smothered, and pelted by asteroids. In The Ends of the World, Peter Brannen dives into deep time, exploring Earth\'s past dead ends, and in the process, offers us a glimpse of our possible future.', 1),
(107, 'The Hate You Give', 'Angie Thomas', 'books/2017 (27).jpg', 45, '&nbsp;&nbsp;&nbsp;Inspired by the Black Lives Matter movement, Angie Thomas\'s searing debut about an ordinary girl in extraordinary circumstances addresses issues of racism and police violence with intelligence, heart, and unflinching honesty. Soon to be a major motion picture from Fox 2000/Temple Hill Productions.', 1),
(108, 'The Naturalist', 'Andrew Wayne', 'books/2017 (19).jpg', 40, '&nbsp;&nbsp;&nbsp;Professor Theo Cray is trained to see patterns where others see chaos. So when mutilated bodies found deep in the Montana woods leave the cops searching blindly for clues, Theo sees something they missed. Something unnatural. Something only he can stop.', 1),
(109, 'The Night Ocean', 'Paul La Farge', 'books/2017 (17).jpg', 45, '&nbsp;&nbsp;&nbsp;Marina Willett, M.D., has a problem. Her husband, Charlie, has become obsessed with H.P. Lovecraft, in particular with one episode in the legendary horror writer\'s life: In the summer of 1934, the \"old gent\" lived for two months with a gay teenage fan named Robert Barlow, at Barlow\'s family home in central Florida. What were the two of them up to?', 1),
(110, 'The World Goes On', 'László Krasznahorkai', 'books/2017 (4).jpg', 40, '&nbsp;&nbsp;&nbsp;In The World Goes On, a narrator first speaks directly, then tells eleven unforgettable stories, and then bids farewell (\"for here I would leave this earth and these stars, because I would take nothing with me\"). As László Krasznahoraki himself explains: \"Each text is about drawing our attention away from this world, speeding our body toward annihilation, and immersing ourselves in a current of thought or a narrativ.\"', 1),
(111, 'They Can\'t Kill Us Until They Kill Us', 'Hanif Abdurrqib', 'books/2017 (2).png', 45, '&nbsp;&nbsp;&nbsp;In an age of confusion, fear, and loss, Hanif Abdurraqib\'s is a voice that matters. Whether he\'s attending a Bruce Springsteen concert the day after visiting Michael Brown\'s grave, or discussing public displays of affection at a Carly Rae Jepsen show, he writes with a poignancy and magnetism that resonates profoundly.', 1),
(112, 'Uncommon Type: Some Stories', 'Tom Hanks', 'books/2017 (11).jpg', 40, '&nbsp;&nbsp;&nbsp;A collection of seventeen wonderful short stories showing that two-time Oscar winner Tom Hanks is as talented a writer as he is an actor. ', 1),
(113, 'Universal Harvester', 'John Darnielle', 'books/2017 (10).jpg', 45, '&nbsp;&nbsp;&nbsp;Life in a small town takes a dark turn when mysterious footage begins appearing on VHS cassettes at the local Video Hut.', 1),
(114, 'We Are Never Meeting In Real Life', 'Samantha Irby', 'books/2017 (8).jpg', 40, '&nbsp;&nbsp;&nbsp;Sometimes you just have to laugh, even when life is a dumpster fire. With We Are Never Meeting in Real Life., \"bitches gotta eat\" blogger and comedian Samantha Irby turns the serio-comic essay into an art form.', 1),
(115, 'When Dimple Met Rishi', 'Sandhya Menon', 'books/2017 (7).jpg', 45, '&nbsp;&nbsp;&nbsp;Dimple Shah has it all figured out. With graduation behind her, she\'s more than ready for a break from her family, from Mamma\'s inexplicable obsession with her finding the \"Ideal Indian Husband\". Ugh. Dimple knows they must respect her principles on some level, though.', 1),
(116, 'White Tears', 'Hari Kunzru', 'books/2017 (6).jpg', 40, '&nbsp;&nbsp;&nbsp;Two twenty-something New Yorkers. Seth is awkward and shy. Carter is the glamorous heir to one of America\'s great fortunes. They have one thing in common: an obsession with music. Seth is desperate to reach for the future. Carter is slipping back into the past. ', 1),
(117, 'Why I\'m No Longer Talking to White People About Race', 'Reni Eddo-Lodge', 'books/2017 (5).jpg', 45, '&nbsp;&nbsp;&nbsp;In 2014, award-winning journalist Reni Eddo-Lodge wrote about her frustration with the way that discussions of race and racism in Britain were being led by those who weren\'t affected by it. She posted a piece on her blog, entitled: \'Why I\'m No Longer Talking to White People About Race\' that led to this book.', 1),
(118, 'The Empathy Exams: Essays', ' Leslie Jamison', 'books/2014 (12).png', 30, '&nbsp; &nbsp; &nbsp;From personal loss to phantom diseases, The Empathy Exams is a bold and brilliant collection; winner of the Graywolf Press Nonfiction Prize.', 1),
(119, 'The Book Of Strange New Things', 'Michael Faber', 'books/2014 (2).jpg', 25, '&nbsp; &nbsp; &nbsp;A monumental, genre-defying novel over ten years in the making, Michel Faber\'s The Book of Strange New Things is a masterwork from a writer in full command of his many talents.', 1);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `type`) VALUES
(0, 'admin', 'admin@yahoo.com', '81dc9bdb52d04dc20036dbd8313ed055', 1),
(2, 'Max', 'max@yahoo.com', '2ffe4e77325d9a7152f7086ea7aa5114', 0),
(8, 'New', 'new@yahoo.com', 'd41d8cd98f00b204e9800998ecf8427e', 0),
(9, 'Elz', 'elizasolschi@yahoo.com', '16306add44d7d975bb4d30dcd78eec3c', 0);

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `manga`
--
ALTER TABLE `manga`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT pentru tabele `manga`
--
ALTER TABLE `manga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT pentru tabele `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT pentru tabele `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT pentru tabele `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT pentru tabele `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
