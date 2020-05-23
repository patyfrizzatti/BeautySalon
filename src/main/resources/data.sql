INSERT INTO customer(name, email, phone, passwordc) VALUES('Patricia', 'patricia@gmail.com', '0824738941', '$2a$10$lgoLK.46Q7/mQoN6oIIvHuy8rJyVDDrnGRkw2j2Bkf2wfeZb4VlpC');
INSERT INTO customer(name, email, phone, passwordc) VALUES('Keith', 'keith@gmail.com', '0824738231', '$2a$10$wTAB0xIOTHPXssyGPzLug.knZCdLwpoM8UufRo.XvRLWeeTeVxDeK');

INSERT INTO profile(name) VALUES('ADMIN');
INSERT INTO profile(name) VALUES('USER');

INSERT INTO customer_profile(customer_id, profile_id) VALUES (1,2);
INSERT INTO customer_profile(customer_id, profile_id) VALUES (2,1);

INSERT INTO service(name, duration, price) VALUES('Manicure', '01:00:00', 15.0);--1
INSERT INTO service(name, duration, price) VALUES('Pedicure', '01:00:00', 20.0);--2
INSERT INTO service(name, duration, price) VALUES('Make-up', '01:00:00', 50.0);--3
INSERT INTO service(name, duration, price) VALUES('Color', '01:00:00', 90.0);--4
INSERT INTO service(name, duration, price) VALUES('Haircut', '01:00:00', 45.0);--5
INSERT INTO service(name, duration, price) VALUES('Highlights', '01:00:00', 150.0);--6
INSERT INTO service(name, duration, price) VALUES('Facial Cleanser', '01:00:00', 50.0);--7
INSERT INTO service(name, duration, price) VALUES('Massage Treatment', '01:00:00', 50.0);--8

INSERT INTO professional(name, role) VALUES('Jhon', 'Hair Stylist');--1
INSERT INTO professional(name, role) VALUES('Mary', 'Hair Stylist');--2
INSERT INTO professional(name, role) VALUES('Jessy', 'Nails Technician');--3
INSERT INTO professional(name, role) VALUES('Kelly', 'Nails Technician');--4
INSERT INTO professional(name, role) VALUES('Orla', 'Makeup Artist');--5

INSERT INTO professional(name, role) VALUES('Gaby', 'Hair Stylist');--6
INSERT INTO professional(name, role) VALUES('Peter', 'Hair Stylist');--7
INSERT INTO professional(name, role) VALUES('Bia', 'Nails Technician');--8
INSERT INTO professional(name, role) VALUES('Dani', 'Beautician');--9

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

INSERT INTO SERVICE_PROFESSIONAL(service_id, professional_id) VALUES(4,6);
INSERT INTO SERVICE_PROFESSIONAL(service_id, professional_id) VALUES(5,6);
INSERT INTO SERVICE_PROFESSIONAL(service_id, professional_id) VALUES(6,6);
INSERT INTO SERVICE_PROFESSIONAL(service_id, professional_id) VALUES(4,7);
INSERT INTO SERVICE_PROFESSIONAL(service_id, professional_id) VALUES(5,7);
INSERT INTO SERVICE_PROFESSIONAL(service_id, professional_id) VALUES(6,7);
INSERT INTO SERVICE_PROFESSIONAL(service_id, professional_id) VALUES(1,8);
INSERT INTO SERVICE_PROFESSIONAL(service_id, professional_id) VALUES(2,8);
INSERT INTO SERVICE_PROFESSIONAL(service_id, professional_id) VALUES(7,9);
INSERT INTO SERVICE_PROFESSIONAL(service_id, professional_id) VALUES(8,9);

INSERT INTO PRODUCT(name,price,quantity) VALUES('hair dye', 7, 20);
INSERT INTO PRODUCT(name,price,quantity) VALUES('hydrogen peroxide', 5, 10);

INSERT INTO PRODUCT(name,price,quantity) VALUES('nail polish', 3, 100);--3
INSERT INTO PRODUCT(name,price,quantity) VALUES('shampoo', 20, 50);--4
INSERT INTO PRODUCT(name,price,quantity) VALUES('conditioner', 30, 50);--5
INSERT INTO PRODUCT(name,price,quantity) VALUES('hydration mask', 30, 50);--6
INSERT INTO PRODUCT(name,price,quantity) VALUES('wax', 15, 20);--7
INSERT INTO PRODUCT(name,price,quantity) VALUES('paper wax', 15, 20);--8
INSERT INTO PRODUCT(name,price,quantity) VALUES('after wax lotion', 15, 20);--9
INSERT INTO PRODUCT(name,price,quantity) VALUES('pre wax spray', 15, 20);--10
INSERT INTO PRODUCT(name,price,quantity) VALUES('nail polish special', 5, 50);--11
INSERT INTO PRODUCT(name,price,quantity) VALUES('nail file', 2, 150);--12
INSERT INTO PRODUCT(name,price,quantity) VALUES('massage oil', 5, 20);--13
INSERT INTO PRODUCT(name,price,quantity) VALUES('facial cleanser', 5, 50);--14
INSERT INTO PRODUCT(name,price,quantity) VALUES('cottons', 2, 150);--15
INSERT INTO PRODUCT(name,price,quantity) VALUES('foundation', 30, 10);--16
INSERT INTO PRODUCT(name,price,quantity) VALUES('blush', 30, 10);--17
INSERT INTO PRODUCT(name,price,quantity) VALUES('compact powder', 30, 10);--18
INSERT INTO PRODUCT(name,price,quantity) VALUES('lipstick', 30, 10);--19
INSERT INTO PRODUCT(name,price,quantity) VALUES('lip gloss', 30, 10);--20
INSERT INTO PRODUCT(name,price,quantity) VALUES('eye shadow', 30, 10);--21
INSERT INTO PRODUCT(name,price,quantity) VALUES('eyeliner', 30, 10);--22
INSERT INTO PRODUCT(name,price,quantity) VALUES('mascara', 30, 10);--23
INSERT INTO PRODUCT(name,price,quantity) VALUES('primer', 30, 10);--24
INSERT INTO PRODUCT(name,price,quantity) VALUES('bronzer', 30, 10);--25

INSERT INTO SERVICE_PRODUCT(service_id, product_id) VALUES(4,1);--hair dye for color
INSERT INTO SERVICE_PRODUCT(service_id, product_id) VALUES(6,2);--hydrogen peroxide for highlights 

INSERT INTO SERVICE_PRODUCT(service_id, product_id) VALUES(1,3);--
INSERT INTO SERVICE_PRODUCT(service_id, product_id) VALUES(2,3);--

INSERT INTO SERVICE_PRODUCT(service_id, product_id) VALUES(4,4);--
INSERT INTO SERVICE_PRODUCT(service_id, product_id) VALUES(5,4);--
INSERT INTO SERVICE_PRODUCT(service_id, product_id) VALUES(6,4);--
INSERT INTO SERVICE_PRODUCT(service_id, product_id) VALUES(4,5);--
INSERT INTO SERVICE_PRODUCT(service_id, product_id) VALUES(5,5);--
INSERT INTO SERVICE_PRODUCT(service_id, product_id) VALUES(6,5);--

INSERT INTO SERVICE_PRODUCT(service_id, product_id) VALUES(6,6);--

INSERT INTO SERVICE_PRODUCT(service_id, product_id) VALUES(1,11);--
INSERT INTO SERVICE_PRODUCT(service_id, product_id) VALUES(1,12);--
INSERT INTO SERVICE_PRODUCT(service_id, product_id) VALUES(2,11);--
INSERT INTO SERVICE_PRODUCT(service_id, product_id) VALUES(2,12);--

INSERT INTO SERVICE_PRODUCT(service_id, product_id) VALUES(8,13);--
INSERT INTO SERVICE_PRODUCT(service_id, product_id) VALUES(7,14);--

INSERT INTO SERVICE_PRODUCT(service_id, product_id) VALUES(3,16);--
INSERT INTO SERVICE_PRODUCT(service_id, product_id) VALUES(3,17);--
INSERT INTO SERVICE_PRODUCT(service_id, product_id) VALUES(3,18);--
INSERT INTO SERVICE_PRODUCT(service_id, product_id) VALUES(3,19);--
INSERT INTO SERVICE_PRODUCT(service_id, product_id) VALUES(3,20);--
INSERT INTO SERVICE_PRODUCT(service_id, product_id) VALUES(3,21);--
INSERT INTO SERVICE_PRODUCT(service_id, product_id) VALUES(3,22);--
INSERT INTO SERVICE_PRODUCT(service_id, product_id) VALUES(3,23);--
INSERT INTO SERVICE_PRODUCT(service_id, product_id) VALUES(3,24);--
INSERT INTO SERVICE_PRODUCT(service_id, product_id) VALUES(3,25);--


