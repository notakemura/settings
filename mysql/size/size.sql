-- Data_free 空き容量 の確認=どの程度断片化しているか（OPTIMISE TABLEが必要か）
SHOW TABLE STATUS LIKE '%_table_name';

-- テーブルごと 容量
SELECT
    table_name AS `Table`,
    ROUND(((data_length + index_length) / 1024 / 1024), 2) AS `Total Size (MB)`,
    ROUND((data_length / 1024 / 1024), 2) AS `Data Size (MB)`,
    ROUND((index_length / 1024 / 1024), 2) AS `Index Size (MB)`,
    table_rows AS `Rows`
FROM
    information_schema.TABLES
WHERE
    table_name = 'table_name';