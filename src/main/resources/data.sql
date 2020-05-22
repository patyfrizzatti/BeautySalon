INSERT INTO customer(name, email, phone, passwordc) VALUES('Patricia', 'patricia@gmail.com', '0824738941', '$2a$10$lgoLK.46Q7/mQoN6oIIvHuy8rJyVDDrnGRkw2j2Bkf2wfeZb4VlpC');
INSERT INTO customer(name, email, phone, passwordc) VALUES('Keith', 'keith@gmail.com', '0824738231', '$2a$10$wTAB0xIOTHPXssyGPzLug.knZCdLwpoM8UufRo.XvRLWeeTeVxDeK');

INSERT INTO profile(name) VALUES('ADMIN');
INSERT INTO profile(name) VALUES('USER');

INSERT INTO customer_profile(customer_id, profile_id) VALUES (1,2);
INSERT INTO customer_profile(customer_id, profile_id) VALUES (2,1);

INSERT INTO service(name, duration, price) VALUES('manicure', '01:00:00', 15.0);
INSERT INTO service(name, duration, price) VALUES('pedicure', '01:00:00', 18.0);
INSERT INTO service(name, duration, price) VALUES('makeup', '01:00:00', 20.0);
INSERT INTO service(name, duration, price) VALUES('coloring', '01:00:00', 40.0);
INSERT INTO service(name, duration, price) VALUES('haircut', '01:00:00', 30.0);
INSERT INTO service(name, duration, price) VALUES('highlights hair', '01:00:00', 30.0);

INSERT INTO professional(name, role) VALUES('Jhon', 'hair stylist');
INSERT INTO professional(name, role) VALUES('Mary', 'hair stylist');
INSERT INTO professional(name, role) VALUES('Jessy', 'manicure');
INSERT INTO professional(name, role) VALUES('Anesthesia', 'manicure');
INSERT INTO professional(name, role) VALUES('Orla', 'makeup artist');

INSERT INTO SERVICE_PROFESSIONAL(service_id, professional_id) VALUES(1,3);
INSERT INTO SERVICE_PROFESSIONAL(service_id, professional_id) VALUES(2,3);
INSERT INTO SERVICE_PROFESSIONAL(service_id, professional_id) VALUES(1,4);
INSERT INTO SERVICE_PROFESSIONAL(service_id, professional_id) VALUES(2,4);
INSERT INTO SERVICE_PROFESSIONAL(service_id, professional_id) VALUES(3,5);
INSERT INTO SERVICE_PROFESSIONAL(service_id, professional_id) VALUES(4,1);
INSERT INTO SERVICE_PROFESSIONAL(service_id, professional_id) VALUES(5,1);
INSERT INTO SERVICE_PROFESSIONAL(service_id, professional_id) VALUES(4,2);
INSERT INTO SERVICE_PROFESSIONAL(service_id, professional_id) VALUES(5,2);
INSERT INTO SERVICE_PROFESSIONAL(service_id, professional_id) VALUES(6,1);
INSERT INTO SERVICE_PROFESSIONAL(service_id, professional_id) VALUES(6,2);

INSERT INTO PRODUCT(name,price,quantity) VALUES('hair dye', 3.2, 3);
INSERT INTO PRODUCT(name,price,quantity) VALUES('hydrogen peroxide', 2.5, 2);

INSERT INTO SERVICE_PRODUCT(service_id, product_id) VALUES(4,1);--hair dye for coloring
INSERT INTO SERVICE_PRODUCT(service_id, product_id) VALUES(6,2);--hydrogen peroxide for highlights hair

