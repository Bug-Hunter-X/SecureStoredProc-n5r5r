To prevent SQL injection, use parameterized queries or prepared statements.  Here's the corrected stored procedure:

```sql
CREATE PROCEDURE GetCustomerByName (@name VARCHAR(50))
AS
BEGIN
    SELECT * FROM Customers WHERE name = @name
END
```

This approach prevents SQL injection by treating @name as a parameter rather than embedding it directly into the SQL string. The database system handles the parameter safely, preventing malicious code from being executed.