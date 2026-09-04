# Mission 6 – HAVING

## 🎯 Objective
Learn to filter groups after aggregation using `HAVING`.

## 🧠 Key Learnings

- `WHERE` filters individual rows.
- `GROUP BY` creates groups.
- Aggregate functions calculate values for each group.
- `HAVING` filters groups based on aggregate results.
- `ORDER BY` can sort grouped results.

## 💡 Tip
- Think: `WHERE` → rows, `HAVING` → groups.
- You could also sort using the output alias:
    ORDER BY "Number of researchers" DESC;
  instead of :
    ORDER BY COUNT(*) DESC;

## ⚠️ Common Mistake
Don't use `WHERE` to filter aggregate results such as `COUNT()`, `AVG()`, or `SUM()`.

## ✅ Mission Status
Completed