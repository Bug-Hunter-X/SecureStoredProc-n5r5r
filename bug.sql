SQL injection vulnerability in stored procedure. The stored procedure uses string concatenation to construct SQL queries, making it susceptible to SQL injection attacks.  For example:

```sql
CREATE PROCEDURE GetCustomerByName (@name VARCHAR(50))
AS
BEGIN
    SELECT * FROM Customers WHERE name = @name
END
```

If an attacker provides a malicious input such as ' OR '1'='1', the query becomes:

```sql
SELECT * FROM Customers WHERE name = '' OR '1'='1'
```

This will return all rows from the Customers table.