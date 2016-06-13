# Questionnaire.

#### How to complete

Create a github repository and create a file for each question. Send us the URL to the repository when you are finished.

For example the first question's answer should be in the file question_1.rb

##### Ruby Knowledge

- (1) Create a hash of the character frequencies:

   input: `['a','a','b']`

   output: `{'a' => 2, 'b' => 1}`

- (2) Implement a class that prints to STDOUT the name of any class method called on it.

   Example:

   ```
   Foo.hello_world => "hello_world"
   Foo.hi => "hi"
   ```

- (3) Write a test or tests for this method however you prefer.

   ```
   def add(x, y)
     x + y
   end
   ```

- (4) Explain the difference between these two methods

   ```
   // Java
   public boolean isEmpty(String s) {
     return s.length() == 0;
   }

   # ruby
   def empty?(s)
     return s.size == 0
   end
   ```

##### PostgreSQL
Assume you have the following tables:

```
create table organizations (
  id uuid primary key default uuid_generate_v4() not null,
  name text not null
);

create table users (
  id uuid default uuid_generate_v4() not null,
  name text not null,
  age int,
  org_id uuid references organizations(id) not null,
  meta jsonb
);
```

the meta field on users has the following data:

```
{
  "joined": "2015-01-03T02:32:44",
  "comment": "prefers linux"
}
```

- (5) Write the following queries.
  - Give me the name and age of all employees.
  - Give me the name and organization of all employees.
  - Give me the oldest person at each organization.
  - Find the first person who joined each company.
  - Give me the name and comment of all employees.


Thanks for your time and good luck!