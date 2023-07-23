### Conceptual Exercise

Answer the following questions below:

- What is PostgreSQL?

PostgreSQL is an open-source, powerful, and advanced relational database management system (RDBMS). It is known for its robustness, extensibility, and adherence to SQL standards. PostgreSQL is commonly used for managing and storing structured data, and it offers support for various data types, advanced indexing, and powerful querying capabilities.

- What is the difference between SQL and PostgreSQL?
SQL (Structured Query Language) is a standard language used to communicate with and manipulate databases. It provides a standardized syntax for querying, updating, and managing relational databases. PostgreSQL, on the other hand, is a specific implementation of a database management system that supports SQL. PostgreSQL is one of several database systems that implement the SQL language.

- In `psql`, how do you connect to a database?

psql
\c db_name


- What is the difference between `HAVING` and `WHERE`?
In SQL, both HAVING and WHERE clauses are used to filter data, but they are used in different contexts. WHERE: is used with the SELECT, UPDATE, DELETE, and INSERT statements to filter rows before any grouping or aggregation takes place. It applies filters to individual rows based on specific conditions.

HAVING: is used with the SELECT statement, specifically with GROUP BY, to filter groups of rows resulting from the grouping operation. It is used for filtering the results of aggregation functions like COUNT, SUM, AVG, etc., after the grouping has been done.

- What is the difference between an `INNER` and `OUTER` join?

In SQL, joins are used to combine data from two or more tables based on a related column between them. The main difference between INNER and OUTER joins lies in the treatment of non-matching rows:
INNER JOIN: An INNER JOIN returns only the rows where there is a match between the columns in both tables. Rows from one table that do not have a corresponding match in the other table are excluded from the result set.

OUTER JOIN: An OUTER JOIN, also known as a LEFT JOIN, RIGHT JOIN, or FULL JOIN, returns all the rows from one table and the matching rows from the other table. If there is no match for a row in one table, the result set will still include that row, but with NULL values for columns from the other table.

- What is the difference between a `LEFT OUTER` and `RIGHT OUTER` join?

The difference between a LEFT OUTER JOIN and a RIGHT OUTER JOIN lies in which table's data is preserved in the result set:
LEFT OUTER JOIN: A LEFT OUTER JOIN returns all the rows from the left (first) table and the matching rows from the right (second) table. If there is no match for a row in the right table, the result set will contain NULL values for the columns from the right table.

RIGHT OUTER JOIN: A RIGHT OUTER JOIN returns all the rows from the right (second) table and the matching rows from the left (first) table. If there is no match for a row in the left table, the result set will contain NULL values for the columns from the left table.

- What is an ORM? What do they do?

ORM stands for Object-Relational Mapping. It is a programming technique used to interact with relational databases using an object-oriented paradigm. ORM libraries provide a high-level abstraction that allows developers to work with database entities as if they were ordinary Python (or other programming language) objects. ORMs handle the mapping of objects to database tables, and vice versa, relieving developers from writing low-level SQL queries.
ORMs facilitate tasks like creating, updating, deleting, and querying database records using object-oriented syntax, making database operations more intuitive and less error-prone.

- What are some differences between making HTTP requests using AJAX 
  and from the server side using a library like `requests`?

AJAX (Asynchronous JavaScript and XML) is a client-side technology used to make asynchronous HTTP requests from the browser to the server without requiring a page refresh. It allows web pages to update parts of the content without reloading the entire page. On the other hand, requests is a Python library used for making HTTP requests from the server-side.

AJAX requests are initiated and processed on the client-side using JavaScript, while requests library sends HTTP requests from the server-side Python code.

AJAX is commonly used in web applications to improve user experience by fetching data in the background and updating parts of the page dynamically. requests is used on the server-side for tasks like interacting with external APIs, fetching data for rendering templates, or performing backend tasks.

AJAX allows you to interact with APIs and web services directly from the client-side, without the need for a server-side intermediary. On the other hand, requests is used within the server-side application to interact with external services or APIs on behalf of the user.



- What is CSRF? What is the purpose of the CSRF token?

CSRF (Cross-Site Request Forgery) is a type of security vulnerability where an attacker tricks a user's browser into making a request to a website on which the user is authenticated. The attack occurs when a user visits a malicious website or clicks on a malicious link that makes unauthorized requests to another website where the user is logged in.


- What is the purpose of `form.hidden_tag()`?
In web development, form.hidden_tag() is a function provided by some web frameworks (e.g., Flask in Python) that generates a hidden input field within an HTML form. The hidden input field contains a CSRF token or any other value that the server needs to associate with the form submission.