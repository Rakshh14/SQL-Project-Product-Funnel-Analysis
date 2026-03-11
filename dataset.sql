CREATE TABLE user_events (
    user_id INT,
    event_name VARCHAR(50),
    event_time TIMESTAMP
);

INSERT INTO user_events VALUES
(1,'visit','2025-01-01 10:00'),
(1,'signup','2025-01-01 10:05'),
(1,'verify_email','2025-01-01 10:10'),
(1,'purchase','2025-01-01 10:20'),

(2,'visit','2025-01-01 11:00'),
(2,'signup','2025-01-01 11:10'),

(3,'visit','2025-01-02 09:00'),

(4,'visit','2025-01-02 12:00'),
(4,'signup','2025-01-02 12:05'),
(4,'verify_email','2025-01-02 12:10');