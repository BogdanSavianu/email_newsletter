-- Add salt to users
ALTER TABLE users ADD COLUMN salt TEXT NOT NULL;
