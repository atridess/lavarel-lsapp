-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 26, 2019 at 06:36 AM
-- Server version: 5.7.25-0ubuntu0.18.04.2
-- PHP Version: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lsapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_01_23_141004_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `body` mediumtext CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Post One', 'This is the post body', '2019-01-23 14:28:29', '2019-01-23 14:28:29'),
(2, 'Post Two', 'This is post two', '2019-01-23 14:30:54', '2019-01-23 15:30:00'),
(3, 'Post Three', 'Oooo! this is the 3rd post', '2019-01-24 10:49:15', '2019-01-24 10:49:15'),
(6, 'A Simple Plan', '<p>&copy; Irwin Mercer</p>\r\n\r\n<p>Published: May 2017</p>\r\n\r\n<p>Simple Sam was a simple man.<br />\r\nHe lived each day by a simple plan.<br />\r\nEnjoy your life and live while you can.<br />\r\nMake each day count and take a stand.<br />\r\n<br />\r\nStand on the left or stand on the right,<br />\r\nWhichever one you think is right.<br />\r\nLive each day as if your last.<br />\r\nLife&#39;s too short and gone too fast.</p>\r\n\r\n<p><br />\r\n<br />\r\nSource: <a href=\"https://www.familyfriendpoems.com/poem/a-simple-plan\">https://www.familyfriendpoems.com/poem/a-simple-plan</a></p>', '2019-01-24 11:24:29', '2019-01-24 11:24:29'),
(7, 'If', '<p>By <a href=\"https://www.poetryfoundation.org/poets/rudyard-kipling\">Rudyard Kipling</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>(&lsquo;Brother Square-Toes&rsquo;&mdash;Rewards and Fairies)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>If you can keep your head when all about you&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; Are losing theirs and blaming it on you,&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>If you can trust yourself when all men doubt you,</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; But make allowance for their doubting too;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>If you can wait and not be tired by waiting,</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; Or being lied about, don&rsquo;t deal in lies,</p>\r\n\r\n<p>Or being hated, don&rsquo;t give way to hating,</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; And yet don&rsquo;t look too good, nor talk too wise:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>If you can dream&mdash;and not make dreams your master;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; If you can think&mdash;and not make thoughts your aim;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>If you can meet with Triumph and Disaster</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; And treat those two impostors just the same;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>If you can bear to hear the truth you&rsquo;ve spoken</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; Twisted by knaves to make a trap for fools,</p>\r\n\r\n<p>Or watch the things you gave your life to, broken,</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; And stoop and build &rsquo;em up with worn-out tools:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>If you can make one heap of all your winnings</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; And risk it on one turn of pitch-and-toss,</p>\r\n\r\n<p>And lose, and start again at your beginnings</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; And never breathe a word about your loss;</p>\r\n\r\n<p>If you can force your heart and nerve and sinew</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; To serve your turn long after they are gone,&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>And so hold on when there is nothing in you</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; Except the Will which says to them: &lsquo;Hold on!&rsquo;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>If you can talk with crowds and keep your virtue,&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; Or walk with Kings&mdash;nor lose the common touch,</p>\r\n\r\n<p>If neither foes nor loving friends can hurt you,</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; If all men count with you, but none too much;</p>\r\n\r\n<p>If you can fill the unforgiving minute</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; With sixty seconds&rsquo; worth of distance run,&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>Yours is the Earth and everything that&rsquo;s in it,&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; And&mdash;which is more&mdash;you&rsquo;ll be a Man, my son!</p>', '2019-01-24 11:26:41', '2019-01-24 11:26:41'),
(8, 'I Still Matter', '<p>&copy; Pat A. Fleming</p>\r\n\r\n<p>Published: September 2017</p>\r\n\r\n<p>I&#39;M STILL HERE<br />\r\n<br />\r\nMy looks are nothing special,<br />\r\nMy face reveals my age,<br />\r\nMy body shows some wear and tear,<br />\r\nAnd my energy&#39;s not the same.<br />\r\n<br />\r\nToo often my memory fails me,<br />\r\nAnd I lose things all the time.<br />\r\nOne minute I know what I plan to do,<br />\r\nAnd the next it may just slip my mind.<br />\r\n<br />\r\nI try hard to avoid my mirror.<br />\r\nThere are things I would rather not see,<br />\r\nAnd even those times when I just catch a glimpse,<br />\r\nI no longer can recognize me.<br />\r\n<br />\r\nThe things I used to do with ease<br />\r\nCan now cause aches and pains,<br />\r\nAnd the quality of the things I do<br />\r\nWill never quite be the same.<br />\r\n<br />\r\nI always compare my older self,<br />\r\nTo those younger versions of me,<br />\r\nAnd I know I&#39;m wasting too much time<br />\r\nMissing who I used to be.<br />\r\n<br />\r\nBut the thing that really makes me sad<br />\r\nIs despite what people see,<br />\r\nUnderneath my tattered, worn out shell,<br />\r\nI&#39;m still the same old me.<br />\r\n<br />\r\nMy heart can still feel endless love,<br />\r\nAnd at times it still can ache.<br />\r\nMy heart can fill with so much joy,<br />\r\nAnd then it can suddenly break.<br />\r\n<br />\r\nMy soul can still feel sympathy<br />\r\nAnd longs for forgiveness and peace,<br />\r\nAnd there are times its light shines boldly through,<br />\r\nAnd times when it longs for release.<br />\r\n<br />\r\nIt&#39;s true, maybe now that I&#39;m older,<br />\r\nFeeling lonely may be status quo,<br />\r\nBut it also has made me more willing<br />\r\nTo forgive and let past conflicts go.<br />\r\n<br />\r\nSo maybe to some I look ugly and old,<br />\r\nA person who barely exists.<br />\r\nI&#39;m still quite aware of the beauty inside,<br />\r\nAnd my value should not be dismissed.<br />\r\n<br />\r\nSo although not as strong and no beauty, it&#39;s true,<br />\r\nI&#39;m still here and want so much to live,<br />\r\nAnd I know that there&#39;s no one in this world quite like me,<br />\r\nAnd no one who has more to give.</p>\r\n\r\n<p><br />\r\n<br />\r\nSource: <a href=\"https://www.familyfriendpoems.com/poem/i-still-matter\">https://www.familyfriendpoems.com/poem/i-still-matter</a></p>', '2019-01-24 11:28:47', '2019-01-24 11:28:47'),
(9, 'My Post', '<p>I need to sleep but can&#39;t stop programming.</p>', '2019-01-24 12:38:01', '2019-01-24 12:38:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
