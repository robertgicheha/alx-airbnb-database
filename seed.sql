-- USERS
INSERT INTO users (full_name, email, phone, password_hash)
VALUES
('John Doe', 'john@example.com', '0712345678', 'hashedPassword123'),
('Mary Jane', 'mary@example.com', '0722334455', 'hashedPasswordABC');

-- PROPERTIES
INSERT INTO properties (owner_id, title, description, location, price_per_night, max_guests)
VALUES
(1, 'Sunny Beach House', 'A beautiful beachfront property.', 'Mombasa, Kenya', 120.00, 6),
(2, 'Executive Nairobi Loft', 'Modern loft apartment in Nairobi CBD.', 'Nairobi, Kenya', 85.50, 3);

-- PROPERTY IMAGES
INSERT INTO property_images (property_id, image_url)
VALUES
(1, 'https://img.com/beach1.jpg'),
(1, 'https://img.com/beach2.jpg'),
(2, 'https://img.com/loft1.jpg');

-- BOOKINGS
INSERT INTO bookings (property_id, user_id, check_in, check_out, status)
VALUES
(1, 2, '2025-01-10', '2025-01-15', 'confirmed'),
(2, 1, '2025-02-01', '2025-02-05', 'pending');

-- PAYMENTS
INSERT INTO payments (booking_id, amount, method, status)
VALUES
(1, 600.00, 'mpesa', 'paid'),
(2, 342.00, 'card', 'pending');

-- REVIEWS
INSERT INTO reviews (property_id, user_id, rating, comment)
VALUES
(1, 2, 5, 'Amazing experience, highly recommended!'),
(2, 1, 4, 'Great location and clean, but a bit noisy.');
