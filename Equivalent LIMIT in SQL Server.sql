;WITH Results_CTE AS
(
    SELECT
        Col1, Col2, ...,
        ROW_NUMBER() OVER (ORDER BY SortCol1, SortCol2, ...) AS RowNum
    FROM Table
    WHERE <whatever>
)
SELECT *
FROM Results_CTE
WHERE RowNum >= @Offset
AND RowNum < @Offset + @Limit