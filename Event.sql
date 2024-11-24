-- View all data from the tables
SELECT * FROM emp_data;
SELECT * FROM menu_details;
SELECT * FROM pick_up_details;

-- Add NOT NULL constraint to ensure food preferences are mandatory
ALTER TABLE menu_details
MODIFY veg VARCHAR(29) NOT NULL;
ALTER TABLE menu_details
MODIFY non_veg VARCHAR(29) NOT NULL;

-- Select employees who have opted for vegetarian food preferences
SELECT emp_data.emp_id, 
       CONCAT(emp_data.first_name, ' ', emp_data.last_name) AS full_name,
       menu_details.veg
FROM emp_data
INNER JOIN menu_details
ON emp_data.emp_id = menu_details.emp_id
WHERE menu_details.veg = 'yes';

-- Count how many employees agreed for a pickup, grouped by employee ID and address
SELECT emp_data.emp_id, 
       CONCAT(emp_data.first_name, ' ', emp_data.last_name) AS full_name,
       pick_up_details.address,
       COUNT(pick_up_details.pick_up) AS Agreed
FROM emp_data
INNER JOIN pick_up_details
ON emp_data.emp_id = pick_up_details.emp_id
WHERE pick_up_details.pick_up = 'yes'
GROUP BY emp_data.emp_id, pick_up_details.address;

-- Update an employee's phone number
UPDATE emp_data
SET phone_number = '+917406464247'
WHERE phone_number = '+917406464244';