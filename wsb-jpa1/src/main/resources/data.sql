-- Adresy
INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (1, 'Duszniki-Zdrój', 'Polna 7', 'Brak', '57-340');

INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (2, 'Duszniki-Zdrój', 'Krakowska 10', 'Brak', '57-340');

INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (3, 'Szczytna', 'Sienkiewicza 1', 'Brak', '57-330');

INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (4, 'Kłodzko', 'Szarego 4', 'Brak', '57-300');

INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (5, 'Szczytna', 'Szpitalna 1', 'Brak', '57-330');

INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (6, 'Polanica-Zdrój', 'Lipowa 6', 'Brak', '57-320');

INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (7, 'Polanica-Zdrój', 'aleja Wojska Polskiego 1', 'Brak', '57-320');

INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (8, 'Kudowa-Zdrój', 'Zdrojowy Inkubator Przedsiębiorrczości', 'Pogodna 12', '57-350');

INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (9, 'Bystrzyca Kłodzka', 'Henryka Sienkiewicza 8', 'Brak', '57-500');

INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (10, 'Ścinawka Dolna', 'Ścinawka Dolna 16', 'Brak', '57-409');

INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (11, 'Polanica-Zdrój', 'aleja Wojska Polskiego 1', 'Brak', '57-320');
INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (12, 'Kudowa-Zdrój', 'Słoneczna 13', 'Brak', '57-350');

INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (13, 'Bystrzyca Kłodzka', '1 Maja 5', 'Brak', '57-500');

INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (14, 'Kłodzko', 'Spółdzielcza 4', 'Brak', '57-300');

INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (15, 'Kłodzko', 'Rodzinna 49', 'Brak', '57-300');

-- Lekarze
INSERT INTO doctor (id, first_name, last_name, telephone_number, email, doctor_number, specialization, address_id) VALUES (1, 'Tracy', 'Pollard', '613 333 143', 'tpollard@galactic.com', 'DOC001', 'Ortopedia', 12);

INSERT INTO doctor (id, first_name, last_name, telephone_number, email, doctor_number, specialization, address_id) VALUES (2, 'Leonard', 'McCoy', '222 421 754', 'lmccoy@galactic.com', 'DOC002', 'Dermatologia', 8);

INSERT INTO doctor (id, first_name, last_name, telephone_number, email, doctor_number, specialization, address_id) VALUES (3, 'Beverly', 'Crusher', '215 553 754', 'jfijalek@gmail.com', 'DOC003', 'Ortopedia', 14);

INSERT INTO doctor (id, first_name, last_name, telephone_number, email, doctor_number, specialization, address_id) VALUES (4, 'Hugh', 'Hulbert', '263 666 123', 'hhulbert@galactic.com', 'DOC004', 'Pediatria', 11);

INSERT INTO doctor (id, first_name, last_name, telephone_number, email, doctor_number, specialization, address_id) VALUES (5, 'Emil', 'Rios', '515 105 751', 'erios@galactic.com', 'DOC005', 'Dermatologia', 7);

INSERT INTO doctor (id, first_name, last_name, telephone_number, email, doctor_number, specialization, address_id) VALUES (6, 'Katherine', 'Pulaski', '124 745 874', 'kpulaski@galactic.com', 'DOC006', 'Kardiologia', 1);

INSERT INTO doctor (id, first_name, last_name, telephone_number, email, doctor_number, specialization, address_id) VALUES (7, 'Karin', 'Chakwas', '123897654', 'kchakwas@alliance.com', 'DOC007', 'Ortopedia', 3);

INSERT INTO doctor (id, first_name, last_name, telephone_number, email, doctor_number, specialization, address_id) VALUES (8, 'Mordin', 'Solus', '741 245 122', 'msolus@omega.com', 'DOC008', 'Kardiologia', 13);

INSERT INTO doctor (id, first_name, last_name, telephone_number, email, doctor_number, specialization, address_id) VALUES (9, 'Thomas', 'Elliot', '633 141 111', 'telliot@gotham.com', 'DOC009', 'Dermatologia', 15);

INSERT INTO doctor (id, first_name, last_name, telephone_number, email, doctor_number, specialization, address_id) VALUES (10, 'Sherman', 'Cottle', '643 331 111', 'scottle@battlestar.com', 'DOC010', 'Dermatologia', 2);

-- Pacjenci
INSERT INTO patient (id, first_name, last_name, telephone_number, email, patient_number, date_of_birth, address_id, is_allergic) VALUES (1, 'Jean-Luc', 'Picard', '764 394 364', 'jlpicard@galactic.com', 'PAT001', '1996-05-12', 4, true);

INSERT INTO patient (id, first_name, last_name, telephone_number, email, patient_number, date_of_birth, address_id, is_allergic) VALUES (2, 'Johnny', 'Rico', '32 569 75 88', 'jrico@fednet.com', 'PAT002', '1989-06-07', 6, true);

INSERT INTO patient (id, first_name, last_name, telephone_number, email, patient_number, date_of_birth, address_id, is_allergic) VALUES (3, 'Garrus', 'Vakarian', '533 173 334', 'gvakarian@csoc-mail.com', 'PAT003', '1970-05-22', 5, true);

INSERT INTO patient (id, first_name, last_name, telephone_number, email, patient_number, date_of_birth, address_id, is_allergic) VALUES (4, 'John', 'Shepard', '643 111 652', 'jshepard@alliance.com', 'PAT004', '1973-09-15', 10, false);

INSERT INTO patient (id, first_name, last_name, telephone_number, email, patient_number, date_of_birth, address_id, is_allergic) VALUES (5, 'Miranda', 'Lawson', '121 663 215', 'mlawson@cerberus.com', 'PAT005', '1975-01-28', 9, false);

-- Wizyty
INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (1, 'Wizyta_1', '2024-11-15 21:29:31', 7, 2);

INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (2, 'Wizyta_2', '2024-10-19 21:29:31', 6, 1);

INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (3, 'Wizyta_3', '2024-09-27 21:29:31', 3, 2);

INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (4, 'Wizyta_4', '2024-10-23 21:29:31', 10, 3);

INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (5, 'Wizyta_5', '2024-08-31 21:29:31', 7, 4);

INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (6, 'Wizyta_6', '2024-10-07 21:29:31', 2, 5);

INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (7, 'Wizyta_7', '2024-11-06 21:29:31', 6, 5);

INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (8, 'Wizyta_8', '2024-08-28 21:29:31', 2, 4);

INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (9, 'Wizyta_9', '2024-11-18 21:29:31', 4, 3);

INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (10, 'Wizyta_10', '2024-08-25 21:29:31', 1, 5);

INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (11, 'Wizyta_11', '2024-09-02 21:29:31', 5, 4);

INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (12, 'Wizyta_12', '2024-09-29 21:29:31', 6, 3);

INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (13, 'Wizyta_13', '2024-09-08 21:29:31', 3, 2);

INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (14, 'Wizyta_14', '2024-10-12 21:29:31', 10, 1);

INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (15, 'Wizyta_15', '2024-09-23 21:29:31', 8, 4);

-- MedicalTreatments
INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (1, 'Cesarskie cięcie', 'Operacja', 9);

INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (2, 'Konsultacja', 'Konsultacja', 3);

INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (3, 'Przepisanie maści', 'Diagnoza', 4);

INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (4, 'Bypass', 'Operacja', 15);

INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (5, 'Nie wiem co tu wpisać', 'Konsultacja', 14);

INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (6, 'Placeholder', 'Terapia', 7);

INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (7, 'Jak dane testowe to testowe', 'Operacja', 9);

INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (8, 'Kończą mi się pomysły', 'Diagnoza', 4);

INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (9, 'Caramba Cabron', 'Operacja', 5);

INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (10, '¯\_(ツ)_/¯', 'Diagnoza', 1);

INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (11, 'Nie naprawdę kończą mi się pomysły', 'Diagnoza', 2);

INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (12, '(╯°□°)╯︵ ┻━┻', 'Operacja', 13);

INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (13, '┬─┬ノ( º _ ºノ)', 'Diagnoza', 5);

INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (14, 'Eh...', 'Konsultacja', 8);

INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (15, 'Diagnoza wysypki', 'Diagnoza', 4);
