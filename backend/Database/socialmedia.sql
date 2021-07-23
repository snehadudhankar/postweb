-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2021 at 04:19 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `socialmedia`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_total_posts` int(11) NOT NULL,
  `total_posts_views` int(11) NOT NULL,
  `category_status` varchar(11) NOT NULL DEFAULT 'Published',
  `created_on` date NOT NULL,
  `created_by` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `category_total_posts`, `total_posts_views`, `category_status`, `created_on`, `created_by`) VALUES
(2, 'programming', 1, 0, 'Published', '0000-00-00', 'divya'),
(3, 'backend languges', 1, 0, 'Published', '0000-00-00', 'divya');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `com_id` int(11) NOT NULL,
  `com_post_id` int(11) NOT NULL,
  `com_detail` text NOT NULL,
  `com_user_id` int(11) NOT NULL,
  `com_user_name` varchar(255) NOT NULL,
  `com_date` varchar(255) NOT NULL,
  `com_status` varchar(255) NOT NULL DEFAULT 'unapproved',
  `comment_state` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`com_id`, `com_post_id`, `com_detail`, `com_user_id`, `com_user_name`, `com_date`, `com_status`, `comment_state`) VALUES
(2, 1, 'dddddddddd', 8, 'divya dudhankar', 'Mar 3, 2021 at 03:51 PM', 'approved', 1),
(3, 5, 'hello', 8, 'divya dudhankar', 'Apr 4, 2021 at 10:34 AM', 'approved', 1),
(4, 5, 'hjdhiduh', 8, 'divya dudhankar', 'Apr 4, 2021 at 03:32 PM', 'approved', 1),
(5, 5, 'hi i want more info', 8, 'divya dudhankar', 'Apr 4, 2021 at 03:39 PM', 'approved', 1),
(6, 5, 'hi i am sneha', 9, 'sneha dudhanakr', 'Apr 4, 2021 at 03:44 PM', 'approved', 1),
(7, 1, 'i am sneha', 8, 'divya dudhankar', 'Apr 4, 2021 at 03:54 PM', 'approved', 1),
(8, 1, 'helloooooo', 8, 'divya dudhankar', 'Apr 4, 2021 at 04:05 PM', 'approved', 1);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `ms_id` int(11) NOT NULL,
  `reply` varchar(255) NOT NULL,
  `ms_username` varchar(255) NOT NULL,
  `ms_useremail` varchar(255) NOT NULL,
  `ms_detail` text NOT NULL,
  `ms_date` varchar(255) NOT NULL,
  `ms_status` varchar(255) NOT NULL DEFAULT 'pending',
  `ms_state` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`ms_id`, `reply`, `ms_username`, `ms_useremail`, `ms_detail`, `ms_date`, `ms_status`, `ms_state`) VALUES
(1, 'huydgdue', 'divya dudhankar', 'divya@gmail.com', 'hello hgdyug yugugui', 'Apr 4, 2021 at 03:25 PM', 'Processed', 1),
(2, 'hi', 'divya dudhankar', 'divya@gmail.com', 'helpkpokpdkp', 'Apr 4, 2021 at 04:06 PM', 'Processed', 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_category_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_detail` text NOT NULL,
  `post_category` varchar(255) NOT NULL,
  `post_image` text NOT NULL,
  `post_date` date NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'Published',
  `post_author` varchar(255) NOT NULL,
  `post_views` int(11) NOT NULL DEFAULT 0,
  `post_comment_count` int(11) NOT NULL DEFAULT 0,
  `post_tags` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_category_id`, `post_id`, `post_title`, `post_detail`, `post_category`, `post_image`, `post_date`, `post_status`, `post_author`, `post_views`, `post_comment_count`, `post_tags`) VALUES
(2, 1, 'C++ Tutorial – Learn C++ Programming', 'C++ language is a direct descendant of C programming language with additional features such as type checking, object oriented programming, exception handling etc. You can call it a “better C”. It was developed by Bjarne Stroustrup.\r\nC++ is a general purpose language language, when I say general purpose it simply means that it is designed to be used for developing applications in a wide variety of domains.\r\n\r\n', 'Programming', 'cplus-plus-training-delhi.png', '2021-03-17', 'Published', 'sneha dudhnakar', 22, 1, 'sneha,programmer'),
(3, 5, 'Python', 'Python is an easy to learn, powerful programming language. It has efficient high-level data structures and a simple but effective approach to object-oriented programming. Python’s elegant syntax and dynamic typing, together with its interpreted nature, make it an ideal language for scripting and rapid application development in many areas on most platforms.', 'backend languges', '9b79d056.jpg', '2021-03-06', 'Published', 'divya dudhankar', 38, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `name`) VALUES
(1, 'Sneha Dudhankar');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_nickname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_photo` text NOT NULL,
  `registered_on` varchar(255) NOT NULL,
  `user_role` varchar(255) NOT NULL DEFAULT 'Subscriber'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_nickname`, `user_email`, `user_password`, `user_photo`, `registered_on`, `user_role`) VALUES
(8, 'divya dudhankar', 'divya', 'divya@gmail.com', '$2y$10$9PRJZhJxOY5qnuMYLjL2Q.ZUnykM5SYwMyzCAHDZKxbB7w9yusqee', 'default-logo.png', 'Mar 3, 2021 at 06:58 PM', 'admin'),
(9, 'sneha dudhanakr', 'sneha', 'sneha2017dudhankar@gmail.com', '$2y$10$jkYb9uVp7guV1expXFPZxud1VXDLlI7EGRF2f.Ayb2KkTaWMPx4kG', 'default-logo.png', 'Apr 4, 2021 at 07:43 PM', 'Subscriber');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`ms_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `ms_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
