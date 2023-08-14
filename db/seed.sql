USE business_db;
-- Names of each department.
INSERT INTO department (name)
VALUES
  ('Marketing'),
  ('Accounting'),
  ('Production'),
  ('Quality Control');
-- Values of the parameters for each role.
INSERT INTO role (title, salary, department_id)
VALUES ('Marketer', 50000, 1),
        ('Marketing Manager', 100000, 1),
        ('Accountant', 70000, 2),
        ('Account Manager', 120000, 2),
        ('Developer', 80000, 3),
        ('Development Manager', 160000, 3),
        ('Quality Control Specialist', 90000, 4),
        ('Quality Control Manager', 165000, 4);
-- A starter employee list that contains their name, role ID, and manager ID if they are a manager.
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Donald', 'Trump', 1, null),
        ('Obama', 'Care', 2, 1),
        ('Bill', 'Clinton', 3, null),
        ('Joe', 'Biden', 4, 3),
        ('Huey', 'Freeman', 5, null),
        ('Riley', 'Freeman', 6, 5),
        ('Bill', 'Nye', 7, null),
        ('John', 'Smith', 8, 7);