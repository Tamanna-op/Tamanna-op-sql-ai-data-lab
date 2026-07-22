# Mission 1 – Exploring Data

##  Objective
Learn how to retrieve data from a table using:
- SELECT
- DISTINCT
- LIMIT

---

##  Key Learnings

### SELECT
Used to retrieve data from one or more columns in a table.
Example:

```sql
SELECT name FROM researchers;
```

---

### DISTINCT
Returns only unique values by removing duplicates.
Example:

```sql
SELECT DISTINCT team
FROM researchers;
```

---

### LIMIT
Restricts the number of rows returned.
Example:

```sql
SELECT *
FROM researchers
LIMIT 5;
```

---

##  Tips

- Use `SELECT *` only while exploring data.
- In production, select only the columns you actually need.
- `DISTINCT` is useful when exploring unfamiliar datasets.

---

##  Mistakes I Made

- Initially forgot how to return only a limited number of rows.
