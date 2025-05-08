-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2025 at 12:56 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_ID` varchar(20) NOT NULL,
  `User_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_ID`, `User_ID`) VALUES
('ADMIN001', 1);

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `Assignment_ID` varchar(20) NOT NULL,
  `Course_ID` varchar(20) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Deadline` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`Assignment_ID`, `Course_ID`, `Title`, `Deadline`) VALUES
('ASSG001', 'CS101', 'Hello World Program', '2023-09-15 23:59:59'),
('ASSG002', 'CS101', 'Calculator Application', '2023-10-01 23:59:59'),
('ASSG003', 'MATH101', 'Limit Problems', '2023-09-20 23:59:59');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `Course_ID` varchar(20) NOT NULL,
  `Department_ID` varchar(20) DEFAULT NULL,
  `Title` varchar(100) NOT NULL,
  `Credits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`Course_ID`, `Department_ID`, `Title`, `Credits`) VALUES
('CS101', 'DEPT001', 'Introduction to Programming', 3),
('CS102', 'DEPT001', 'Data Structures', 4),
('MATH101', 'DEPT002', 'Calculus I', 3);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `Department_ID` varchar(20) NOT NULL,
  `Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`Department_ID`, `Name`) VALUES
('DEPT001', 'Computer Science'),
('DEPT002', 'information systems'),
('DEPT003', 'AI');

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE `enrollment` (
  `Enrollment_ID` int(11) NOT NULL,
  `Student_ID` varchar(20) NOT NULL,
  `Course_ID` varchar(20) NOT NULL,
  `Enrollment_Date` date DEFAULT curdate(),
  `Status` varchar(20) DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`Enrollment_ID`, `Student_ID`, `Course_ID`, `Enrollment_Date`, `Status`) VALUES
(1, 'STU001', 'CS101', '2023-09-01', 'Active'),
(2, 'STU001', 'MATH101', '2023-09-01', 'Active'),
(3, 'STU002', 'CS101', '2023-09-01', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `evaluation`
--

CREATE TABLE `evaluation` (
  `Evaluation_ID` int(11) NOT NULL,
  `Course_ID` varchar(20) NOT NULL,
  `Evaluation_Date` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `evaluation`
--

INSERT INTO `evaluation` (`Evaluation_ID`, `Course_ID`, `Evaluation_Date`) VALUES
(1, 'CS101', '2023-12-15');

-- --------------------------------------------------------

--
-- Table structure for table `evaluation_answer`
--

CREATE TABLE `evaluation_answer` (
  `Answer_ID` int(11) NOT NULL,
  `Question_ID` int(11) NOT NULL,
  `Student_ID` varchar(20) NOT NULL,
  `Answer_Text` text NOT NULL,
  `Rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `evaluation_answer`
--

INSERT INTO `evaluation_answer` (`Answer_ID`, `Question_ID`, `Student_ID`, `Answer_Text`, `Rating`) VALUES
(1, 1, 'STU001', 'The content was well-structured and comprehensive.', 5),
(2, 2, 'STU001', 'The teaching methodology was effective.', 4),
(3, 3, 'STU001', 'Assignments were challenging but fair.', 4),
(4, 1, 'STU002', 'The content covered all essential topics.', 4),
(5, 2, 'STU002', 'The teaching methodology was good but could be improved.', 3),
(6, 3, 'STU002', 'Assignments were relevant to the course.', 4);

-- --------------------------------------------------------

--
-- Table structure for table `evaluation_question`
--

CREATE TABLE `evaluation_question` (
  `Question_ID` int(11) NOT NULL,
  `Evaluation_ID` int(11) NOT NULL,
  `Question_Text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `evaluation_question`
--

INSERT INTO `evaluation_question` (`Question_ID`, `Evaluation_ID`, `Question_Text`) VALUES
(1, 1, 'How would you rate the course content?'),
(2, 1, 'How effective was the teaching methodology?'),
(3, 1, 'How would you rate the assignments and quizzes?');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_member`
--

CREATE TABLE `faculty_member` (
  `User_ID` int(11) NOT NULL,
  `Salary` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty_member`
--

INSERT INTO `faculty_member` (`User_ID`, `Salary`) VALUES
(4, 65000),
(5, 70000),
(6, 40000);

-- --------------------------------------------------------

--
-- Table structure for table `fee`
--

CREATE TABLE `fee` (
  `Fee_ID` int(11) NOT NULL,
  `Amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fee`
--

INSERT INTO `fee` (`Fee_ID`, `Amount`) VALUES
(1, 1500),
(2, 2000);

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `Grade_ID` int(11) NOT NULL,
  `Student_ID` varchar(20) NOT NULL,
  `Course_ID` varchar(20) NOT NULL,
  `Grade_Value` float DEFAULT NULL,
  `Letter_Grade` varchar(2) DEFAULT NULL,
  `Is_Passed` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`Grade_ID`, `Student_ID`, `Course_ID`, `Grade_Value`, `Letter_Grade`, `Is_Passed`) VALUES
(1, 'STU001', 'CS101', 85, 'A', 1),
(2, 'STU002', 'CS101', 78, 'B', 1);

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE `material` (
  `Material_ID` int(11) NOT NULL,
  `Teacher_ID` varchar(20) NOT NULL,
  `Course_ID` varchar(20) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Content_Type` varchar(50) NOT NULL,
  `File_Path` varchar(255) NOT NULL,
  `Upload_Date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`Material_ID`, `Teacher_ID`, `Course_ID`, `Title`, `Content_Type`, `File_Path`, `Upload_Date`) VALUES
(1, 'TEACH001', 'CS101', 'Introduction to C++', 'PDF', '/materials/intro_cpp.pdf', '2025-05-08 13:30:32'),
(2, 'TEACH001', 'CS101', 'Programming Basics', 'PPT', '/materials/prog_basics.pptx', '2025-05-08 13:30:32'),
(3, 'TEACH002', 'MATH101', 'Limits and Derivatives', 'PDF', '/materials/limits.pdf', '2025-05-08 13:30:32');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `Question_ID` int(11) NOT NULL,
  `Quiz_ID` varchar(20) NOT NULL,
  `Question_Text` text NOT NULL,
  `Options` text DEFAULT NULL,
  `Correct_Answer` text NOT NULL,
  `Marks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`Question_ID`, `Quiz_ID`, `Question_Text`, `Options`, `Correct_Answer`, `Marks`) VALUES
(1, 'QUIZ001', 'What is the correct syntax for outputting \"Hello World\" in C++?', '{\"a\": \"System.out.println(\\\"Hello World\\\");\", \"b\": \"cout << \\\"Hello World\\\";\", \"c\": \"print(\\\"Hello World\\\")\", \"d\": \"Console.WriteLine(\\\"Hello World\\\")\"}', 'b', 5),
(2, 'QUIZ001', 'Which header file is required for input/output operations in C++?', '{\"a\": \"<stdio.h>\", \"b\": \"<iostream>\", \"c\": \"<input>\", \"d\": \"<stream>\"}', 'b', 5);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `Quiz_ID` varchar(20) NOT NULL,
  `Course_ID` varchar(20) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Total_Marks` int(11) NOT NULL,
  `Quiz_Type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`Quiz_ID`, `Course_ID`, `Title`, `Total_Marks`, `Quiz_Type`) VALUES
('QUIZ001', 'CS101', 'C++ Basics Quiz', 20, 'Multiple Choice'),
('QUIZ002', 'MATH101', 'Calculus Midterm', 50, 'Mixed');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_attempt`
--

CREATE TABLE `quiz_attempt` (
  `Attempt_ID` int(11) NOT NULL,
  `Quiz_ID` varchar(20) NOT NULL,
  `Student_ID` varchar(20) NOT NULL,
  `Attempt_Date` datetime DEFAULT current_timestamp(),
  `Score` float DEFAULT NULL,
  `Time_Taken` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz_attempt`
--

INSERT INTO `quiz_attempt` (`Attempt_ID`, `Quiz_ID`, `Student_ID`, `Attempt_Date`, `Score`, `Time_Taken`) VALUES
(1, 'QUIZ001', 'STU001', '2023-09-20 10:00:00', 18, 25),
(2, 'QUIZ001', 'STU002', '2023-09-20 10:00:00', 15, 30);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Student_ID` varchar(20) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `GPA` double DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Student_ID`, `User_ID`, `GPA`) VALUES
('STU001', 2, 3.8),
('STU002', 3, 3.5);

-- --------------------------------------------------------

--
-- Table structure for table `student_fee`
--

CREATE TABLE `student_fee` (
  `Student_ID` varchar(20) NOT NULL,
  `Fee_ID` int(11) NOT NULL,
  `Payment_Date` date DEFAULT NULL,
  `Is_Paid` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_fee`
--

INSERT INTO `student_fee` (`Student_ID`, `Fee_ID`, `Payment_Date`, `Is_Paid`) VALUES
('STU001', 1, '2023-08-15', 1),
('STU002', 1, '2023-08-20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `submission`
--

CREATE TABLE `submission` (
  `Submission_ID` int(11) NOT NULL,
  `Assignment_ID` varchar(20) NOT NULL,
  `Student_ID` varchar(20) NOT NULL,
  `Submission_Date` datetime DEFAULT current_timestamp(),
  `File_Path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `submission`
--

INSERT INTO `submission` (`Submission_ID`, `Assignment_ID`, `Student_ID`, `Submission_Date`, `File_Path`) VALUES
(1, 'ASSG001', 'STU001', '2023-09-14 20:30:00', '/submissions/stu001_hello.cpp'),
(2, 'ASSG001', 'STU002', '2023-09-13 15:45:00', '/submissions/stu002_hello.cpp');

-- --------------------------------------------------------

--
-- Table structure for table `ta`
--

CREATE TABLE `ta` (
  `TA_ID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ta`
--

INSERT INTO `ta` (`TA_ID`) VALUES
('TA001');

-- --------------------------------------------------------

--
-- Table structure for table `ta_course`
--

CREATE TABLE `ta_course` (
  `TA_ID` varchar(20) NOT NULL,
  `Course_ID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ta_course`
--

INSERT INTO `ta_course` (`TA_ID`, `Course_ID`) VALUES
('TA001', 'CS101');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `Teacher_ID` varchar(20) NOT NULL,
  `Department_ID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`Teacher_ID`, `Department_ID`) VALUES
('TEACH001', 'DEPT001'),
('TEACH002', 'DEPT002');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_course`
--

CREATE TABLE `teacher_course` (
  `Teacher_ID` varchar(20) NOT NULL,
  `Course_ID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher_course`
--

INSERT INTO `teacher_course` (`Teacher_ID`, `Course_ID`) VALUES
('TEACH001', 'CS101'),
('TEACH001', 'CS102'),
('TEACH002', 'MATH101');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `Name`, `Email`, `Password`) VALUES
(1, 'Admin User', 'admin@example.com', 'hashed_password'),
(2, 'John Smith', 'john.smith@example.com', 'hashed_password'),
(3, 'Jane Doe', 'jane.doe@example.com', 'hashed_password'),
(4, 'Teacher One', 'teacher1@example.com', 'hashed_password'),
(5, 'Teacher Two', 'teacher2@example.com', 'hashed_password'),
(6, 'TA One', 'ta1@example.com', 'hashed_password');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_ID`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`Assignment_ID`),
  ADD KEY `Course_ID` (`Course_ID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`Course_ID`),
  ADD KEY `Department_ID` (`Department_ID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Department_ID`);

--
-- Indexes for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD PRIMARY KEY (`Enrollment_ID`),
  ADD UNIQUE KEY `unique_enrollment` (`Student_ID`,`Course_ID`),
  ADD KEY `Course_ID` (`Course_ID`);

--
-- Indexes for table `evaluation`
--
ALTER TABLE `evaluation`
  ADD PRIMARY KEY (`Evaluation_ID`),
  ADD KEY `Course_ID` (`Course_ID`);

--
-- Indexes for table `evaluation_answer`
--
ALTER TABLE `evaluation_answer`
  ADD PRIMARY KEY (`Answer_ID`),
  ADD KEY `Question_ID` (`Question_ID`),
  ADD KEY `Student_ID` (`Student_ID`);

--
-- Indexes for table `evaluation_question`
--
ALTER TABLE `evaluation_question`
  ADD PRIMARY KEY (`Question_ID`),
  ADD KEY `Evaluation_ID` (`Evaluation_ID`);

--
-- Indexes for table `faculty_member`
--
ALTER TABLE `faculty_member`
  ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `fee`
--
ALTER TABLE `fee`
  ADD PRIMARY KEY (`Fee_ID`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`Grade_ID`),
  ADD UNIQUE KEY `unique_student_course` (`Student_ID`,`Course_ID`),
  ADD KEY `Course_ID` (`Course_ID`);

--
-- Indexes for table `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`Material_ID`),
  ADD KEY `Teacher_ID` (`Teacher_ID`),
  ADD KEY `Course_ID` (`Course_ID`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`Question_ID`),
  ADD KEY `Quiz_ID` (`Quiz_ID`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`Quiz_ID`),
  ADD KEY `Course_ID` (`Course_ID`);

--
-- Indexes for table `quiz_attempt`
--
ALTER TABLE `quiz_attempt`
  ADD PRIMARY KEY (`Attempt_ID`),
  ADD KEY `Quiz_ID` (`Quiz_ID`),
  ADD KEY `Student_ID` (`Student_ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Student_ID`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `student_fee`
--
ALTER TABLE `student_fee`
  ADD PRIMARY KEY (`Student_ID`,`Fee_ID`),
  ADD KEY `Fee_ID` (`Fee_ID`);

--
-- Indexes for table `submission`
--
ALTER TABLE `submission`
  ADD PRIMARY KEY (`Submission_ID`),
  ADD KEY `Assignment_ID` (`Assignment_ID`),
  ADD KEY `Student_ID` (`Student_ID`);

--
-- Indexes for table `ta`
--
ALTER TABLE `ta`
  ADD PRIMARY KEY (`TA_ID`),
  ADD KEY `TA_ID` (`TA_ID`);

--
-- Indexes for table `ta_course`
--
ALTER TABLE `ta_course`
  ADD PRIMARY KEY (`TA_ID`,`Course_ID`),
  ADD KEY `Course_ID` (`Course_ID`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`Teacher_ID`),
  ADD KEY `Department_ID` (`Department_ID`);

--
-- Indexes for table `teacher_course`
--
ALTER TABLE `teacher_course`
  ADD PRIMARY KEY (`Teacher_ID`,`Course_ID`),
  ADD KEY `Course_ID` (`Course_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `UC_Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `enrollment`
--
ALTER TABLE `enrollment`
  MODIFY `Enrollment_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `evaluation`
--
ALTER TABLE `evaluation`
  MODIFY `Evaluation_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `evaluation_answer`
--
ALTER TABLE `evaluation_answer`
  MODIFY `Answer_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `evaluation_question`
--
ALTER TABLE `evaluation_question`
  MODIFY `Question_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fee`
--
ALTER TABLE `fee`
  MODIFY `Fee_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `Grade_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `material`
--
ALTER TABLE `material`
  MODIFY `Material_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `Question_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `quiz_attempt`
--
ALTER TABLE `quiz_attempt`
  MODIFY `Attempt_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `submission`
--
ALTER TABLE `submission`
  MODIFY `Submission_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `assignment`
--
ALTER TABLE `assignment`
  ADD CONSTRAINT `assignment_ibfk_1` FOREIGN KEY (`Course_ID`) REFERENCES `course` (`Course_ID`);

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`Department_ID`) REFERENCES `department` (`Department_ID`);

--
-- Constraints for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD CONSTRAINT `enrollment_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`Student_ID`),
  ADD CONSTRAINT `enrollment_ibfk_2` FOREIGN KEY (`Course_ID`) REFERENCES `course` (`Course_ID`);

--
-- Constraints for table `evaluation`
--
ALTER TABLE `evaluation`
  ADD CONSTRAINT `evaluation_ibfk_1` FOREIGN KEY (`Course_ID`) REFERENCES `course` (`Course_ID`);

--
-- Constraints for table `evaluation_answer`
--
ALTER TABLE `evaluation_answer`
  ADD CONSTRAINT `evaluation_answer_ibfk_1` FOREIGN KEY (`Question_ID`) REFERENCES `evaluation_question` (`Question_ID`),
  ADD CONSTRAINT `evaluation_answer_ibfk_2` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`Student_ID`);

--
-- Constraints for table `evaluation_question`
--
ALTER TABLE `evaluation_question`
  ADD CONSTRAINT `evaluation_question_ibfk_1` FOREIGN KEY (`Evaluation_ID`) REFERENCES `evaluation` (`Evaluation_ID`);

--
-- Constraints for table `grades`
--
ALTER TABLE `grades`
  ADD CONSTRAINT `grades_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`Student_ID`),
  ADD CONSTRAINT `grades_ibfk_2` FOREIGN KEY (`Course_ID`) REFERENCES `course` (`Course_ID`);

--
-- Constraints for table `material`
--
ALTER TABLE `material`
  ADD CONSTRAINT `material_ibfk_1` FOREIGN KEY (`Teacher_ID`) REFERENCES `teacher` (`Teacher_ID`),
  ADD CONSTRAINT `material_ibfk_2` FOREIGN KEY (`Course_ID`) REFERENCES `course` (`Course_ID`);

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`Quiz_ID`) REFERENCES `quiz` (`Quiz_ID`) ON DELETE CASCADE;

--
-- Constraints for table `quiz`
--
ALTER TABLE `quiz`
  ADD CONSTRAINT `quiz_ibfk_1` FOREIGN KEY (`Course_ID`) REFERENCES `course` (`Course_ID`);

--
-- Constraints for table `quiz_attempt`
--
ALTER TABLE `quiz_attempt`
  ADD CONSTRAINT `quiz_attempt_ibfk_1` FOREIGN KEY (`Quiz_ID`) REFERENCES `quiz` (`Quiz_ID`),
  ADD CONSTRAINT `quiz_attempt_ibfk_2` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`Student_ID`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `student_fee`
--
ALTER TABLE `student_fee`
  ADD CONSTRAINT `student_fee_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`Student_ID`),
  ADD CONSTRAINT `student_fee_ibfk_2` FOREIGN KEY (`Fee_ID`) REFERENCES `fee` (`Fee_ID`);

--
-- Constraints for table `submission`
--
ALTER TABLE `submission`
  ADD CONSTRAINT `submission_ibfk_1` FOREIGN KEY (`Assignment_ID`) REFERENCES `assignment` (`Assignment_ID`),
  ADD CONSTRAINT `submission_ibfk_2` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`Student_ID`);

--
-- Constraints for table `ta_course`
--
ALTER TABLE `ta_course`
  ADD CONSTRAINT `ta_course_ibfk_1` FOREIGN KEY (`TA_ID`) REFERENCES `ta` (`TA_ID`),
  ADD CONSTRAINT `ta_course_ibfk_2` FOREIGN KEY (`Course_ID`) REFERENCES `course` (`Course_ID`);

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_ibfk_2` FOREIGN KEY (`Department_ID`) REFERENCES `department` (`Department_ID`);

--
-- Constraints for table `teacher_course`
--
ALTER TABLE `teacher_course`
  ADD CONSTRAINT `teacher_course_ibfk_1` FOREIGN KEY (`Teacher_ID`) REFERENCES `teacher` (`Teacher_ID`),
  ADD CONSTRAINT `teacher_course_ibfk_2` FOREIGN KEY (`Course_ID`) REFERENCES `course` (`Course_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
