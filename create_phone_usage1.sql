
-- Create Database
CREATE DATABASE IF NOT EXISTS phone_tracker;
USE phone_tracker;

-- Create Table
CREATE TABLE IF NOT EXISTS phone_usage (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usage_date DATE NOT NULL,
    app_name VARCHAR(100) NOT NULL,
    usage_minutes INT NOT NULL,
    category VARCHAR(50) NOT NULL
);

-- Sample Data (50+ entries)
INSERT INTO phone_usage (usage_date, app_name, usage_minutes, category) VALUES
('2025-06-15', 'YouTube', 90, 'Entertainment'),
('2025-06-15', 'WhatsApp', 40, 'Social'),
('2025-06-15', 'Chrome', 60, 'Productivity'),
('2025-06-15', 'Instagram', 35, 'Social'),
('2025-06-15', 'Gmail', 25, 'Productivity'),
('2025-06-15', 'Spotify', 50, 'Entertainment'),
('2025-06-15', 'Facebook', 45, 'Social'),
('2025-06-15', 'Slack', 20, 'Work'),
('2025-06-15', 'Google Calendar', 15, 'Productivity'),
('2025-06-15', 'Zoom', 55, 'Work'),
('2025-06-16', 'YouTube', 95, 'Entertainment'),
('2025-06-16', 'WhatsApp', 38, 'Social'),
('2025-06-16', 'Chrome', 70, 'Productivity'),
('2025-06-16', 'Instagram', 30, 'Social'),
('2025-06-16', 'Gmail', 20, 'Productivity'),
('2025-06-16', 'Spotify', 60, 'Entertainment'),
('2025-06-16', 'Facebook', 42, 'Social'),
('2025-06-16', 'Slack', 22, 'Work'),
('2025-06-16', 'Google Calendar', 10, 'Productivity'),
('2025-06-16', 'Zoom', 40, 'Work'),
('2025-06-17', 'YouTube', 100, 'Entertainment'),
('2025-06-17', 'WhatsApp', 50, 'Social'),
('2025-06-17', 'Chrome', 55, 'Productivity'),
('2025-06-17', 'Instagram', 32, 'Social'),
('2025-06-17', 'Gmail', 18, 'Productivity'),
('2025-06-17', 'Spotify', 70, 'Entertainment'),
('2025-06-17', 'Facebook', 38, 'Social'),
('2025-06-17', 'Slack', 30, 'Work'),
('2025-06-17', 'Google Calendar', 12, 'Productivity'),
('2025-06-17', 'Zoom', 65, 'Work'),
('2025-06-18', 'YouTube', 85, 'Entertainment'),
('2025-06-18', 'WhatsApp', 45, 'Social'),
('2025-06-18', 'Chrome', 58, 'Productivity'),
('2025-06-18', 'Instagram', 29, 'Social'),
('2025-06-18', 'Gmail', 22, 'Productivity'),
('2025-06-18', 'Spotify', 80, 'Entertainment'),
('2025-06-18', 'Facebook', 34, 'Social'),
('2025-06-18', 'Slack', 25, 'Work'),
('2025-06-18', 'Google Calendar', 11, 'Productivity'),
('2025-06-18', 'Zoom', 48, 'Work'),
('2025-06-19', 'YouTube', 92, 'Entertainment'),
('2025-06-19', 'WhatsApp', 47, 'Social'),
('2025-06-19', 'Chrome', 62, 'Productivity'),
('2025-06-19', 'Instagram', 27, 'Social'),
('2025-06-19', 'Gmail', 19, 'Productivity'),
('2025-06-19', 'Spotify', 76, 'Entertainment'),
('2025-06-19', 'Facebook', 33, 'Social'),
('2025-06-19', 'Slack', 29, 'Work'),
('2025-06-19', 'Google Calendar', 14, 'Productivity'),
('2025-06-19', 'Zoom', 51, 'Work');
