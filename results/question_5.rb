# (5) Write the following queries.
#     1. Give me the name and age of all employees.
#     2. Give me the name and organization of all employees.
#     3. Give me the oldest person at each organization.
#     4. Find the first person who joined each company.
#     5. Give me the name and comment of all employees.
#
=begin

5.1

    SELECT 'name', age FROM users;

5.2

    SELECT u.name, o.name
    FROM users AS u
      INNER JOIN organizations AS o ON u.org_id = o.id;

5.3

    SELECT o.name as org,
    (
      SELECT MAX(u.age)
      FROM users u
      WHERE u.org_id = o.id
    )
    FROM organizations o;

5.4

    In the question, it was asked for company and not organization.
    So the first user joined can be found as follow:

    SELECT * FROM users ORDER BY meta->'joined' LIMIT 1;

    But I guess company was meant to be organization. In this case the query would be:

    SELECT o.name,
    (
      SELECT u.name
      FROM users u
      WHERE u.org_id = o.id
      ORDER BY meta->'joined'
      LIMIT 1
    )
    FROM organizations o;

5.5

    SELECT u.name, u.meta->'comment'
    FROM users u;

=end
