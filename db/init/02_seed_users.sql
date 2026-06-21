DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id          SERIAL PRIMARY KEY,
    first_name  VARCHAR(50)  NOT NULL,
    last_name   VARCHAR(50)  NOT NULL,
    email       VARCHAR(120) NOT NULL UNIQUE,
    phone       VARCHAR(30),
    city        VARCHAR(80),
    country     VARCHAR(80),
    is_active   BOOLEAN      NOT NULL DEFAULT TRUE,
    created_at  TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at  TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Insert 25 sample records
INSERT INTO users (first_name, last_name, email, phone, city, country, is_active) VALUES
    ('Olivia',   'Martin',     'olivia.martin@example.com',     '+1-202-555-0101', 'New York',      'USA',         TRUE),
    ('Liam',     'Anderson',   'liam.anderson@example.com',     '+1-415-555-0142', 'San Francisco', 'USA',         TRUE),
    ('Emma',     'Johnson',    'emma.johnson@example.com',      '+44-20-7946-0011','London',        'UK',          TRUE),
    ('Noah',     'Williams',   'noah.williams@example.com',     '+44-161-555-0173','Manchester',    'UK',          FALSE),
    ('Ava',      'Brown',      'ava.brown@example.com',         '+34-91-555-0123', 'Madrid',        'Spain',       TRUE),
    ('Mateo',    'Garcia',     'mateo.garcia@example.com',      '+34-93-555-0188', 'Barcelona',     'Spain',       TRUE),
    ('Sofia',    'Rodriguez',  'sofia.rodriguez@example.com',   '+52-55-5555-0144','Mexico City',   'Mexico',      TRUE),
    ('Lucas',    'Hernandez',  'lucas.hernandez@example.com',   '+52-33-5555-0177','Guadalajara',   'Mexico',      TRUE),
    ('Mia',      'Lopez',      'mia.lopez@example.com',         '+54-11-4555-0199','Buenos Aires',  'Argentina',   TRUE),
    ('Ethan',    'Gonzalez',   'ethan.gonzalez@example.com',    '+54-351-555-0156','Cordoba',       'Argentina',   FALSE),
    ('Isabella', 'Perez',      'isabella.perez@example.com',    '+56-2-2555-0134', 'Santiago',      'Chile',       TRUE),
    ('Aiden',    'Sanchez',    'aiden.sanchez@example.com',     '+57-1-555-0167',  'Bogota',        'Colombia',    TRUE),
    ('Charlotte','Ramirez',    'charlotte.ramirez@example.com', '+55-11-5555-0145','Sao Paulo',     'Brazil',      TRUE),
    ('Mason',    'Torres',     'mason.torres@example.com',      '+55-21-5555-0166','Rio de Janeiro','Brazil',      TRUE),
    ('Amelia',   'Flores',     'amelia.flores@example.com',     '+33-1-4555-0189', 'Paris',         'France',      TRUE),
    ('Logan',    'Rivera',     'logan.rivera@example.com',      '+33-4-9155-0177', 'Marseille',     'France',      TRUE),
    ('Harper',   'Gomez',      'harper.gomez@example.com',      '+49-30-555-0123', 'Berlin',        'Germany',     TRUE),
    ('Elijah',   'Diaz',       'elijah.diaz@example.com',       '+49-89-555-0188', 'Munich',        'Germany',     FALSE),
    ('Evelyn',   'Reyes',      'evelyn.reyes@example.com',      '+39-06-555-0145', 'Rome',          'Italy',       TRUE),
    ('James',    'Morales',    'james.morales@example.com',     '+39-02-555-0167', 'Milan',         'Italy',       TRUE),
    ('Abigail',  'Cruz',       'abigail.cruz@example.com',      '+81-3-5555-0123', 'Tokyo',         'Japan',       TRUE),
    ('Benjamin', 'Ortiz',      'benjamin.ortiz@example.com',    '+81-6-5555-0144', 'Osaka',         'Japan',       TRUE),
    ('Emily',    'Gutierrez',  'emily.gutierrez@example.com',   '+61-2-5555-0166', 'Sydney',        'Australia',   TRUE),
    ('Henry',    'Chavez',     'henry.chavez@example.com',      '+61-3-5555-0188', 'Melbourne',     'Australia',   TRUE),
    ('Elizabeth','Ramos',      'elizabeth.ramos@example.com',   '+1-416-555-0199', 'Toronto',       'Canada',      TRUE);

-- Quick sanity check
SELECT COUNT(*) AS total_users FROM users;
