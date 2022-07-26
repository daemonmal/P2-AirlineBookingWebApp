create database Project2

create table Hotels (
	hotelId int primary key,
	hotelName varchar(20),
	hotelCity varchar(20),
	
	)
	
	insert into Hotels(hotelId,hotelName,hotelCity) values(1, 'Holiday Inn', 'Atlanta')
	insert into Hotels(hotelId,hotelName,hotelCity) values(2, 'Marriott', 'Atlanta')
	insert into Hotels(hotelId,hotelName,hotelCity) values(3, 'Days Inn', 'Atlanta')
	insert into Hotels(hotelId,hotelName,hotelCity) values(4, 'Motel 6', 'Atlanta')
	insert into Hotels(hotelId,hotelName,hotelCity) values(5, 'La Quinta', 'Atlanta')
	insert into Hotels(hotelId,hotelName,hotelCity) values(6, 'Hyatt Regency', 'Atlanta')

	insert into Hotels(hotelId,hotelName,hotelCity) values(7, 'Holiday Inn', 'Seattle')
	insert into Hotels(hotelId,hotelName,hotelCity) values(8, 'Marriott', 'Seattle')
	insert into Hotels(hotelId,hotelName,hotelCity) values(9, 'Days Inn', 'Seattle')
	insert into Hotels(hotelId,hotelName,hotelCity) values(10, 'Motel 6', 'Seattle')
	insert into Hotels(hotelId,hotelName,hotelCity) values(11, 'La Quinta', 'Seattle')
	insert into Hotels(hotelId,hotelName,hotelCity) values(12, 'Hyatt Regency', 'Seattle')

	insert into Hotels(hotelId,hotelName,hotelCity) values(13, 'Holiday Inn', 'Dallas')
	insert into Hotels(hotelId,hotelName,hotelCity) values(14, 'Marriott', 'Dallas')
	insert into Hotels(hotelId,hotelName,hotelCity) values(15, 'Days Inn', 'Dallas')
	insert into Hotels(hotelId,hotelName,hotelCity) values(16, 'Motel 6', 'Dallas')
	insert into Hotels(hotelId,hotelName,hotelCity) values(17, 'La Quinta', 'Dallas')
	insert into Hotels(hotelId,hotelName,hotelCity) values(18, 'Hyatt Regency', 'Dallas')

	insert into Hotels(hotelId,hotelName,hotelCity) values(19, 'Holiday Inn', 'Chicago')
	insert into Hotels(hotelId,hotelName,hotelCity) values(20, 'Marriott', 'Chicago')
	insert into Hotels(hotelId,hotelName,hotelCity) values(21, 'Days Inn', 'Chicago')
	insert into Hotels(hotelId,hotelName,hotelCity) values(22, 'Motel 6', 'Chicago')
	insert into Hotels(hotelId,hotelName,hotelCity) values(23, 'La Quinta', 'Chicago')
	insert into Hotels(hotelId,hotelName,hotelCity) values(24, 'Hyatt Regency', 'Chicago')

	insert into Hotels(hotelId,hotelName,hotelCity) values(25, 'Holiday Inn', 'New York')
	insert into Hotels(hotelId,hotelName,hotelCity) values(26, 'Marriott', 'New York')
	insert into Hotels(hotelId,hotelName,hotelCity) values(27, 'Days Inn', 'New York')
	insert into Hotels(hotelId,hotelName,hotelCity) values(28, 'Motel 6', 'New York')
	insert into Hotels(hotelId,hotelName,hotelCity) values(29, 'La Quinta', 'New York')
	insert into Hotels(hotelId,hotelName,hotelCity) values(30, 'Hyatt Regency', 'New York')
	
	insert into Hotels(hotelId,hotelName,hotelCity) values(31, 'Holiday Inn', 'Los Angeles')
	insert into Hotels(hotelId,hotelName,hotelCity) values(32, 'Marriott', 'Los Angeles')
	insert into Hotels(hotelId,hotelName,hotelCity) values(33, 'Days Inn', 'Los Angeles')
	insert into Hotels(hotelId,hotelName,hotelCity) values(34, 'Motel 6', 'Los Angeles')
	insert into Hotels(hotelId,hotelName,hotelCity) values(35, 'La Quinta', 'Los Angeles')
	insert into Hotels(hotelId,hotelName,hotelCity) values(36, 'Hyatt Regency', 'Los Angeles')

	select * from Hotels

CREATE TABLE hotelReservation
    (reservation_id int primary key, hotel_id int foreign key references Hotels, room_id int, check_in date, check_out date)
;

CREATE TABLE hotelRoom
    (room_id int, hotel_id int foreign key references Hotels, room_num int, room_price int)
;
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(1, 1, 101, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(2, 1, 201, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(3, 1, 301, 70)

insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(4, 2, 101, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(5, 2, 201, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(6, 2, 301, 70)

insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(7, 3, 101, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(8, 3, 201, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(9, 3, 301, 70)

insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(10, 4, 101, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(11, 4, 201, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(12, 4, 301, 70)

insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(13, 5, 101, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(14, 5, 201, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(15, 5, 301, 70)

insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(16, 6, 101, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(17, 6, 201, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(18, 6, 301, 70)

insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(19, 7, 101, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(20, 7, 201, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(21, 7, 301, 70)

insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(22, 8, 101, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(23, 8, 201, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(24, 8, 301, 70)

insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(25, 9, 101, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(26, 9, 201, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(27, 9, 301, 70)

insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(28, 10, 101, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(29, 10, 201, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(30, 10, 301, 70)

insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(31, 11, 101, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(32, 11, 201, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(33, 11, 301, 70)

insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(34, 12, 101, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(35, 12, 201, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(36, 12, 301, 70)

insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(37, 13, 101, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(38, 13, 201, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(39, 13, 301, 70)

insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(40, 14, 101, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(41, 14, 201, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(42, 14, 301, 70)

insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(43, 15, 101, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(44, 15, 201, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(45, 15, 301, 70)

insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(46, 16, 101, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(47, 16, 201, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(48, 16, 301, 70)

insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(49, 17, 101, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(50, 17, 201, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(51, 17, 301, 70)

insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(52, 18, 101, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(53, 18, 201, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(54, 18, 301, 70)

insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(55, 19, 101, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(56, 19, 201, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(57, 19, 301, 70)

insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(58, 20, 101, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(59, 20, 201, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(60, 20, 301, 70)

insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(61, 21, 101, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(62, 21, 201, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(63, 21, 301, 70)

insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(64, 22, 101, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(65, 22, 201, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(66, 22, 301, 70)

insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(67, 23, 101, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(68, 23, 201, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(69, 23, 301, 70)

insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(70, 24, 101, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(71, 24, 201, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(72, 24, 301, 70)

insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(73, 25, 101, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(74, 25, 201, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(75, 25, 301, 70)

insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(76, 26, 101, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(77, 26, 201, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(78, 26, 301, 70)

insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(79, 27, 101, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(80, 27, 201, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(81, 27, 301, 70)

insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(82, 28, 101, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(83, 28, 201, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(84, 28, 301, 70)

insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(85, 29, 101, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(86, 29, 201, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(87, 29, 301, 70)

insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(88, 30, 101, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(89, 30, 201, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(90, 30, 301, 70)

insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(91, 31, 101, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(92, 31, 201, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(93, 31, 301, 70)

insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(94, 32, 101, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(95, 32, 201, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(96, 32, 301, 70)

insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(97, 33, 101, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(98, 33, 201, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(99, 33, 301, 70)

insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(100, 34, 101, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(101, 34, 201, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(102, 34, 301, 70)

insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(103, 35, 101, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(104, 35, 201, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(105, 35, 301, 70)

insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(106, 36, 101, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(107, 36, 201, 70)
insert into hotelRoom(room_id,hotel_id,room_num,room_price) values(108, 36, 301, 70)
select * from hotelRoom


	create table RentalAgency (
		agencyId int primary key,
		agencyName varchar(20),
		agencyLocation varchar(20)
		)
	insert into RentalAgency(agencyId,agencyName,agencyLocation) values(1, 'Enterprise', 'Atlanta')
	insert into RentalAgency(agencyId,agencyName,agencyLocation) values(2, 'Herts', 'Atlanta')
	insert into RentalAgency(agencyId,agencyName,agencyLocation) values(3, 'Avis', 'Atlanta')
	insert into RentalAgency(agencyId,agencyName,agencyLocation) values(4, 'Budget', 'Atlanta')
	insert into RentalAgency(agencyId,agencyName,agencyLocation) values(5, 'Alamo', 'Atlanta')
	insert into RentalAgency(agencyId,agencyName,agencyLocation) values(6, 'National', 'Atlanta')

	insert into RentalAgency(agencyId,agencyName,agencyLocation) values(7, 'Enterprise', 'Seattle')
	insert into RentalAgency(agencyId,agencyName,agencyLocation) values(8, 'Herts', 'Seattle')
	insert into RentalAgency(agencyId,agencyName,agencyLocation) values(9, 'Avis', 'Seattle')
	insert into RentalAgency(agencyId,agencyName,agencyLocation) values(10, 'Budget', 'Seattle')
	insert into RentalAgency(agencyId,agencyName,agencyLocation) values(11, 'Alamo', 'Seattle')
	insert into RentalAgency(agencyId,agencyName,agencyLocation) values(12, 'National', 'Seattle')

	insert into RentalAgency(agencyId,agencyName,agencyLocation) values(13, 'Enterprise', 'Dallas')
	insert into RentalAgency(agencyId,agencyName,agencyLocation) values(14, 'Herts', 'Dallas')
	insert into RentalAgency(agencyId,agencyName,agencyLocation) values(15, 'Avis', 'Dallas')
	insert into RentalAgency(agencyId,agencyName,agencyLocation) values(16, 'Budget', 'Dallas')
	insert into RentalAgency(agencyId,agencyName,agencyLocation) values(17, 'Alamo', 'Dallas')
	insert into RentalAgency(agencyId,agencyName,agencyLocation) values(18, 'National', 'Dallas')

	insert into RentalAgency(agencyId,agencyName,agencyLocation) values(19, 'Enterprise', 'Chicago')
	insert into RentalAgency(agencyId,agencyName,agencyLocation) values(20, 'Herts', 'Chicago')
	insert into RentalAgency(agencyId,agencyName,agencyLocation) values(21, 'Avis', 'Chicago')
	insert into RentalAgency(agencyId,agencyName,agencyLocation) values(22, 'Budget', 'Chicago')
	insert into RentalAgency(agencyId,agencyName,agencyLocation) values(23, 'Alamo', 'Chicago')
	insert into RentalAgency(agencyId,agencyName,agencyLocation) values(24, 'National', 'Chicago')

	insert into RentalAgency(agencyId,agencyName,agencyLocation) values(25, 'Enterprise', 'New York')
	insert into RentalAgency(agencyId,agencyName,agencyLocation) values(26, 'Herts', 'New York')
	insert into RentalAgency(agencyId,agencyName,agencyLocation) values(27, 'Avis', 'New York')
	insert into RentalAgency(agencyId,agencyName,agencyLocation) values(28, 'Budget', 'New York')
	insert into RentalAgency(agencyId,agencyName,agencyLocation) values(29, 'Alamo', 'New York')
	insert into RentalAgency(agencyId,agencyName,agencyLocation) values(30, 'National', 'New York')

	insert into RentalAgency(agencyId,agencyName,agencyLocation) values(31, 'Enterprise', 'Los Angeles')
	insert into RentalAgency(agencyId,agencyName,agencyLocation) values(32, 'Herts', 'Los Angeles')
	insert into RentalAgency(agencyId,agencyName,agencyLocation) values(33, 'Avis', 'Los Angeles')
	insert into RentalAgency(agencyId,agencyName,agencyLocation) values(34, 'Budget', 'Los Angeles')
	insert into RentalAgency(agencyId,agencyName,agencyLocation) values(35, 'Alamo', 'Los Angeles')
	insert into RentalAgency(agencyId,agencyName,agencyLocation) values(36, 'National', 'Los Angeles')
	   
		CREATE TABLE carReservation
    (reservation_id int primary key, agency_id int foreign key references RentalAgency, car_id int, check_in date, check_out date)
;

CREATE TABLE Cars
    (car_id int, agency_id int foreign key references RentalAgency, car_model int, car_price int)
;
insert into Cars(car_id,agency_id,car_model,car_price) values(1, 1, 101, 25)
insert into Cars(car_id,agency_id,car_model,car_price) values(2, 1, 201, 50)
insert into Cars(car_id,agency_id,car_model,car_price) values(3, 1, 301, 70)

insert into Cars(car_id,agency_id,car_model,car_price) values(4, 2, 101, 25)
insert into Cars(car_id,agency_id,car_model,car_price) values(5, 2, 201, 50)
insert into Cars(car_id,agency_id,car_model,car_price) values(6, 2, 301, 70)

insert into Cars(car_id,agency_id,car_model,car_price) values(7, 3, 101, 25)
insert into Cars(car_id,agency_id,car_model,car_price) values(8, 3, 201, 50)
insert into Cars(car_id,agency_id,car_model,car_price) values(9, 3, 301, 70)

insert into Cars(car_id,agency_id,car_model,car_price) values(10, 4, 101, 25)
insert into Cars(car_id,agency_id,car_model,car_price) values(11, 4, 201, 50)
insert into Cars(car_id,agency_id,car_model,car_price) values(12, 4, 301, 70)

insert into Cars(car_id,agency_id,car_model,car_price) values(13, 5, 101, 25)
insert into Cars(car_id,agency_id,car_model,car_price) values(14, 5, 201, 50)
insert into Cars(car_id,agency_id,car_model,car_price) values(15, 5, 301, 70)

insert into Cars(car_id,agency_id,car_model,car_price) values(16, 6, 101, 25)
insert into Cars(car_id,agency_id,car_model,car_price) values(17, 6, 201, 50)
insert into Cars(car_id,agency_id,car_model,car_price) values(18, 6, 301, 70)

insert into Cars(car_id,agency_id,car_model,car_price) values(19, 7, 101, 25)
insert into Cars(car_id,agency_id,car_model,car_price) values(20, 7, 201, 50)
insert into Cars(car_id,agency_id,car_model,car_price) values(21, 7, 301, 70)

insert into Cars(car_id,agency_id,car_model,car_price) values(22, 8, 101, 25)
insert into Cars(car_id,agency_id,car_model,car_price) values(23, 8, 201, 50)
insert into Cars(car_id,agency_id,car_model,car_price) values(24, 8, 301, 70)

insert into Cars(car_id,agency_id,car_model,car_price) values(25, 9, 101, 25)
insert into Cars(car_id,agency_id,car_model,car_price) values(26, 9, 201, 50)
insert into Cars(car_id,agency_id,car_model,car_price) values(27, 9, 301, 70)

insert into Cars(car_id,agency_id,car_model,car_price) values(28, 10, 101, 25)
insert into Cars(car_id,agency_id,car_model,car_price) values(29, 10, 201, 50)
insert into Cars(car_id,agency_id,car_model,car_price) values(30, 10, 301, 70)

insert into Cars(car_id,agency_id,car_model,car_price) values(31, 11, 101, 25)
insert into Cars(car_id,agency_id,car_model,car_price) values(32, 11, 201, 50)
insert into Cars(car_id,agency_id,car_model,car_price) values(33, 11, 301, 70)

insert into Cars(car_id,agency_id,car_model,car_price) values(34, 12, 101, 25)
insert into Cars(car_id,agency_id,car_model,car_price) values(35, 12, 201, 50)
insert into Cars(car_id,agency_id,car_model,car_price) values(36, 12, 301, 70)

insert into Cars(car_id,agency_id,car_model,car_price) values(37, 13, 101, 25)
insert into Cars(car_id,agency_id,car_model,car_price) values(38, 13, 201, 50)
insert into Cars(car_id,agency_id,car_model,car_price) values(39, 13, 301, 70)

insert into Cars(car_id,agency_id,car_model,car_price) values(40, 14, 101, 25)
insert into Cars(car_id,agency_id,car_model,car_price) values(41, 14, 201, 50)
insert into Cars(car_id,agency_id,car_model,car_price) values(42, 14, 301, 70)

insert into Cars(car_id,agency_id,car_model,car_price) values(43, 15, 101, 25)
insert into Cars(car_id,agency_id,car_model,car_price) values(44, 15, 201, 50)
insert into Cars(car_id,agency_id,car_model,car_price) values(45, 15, 301, 70)

insert into Cars(car_id,agency_id,car_model,car_price) values(46, 16, 101, 25)
insert into Cars(car_id,agency_id,car_model,car_price) values(47, 16, 201, 50)
insert into Cars(car_id,agency_id,car_model,car_price) values(48, 16, 301, 70)

insert into Cars(car_id,agency_id,car_model,car_price) values(49, 17, 101, 25)
insert into Cars(car_id,agency_id,car_model,car_price) values(50, 17, 201, 50)
insert into Cars(car_id,agency_id,car_model,car_price) values(51, 17, 301, 70)

insert into Cars(car_id,agency_id,car_model,car_price) values(52, 18, 101, 25)
insert into Cars(car_id,agency_id,car_model,car_price) values(53, 18, 201, 50)
insert into Cars(car_id,agency_id,car_model,car_price) values(54, 18, 301, 70)

insert into Cars(car_id,agency_id,car_model,car_price) values(55, 19, 101, 25)
insert into Cars(car_id,agency_id,car_model,car_price) values(56, 19, 201, 50)
insert into Cars(car_id,agency_id,car_model,car_price) values(57, 19, 301, 70)

insert into Cars(car_id,agency_id,car_model,car_price) values(58, 20, 101, 25)
insert into Cars(car_id,agency_id,car_model,car_price) values(59, 20, 201, 50)
insert into Cars(car_id,agency_id,car_model,car_price) values(60, 20, 301, 70)

insert into Cars(car_id,agency_id,car_model,car_price) values(61, 21, 101, 25)
insert into Cars(car_id,agency_id,car_model,car_price) values(62, 21, 201, 50)
insert into Cars(car_id,agency_id,car_model,car_price) values(63, 21, 301, 70)

insert into Cars(car_id,agency_id,car_model,car_price) values(64, 22, 101, 25)
insert into Cars(car_id,agency_id,car_model,car_price) values(65, 22, 201, 50)
insert into Cars(car_id,agency_id,car_model,car_price) values(66, 22, 301, 70)

insert into Cars(car_id,agency_id,car_model,car_price) values(67, 23, 101, 25)
insert into Cars(car_id,agency_id,car_model,car_price) values(68, 23, 201, 50)
insert into Cars(car_id,agency_id,car_model,car_price) values(69, 23, 301, 70)

insert into Cars(car_id,agency_id,car_model,car_price) values(70, 24, 101, 25)
insert into Cars(car_id,agency_id,car_model,car_price) values(71, 24, 201, 50)
insert into Cars(car_id,agency_id,car_model,car_price) values(72, 24, 301, 70)

insert into Cars(car_id,agency_id,car_model,car_price) values(73, 25, 101, 25)
insert into Cars(car_id,agency_id,car_model,car_price) values(74, 25, 201, 50)
insert into Cars(car_id,agency_id,car_model,car_price) values(75, 25, 301, 70)

insert into Cars(car_id,agency_id,car_model,car_price) values(76, 26, 101, 25)
insert into Cars(car_id,agency_id,car_model,car_price) values(77, 26, 201, 50)
insert into Cars(car_id,agency_id,car_model,car_price) values(78, 26, 301, 70)

insert into Cars(car_id,agency_id,car_model,car_price) values(79, 27, 101, 25)
insert into Cars(car_id,agency_id,car_model,car_price) values(80, 27, 201, 50)
insert into Cars(car_id,agency_id,car_model,car_price) values(81, 27, 301, 70)

insert into Cars(car_id,agency_id,car_model,car_price) values(82, 28, 101, 25)
insert into Cars(car_id,agency_id,car_model,car_price) values(83, 28, 201, 50)
insert into Cars(car_id,agency_id,car_model,car_price) values(84, 28, 301, 70)

insert into Cars(car_id,agency_id,car_model,car_price) values(85, 29, 101, 25)
insert into Cars(car_id,agency_id,car_model,car_price) values(86, 29, 201, 50)
insert into Cars(car_id,agency_id,car_model,car_price) values(87, 29, 301, 70)

insert into Cars(car_id,agency_id,car_model,car_price) values(88, 30, 101, 25)
insert into Cars(car_id,agency_id,car_model,car_price) values(89, 30, 201, 50)
insert into Cars(car_id,agency_id,car_model,car_price) values(90, 30, 301, 70)

insert into Cars(car_id,agency_id,car_model,car_price) values(91, 31, 101, 25)
insert into Cars(car_id,agency_id,car_model,car_price) values(92, 31, 201, 50)
insert into Cars(car_id,agency_id,car_model,car_price) values(93, 31, 301, 70)

insert into Cars(car_id,agency_id,car_model,car_price) values(94, 32, 101, 25)
insert into Cars(car_id,agency_id,car_model,car_price) values(95, 32, 201, 50)
insert into Cars(car_id,agency_id,car_model,car_price) values(96, 32, 301, 70)

insert into Cars(car_id,agency_id,car_model,car_price) values(97, 33, 101, 25)
insert into Cars(car_id,agency_id,car_model,car_price) values(98, 33, 201, 50)
insert into Cars(car_id,agency_id,car_model,car_price) values(99, 33, 301, 70)

insert into Cars(car_id,agency_id,car_model,car_price) values(100, 34, 101, 25)
insert into Cars(car_id,agency_id,car_model,car_price) values(101, 34, 201, 50)
insert into Cars(car_id,agency_id,car_model,car_price) values(102, 34, 301, 70)

insert into Cars(car_id,agency_id,car_model,car_price) values(103, 35, 101, 25)
insert into Cars(car_id,agency_id,car_model,car_price) values(104, 35, 201, 50)
insert into Cars(car_id,agency_id,car_model,car_price) values(105, 35, 301, 70)

insert into Cars(car_id,agency_id,car_model,car_price) values(106, 36, 101, 25)
insert into Cars(car_id,agency_id,car_model,car_price) values(107, 36, 201, 50)
insert into Cars(car_id,agency_id,car_model,car_price) values(108, 36, 301, 70)

,
--shows us avaliale rooms--
select hotelRoom.*, Hotels.hotelName,Hotels.hotelCity
from hotelRoom
left join hotelReservation
    on hotelRoom.hotel_id = hotelReservation.hotel_id
        and hotelRoom.room_id = hotelReservation.room_id
        and hotelReservation.check_out >=  '2017-04-01'
        and hotelReservation.check_in <= '2017-04-10'
right join Hotels
	on Hotels.hotelID = hotelRoom.hotel_id
where
    hotelRoom.hotel_id = 3
    and hotelReservation.reservation_id IS NULL

	INSERT INTO hotelReservation
    (reservation_id, hotel_id, room_id, check_in, check_out)
VALUES
    (1, 1, 1, '2017-04-01', '2017-04-02'),

    INSERT INTO carReservation
    (reservation_id, agency_id, car_id, check_in, check_out)
VALUES
    (1, 1, 1, '2017-04-01', '2017-04-02')
;

--shows us the reservations--
select 
  hotelRoom.*, 
  format (check_in,N'dddd","dd MMMM yyyy','en-US') check_in, 
  format (check_out,N'dddd","dd MMMM yyyy','en-US') check_out
from hotelRoom
inner join hotelReservation
    on hotelRoom.hotel_id = hotelReservation.hotel_id
        and hotelRoom.room_id = hotelReservation.room_id
        and hotelReservation.check_out >=  '2017-04-01'
        and hotelReservation.check_in <= '2017-04-02'
left join Hotels
		on Hotels.hotelID = hotelRoom.hotel_id
where
    hotelRoom.hotel_id = 1

	--shows specific customer reservation--
	select hotelRoom.*, customers.firstName, customers.lastName, 
  format (check_in,N'dddd","dd MMMM yyyy','en-US') check_in, 
  format (check_out,N'dddd","dd MMMM yyyy','en-US') check_out
from hotelRoom
inner join hotelReservation
    on hotelRoom.hotel_id = hotelReservation.hotel_id
        and hotelRoom.room_id = hotelReservation.room_id
        and hotelReservation.check_out >=  '2017-04-01'
        and hotelReservation.check_in <= '2017-04-02'
left join customers
	on customers.custId = hotelReservation.reservation_id
where
    customers.custId = 1

	--shows avaliable cars--
	select Cars.*, RentalAgency.agencyName, RentalAgency.agencyLocation 
from Cars
left join carReservation
    on Cars.car_id = carReservation.car_id
        and Cars.car_id = carReservation.car_id
        and carReservation.check_out >=  '2017-04-01'
        and carReservation.check_in <= '2017-04-10'
right join RentalAgency
on RentalAgency.agencyId = Cars.agency_id
where
    RentalAgency.agencyId = 3
    and carReservation.reservation_id IS NULL
	
	--shows reservations--
	select Cars.*, 
  format (check_in,N'dddd","dd MMMM yyyy','en-US') check_in, 
  format (check_out,N'dddd","dd MMMM yyyy','en-US') check_out
from Cars
inner join carReservation
    on Cars.car_id = carReservation.car_id
        and Cars.car_id = carReservation.car_id
        and carReservation.check_out >=  '2017-04-01'
        and carReservation.check_in <= '2017-04-02'
left join RentalAgency
		on RentalAgency.agencyId = Cars.agency_id
where
    RentalAgency.agencyLocation = 'Atlanta'

	--Shows customer reservation--
	select Cars.*, customers.firstName, customers.lastName, 
  format (check_in,N'dddd","dd MMMM yyyy','en-US') check_in, 
  format (check_out,N'dddd","dd MMMM yyyy','en-US') check_out
from Cars
inner join carReservation
    on Cars.car_id = carReservation.car_id
        and Cars.car_id = carReservation.car_id
        and carReservation.check_out >=  '2017-04-01'
        and carReservation.check_in <= '2017-04-02'
left join customers
	on customers.custId = carReservation.reservation_id
where
    customers.custId = 1

    (reservation_id int, agency_id int foreign key references RentalAgency, car_id int, check_in date, check_out date)
;
    (car_id int, agency_id int foreign key references RentalAgency, car_model int, car_price int)
		
	( agencyId int primary key, agencyName varchar(20), agencyLocation varchar(20)
		)