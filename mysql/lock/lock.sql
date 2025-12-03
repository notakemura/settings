-- Check running transactions and lock information
SELECT * FROM performance_schema.data_locks;

-- Check transaction isolation level
SELECT @@transaction_isolation;
-- Check lock wait timeout
SHOW VARIABLES LIKE 'innodb_lock_wait_timeout';
-- Check deadlock detection
SHOW VARIABLES LIKE 'innodb_deadlock_detect';