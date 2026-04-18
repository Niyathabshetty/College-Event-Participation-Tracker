# College Event Participation Tracker

## Problem Statement

Develop a SQL-based system to track student participation in college events and generate meaningful insights such as popular events and active participants.


## Features

* Store student details
* Store event details
* Track student participation
* Identify most popular event
* Find students with highest participation
* Generate event-wise participation count

---

## Technologies Used

* MySQL
* SQL (DDL, DML, Queries)
* Joins & Aggregate Functions

---

## Database Structure

### Students Table

* `student_id` → Student ID
* `name` → Student Name
* `department` → Department

### Events Table

* `event_id` → Event ID
* `event_name` → Event Name
* `event_date` → Event Date

### Participation Table

* `participation_id` → Unique ID
* `student_id` → Reference to Students
* `event_id` → Reference to Events

---

## How to Run

1. Open MySQL Workbench
2. Run the SQL script step by step:

   * Create database
   * Create tables
   * Insert data
   * Execute queries

---

## Output Screenshots
<div align="center">

<img src="screenshots/output1.png" width="400"/><br>
<b>Students Table</b>

<br><br>

<img src="screenshots/output2.png" width="400"/><br>
<b>Events Table</b>

<br><br>

<img src="screenshots/output3.png" width="400"/><br>
<b>Participation Table</b>

<br><br>

<img src="screenshots/output4.png" width="400"/><br>
<b>Most Popular Event</b>

<br><br>

<img src="screenshots/output5.png" width="400"/><br>
<b>Students with Highest Participation</b>

</div>
---
