# SQL Injection Vulnerability in Stored Procedure

This repository demonstrates a common SQL injection vulnerability found in stored procedures that use string concatenation to construct SQL queries.  The vulnerable code is in `bug.sql`. The solution, which uses parameterized queries to prevent SQL injection, is in `bugSolution.sql`.

## Vulnerable Code

The `bug.sql` file contains a stored procedure that is vulnerable to SQL injection.  The procedure directly incorporates user-supplied input into the SQL query without proper sanitization, allowing attackers to manipulate the query's logic.

## Solution

The `bugSolution.sql` file shows how to mitigate the vulnerability by using parameterized queries. Parameterized queries separate the data from the SQL code, preventing attackers from injecting malicious code.