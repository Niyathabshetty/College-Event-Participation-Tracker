CREATE DATABASE CollegeEvents;

USE CollegeEvents;

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50)
);

CREATE TABLE Events (
    event_id INT PRIMARY KEY,
    event_name VARCHAR(50),
    event_date DATE
);

CREATE TABLE Participation (
    participation_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    event_id INT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (event_id) REFERENCES Events(event_id)
);

INSERT INTO Students VALUES
(1, 'Aman', 'CS'),
(2, 'Riya', 'IT'),
(3, 'Kiran', 'ECE');

INSERT INTO Events VALUES
(1, 'Hackathon', '2026-04-01'),
(2, 'Cultural Fest', '2026-04-05'),
(3, 'Sports Day', '2026-04-10');

INSERT INTO Participation (student_id, event_id) VALUES
(1,1), (1,2),
(2,1), (2,3),
(3,2), (3,3), (3,1);

SELECT * FROM Students;
SELECT * FROM Events;
SELECT * FROM Participation;

# Most Popular Event

SELECT e.event_name, COUNT(p.participation_id) AS total_participants
FROM Events e
JOIN Participation p ON e.event_id = p.event_id
GROUP BY e.event_id
ORDER BY total_participants DESC
LIMIT 1;

# Students with Highest Participation

SELECT s.name, COUNT(p.participation_id) AS total_events
FROM Students s
JOIN Participation p ON s.student_id = p.student_id
GROUP BY s.student_id
ORDER BY total_events DESC;

# Event-wise Participation Count

SELECT e.event_name, COUNT(p.participation_id) AS participants
FROM Events e
LEFT JOIN Participation p ON e.event_id = p.event_id
GROUP BY e.event_id;