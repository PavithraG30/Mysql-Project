# Employee Preferences MySQL Project

## Overview
This is my first database project designed to practice MySQL skills and demonstrate database management concepts. The project includes three tables:
1. **Employee Data** (`emp_data`): Stores basic employee information such as ID, name, and phone number.
2. **Menu Details** (`menu_details`): Records employees' food preferences (e.g., vegetarian or non-vegetarian).
3. **Pickup Details** (`pick_up_details`): Tracks employee pickup preferences and associated addresses.

## Features
- **View Data**: Retrieve all data from the three tables.
- **Data Integrity**: Use constraints like `NOT NULL` to ensure data quality.
- **Join Queries**: Combine data from multiple tables to answer practical questions, such as:
  - Which employees prefer vegetarian food?
  - How many employees agreed for pickups?
- **Update Records**: Modify existing employee information (e.g., updating phone numbers).

## Queries Used
- Retrieve all rows from tables.
- Add constraints to columns.
- Use `INNER JOIN` to connect tables based on relationships.
- Use `COUNT` and `GROUP BY` to analyze data.
- Update specific fields in a table.

## Table Descriptions
- **`emp_data`**:
  - `emp_id`: Employee ID (Primary Key)
  - `first_name`: Employee's first name
  - `last_name`: Employee's last name
  - `phone_number`: Contact number

- **`menu_details`**:
  - `emp_id`: Employee ID (Foreign Key from `emp_data`)
  - `veg`: Vegetarian preference (`yes` or `no`)
  - `non_veg`: Non-vegetarian preference (`yes` or `no`)

- **`pick_up_details`**:
  - `emp_id`: Employee ID (Foreign Key from `emp_data`)
  - `pick_up`: Pickup preference (`yes` or `no`)
  - `address`: Address for pickup

## Learning Outcomes
This project helped me understand:
- How to design a simple relational database.
- The use of constraints like `NOT NULL` for data validation.
- Writing queries to filter, join, and analyze data effectively.
- The importance of clean and readable SQL code.

## How to Use
1. Clone this repository to your local machine.
2. Import the SQL file (`events.sql`) into your MySQL database.
3. Execute the provided queries to explore the dataset and results.

## What's Next?
As I continue learning MySQL, I plan to:
- Add more complex queries (e.g., using `LEFT JOIN` or `SUBQUERIES`).
- Normalize the database further.
- Expand this project with more real-world scenarios.
