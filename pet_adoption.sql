CREATE TABLE animals (
   animal_id SERIAL PRIMARY KEY,
   age INT,
   kennel INT,
   history VARCHAR(500),
   breed_id INT REFERENCES breed(breed_id)
);

CREATE TABLE breed (
   breed_id SERIAL PRIMARY KEY,
   breed_name VARCHAR(50),
   life_expectancy VARCHAR(20),
   special_care VARCHAR(200)
);

CREATE TABLE medications (
   medicatons_id SERIAL PRIMARY KEY,
   medications_name VARCHAR(50),
   purpose VARCHAR(200),
   side_effects VARCHAR(500)
);

CREATE TABLE animal_meds (
   animal_meds_id SERIAL PRIMARY KEY,
   animal_id INT REFERENCES animals(animal_id),
   medicatons_id INT REFERENCES medications(medicatons_id),
   dosage VARCHAR(20)
);