
ALTER TABLE user_account
ADD status VARCHAR(20) DEFAULT 'ACTIVE';

UPDATE user_account
SET status = 'ACTIVE'
WHERE status IS NULL;
