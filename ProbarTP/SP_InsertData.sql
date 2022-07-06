/*CREATE PROCEDURE sp_insertarData /*PARAMETROS...DATA DEL CSV? COMO LOS IMPORTO?*/
AS
DECLARE @Counter INT
SET @Counter=1
WHILE (@Counter<50)
BEGIN
	
	SET @Counter  = @Counter  + 1
END
*/
USE tpSQL

CREATE PROCEDURE sp_insertarData
AS
BEGIN 
	-- PAIS
	INSERT INTO Pais (codPais,pais) 
	VALUES 
	('US','United States')

	-- PARTIDO
	INSERT INTO Partido (partido) 
	VALUES
	('Brooklyn'),
	('Manhattan'),
	('Queens'),
	('Staten Island'),
	('Bronx');

	
	-- BARRIO: 
	/* Hay mas de 50 porque primero separe por barrio y luego seleccione las 50 filas a ingresar.
	 * Estoy con poco tiempo, volver a hacer todo demoraria mucho y considero que el concepto está. */
	INSERT INTO Barrio (barrio) 
	VALUES
	('Kensington'),
	('Midtown'),
	('Harlem'),
	('Clinton Hill'),
	('East Harlem'),
	('Murray Hill'),
	('Bedford-Stuyvesant'),
	('Hells Kitchen'),
	('Upper West Side'),
	('Chinatown'),
	('South Slope'),
	('West Village'),
	('Williamsburg'),
	('Fort Greene'),
	('Chelsea'),
	('Crown Heights'),
	('Park Slope'),
	('Windsor Terrace'),
	('Inwood'),
	('East Village'),
	('Greenpoint'),
	('Bushwick'),
	('Flatbush'),
	('Lower East Side'),
	('Prospect-Lefferts Gardens'),
	('Long Island City'),
	('Kips Bay'),
	('SoHo'),
	('Upper East Side'),
	('Prospect Heights'),
	('Washington Heights'),
	('Woodside'),
	('Brooklyn Heights'),
	('Carroll Gardens'),
	('Gowanus'),
	('Flatlands'),
	('Cobble Hill'),
	('Flushing'),
	('Boerum Hill'),
	('Sunnyside'),
	('DUMBO'),
	('St. George'),
	('Highbridge'),
	('Financial District'),
	('Ridgewood'),
	('Morningside Heights'),
	('Jamaica'),
	('Middle Village'),
	('NoHo'),
	('Ditmars Steinway'),
	('Flatiron District'),
	('Roosevelt Island'),
	('Greenwich Village'),
	('Little Italy'),
	('East Flatbush'),
	('Tompkinsville'),
	('Astoria'),
	('Clason Point'),
	('Eastchester'),
	('Kingsbridge'),
	('Two Bridges'),
	('Queens Village'),
	('Rockaway Beach'),
	('Forest Hills'),
	('Nolita'),
	('Woodlawn'),
	('University Heights'),
	('Gravesend'),
	('Gramercy'),
	('Allerton'),
	('East New York'),
	('Theater District'),
	('Concourse Village'),
	('Sheepshead Bay'),
	('Emerson Hill'),
	('Fort Hamilton'),
	('Bensonhurst'),
	('Tribeca'),
	('Shore Acres'),
	('Sunset Park'),
	('Concourse'),
	('Elmhurst'),
	('Brighton Beach'),
	('Jackson Heights'),
	('Cypress Hills'),
	('St. Albans'),
	('Arrochar'),
	('Rego Park'),
	('Wakefield'),
	('Clifton'),
	('Bay Ridge'),
	('Graniteville'),
	('Spuyten Duyvil'),
	('Stapleton'),
	('Briarwood'),
	('Ozone Park'),
	('Columbia St'),
	('Vinegar Hill'),
	('Mott Haven'),
	('Longwood'),
	('Canarsie'),
	('Battery Park City'),
	('Civic Center'),
	('East Elmhurst'),
	('New Springville'),
	('Morris Heights'),
	('Arverne'),
	('Cambria Heights'),
	('Tottenville'),
	('Mariners Harbor'),
	('Concord'),
	('Borough Park'),
	('Bayside'),
	('Downtown Brooklyn'),
	('Port Morris'),
	('Fieldston'),
	('Kew Gardens'),
	('Midwood'),
	('College Point'),
	('Mount Eden'),
	('City Island'),
	('Glendale'),
	('Port Richmond'),
	('Red Hook'),
	('Richmond Hill'),
	('Bellerose'),
	('Maspeth'),
	('Williamsbridge'),
	('Soundview'),
	('Woodhaven'),
	('Woodrow'),
	('Co-op City'),
	('Stuyvesant Town'),
	('Parkchester'),
	('North Riverdale'),
	('Dyker Heights'),
	('Bronxdale'),
	('Sea Gate'),
	('Riverdale'),
	('Kew Gardens Hills'),
	('Bay Terrace'),
	('Norwood'),
	('Claremont Village'),
	('Whitestone'),
	('Fordham'),
	('Bayswater'),
	('Navy Yard'),
	('Brownsville'),
	('Fresh Meadows'),
	('Mount Hope'),
	('Lighthouse Hill'),
	('Springfield Gardens'),
	('Howard Beach'),
	('Belle Harbor'),
	('Jamaica Estates'),
	('Van Nest'),
	('Morris Park'),
	('West Brighton'),
	('Far Rockaway'),
	('South Ozone Park'),
	('Tremont'),
	('Corona'),
	('Great Kills'),
	('Manhattan Beach'),
	('Marble Hill'),
	('Dongan Hills'),
	('Castleton Corners'),
	('East Morrisania'),
	('Hunts Point'),
	('Neponsit'),
	('Pelham Bay'),
	('Randall Manor'),
	('Throgs Neck'),
	('Todt Hill'),
	('West Farms'),
	('Silver Lake'),
	('Morrisania'),
	('Laurelton'),
	('Grymes Hill'),
	('Holliswood'),
	('Pelham Gardens'),
	('Belmont'),
	('Rosedale'),
	('Edgemere'),
	('New Brighton'),
	('Midland Beach'),
	('Baychester'),
	('Melrose'),
	('Bergen Beach'),
	('Richmondtown'),
	('Howland Hook'),
	('Schuylerville'),
	('Coney Island'),
	('New Dorp Beach'),
	('Princes Bay'),
	('South Beach'),
	('Bath Beach'),
	('Jamaica Hills'),
	('Eltingville'),
	('Oakwood'),
	('Castle Hill'),
	('Hollis'),
	('Douglaston'),
	('Huguenot'),
	('Olinville'),
	('Edenwald'),
	('Grant City'),
	('Westerleigh'),
	('Bay Terrace'),
	('Westchester Square'),
	('Little Neck'),
	('Fort Wadsworth'),
	('Rosebank'),
	('Unionport'),
	('Mill Basin'),
	('Arden Heights'),
	('Bulls Head'),
	('New Dorp'),
	('Rossville'),
	('Breezy Point'),
	('Willowbrook'),
	('Glen Oaks'),
	('Gerritsen Beach'),
	('Chelsea, Staten Island'),

	
	--LOCACION
	INSERT INTO Locacion (latitud,longitud,barrioID,partidoID,codPais)
	VALUES
	(4064749,-7397237,209,1,'US'),
	(4075362,-7398377,212,4,'US'),
	(4080902,-739419,149,4,'US'),
	(4068514,-7395976,148,1,'US'),
	(4079851,-7394399,148,4,'US'),
	(4074767,-73975,212,4,'US'),
	(4068688,-7395596,141,1,'US'),
	(4068688,-7395596,141,1,'US'),
	(4076489,-7398493,149,4,'US'),
	(4080178,-7396723,224,4,'US'),
	(4071344,-7399037,148,4,'US'),
	(4080316,-7396545,224,4,'US'),
	(4076076,-7398867,149,4,'US'),
	(4066829,-7398779,224,1,'US'),
	(4079826,-7396113,224,4,'US'),
	(407353,-7400525,224,4,'US'),
	(4070837,-7395352,224,1,'US'),
	(4069169,-7397185,148,1,'US'),
	(4074192,-7399501,148,4,'US'),
	(4067592,-7394694,148,1,'US'),
	(4079685,-7394872,148,4,'US'),
	(4071842,-7395718,224,1,'US'),
	(4068069,-7397706,224,1,'US'),
	(4067989,-7397798,224,1,'US'),
	(4068001,-7397865,224,1,'US'),
	(4068371,-7394028,141,1,'US'),
	(4065599,-7397519,224,1,'US'),
	(4086754,-7392639,209,4,'US'),
	(4076715,-7398533,149,4,'US'),
	(4086482,-7392106,209,4,'US'),
	(407292,-7398542,148,4,'US'),
	(4082245,-7395104,149,4,'US'),
	(4081305,-7395466,149,4,'US'),
	(4072219,-7393762,149,1,'US'),
	(408213,-7395318,149,4,'US'),
	(406831,-7395473,141,1,'US'),
	(4066869,-739878,224,1,'US'),
	(4068876,-7394312,141,1,'US'),
	(4070186,-7392745,148,1,'US'),
	(4063702,-7396327,148,1,'US'),
	(4071401,-7398917,212,4,'US'),
	(407229,-7398199,148,4,'US'),
	(4066278,-7397966,224,1,'US'),
	(4069673,-7397584,148,1,'US'),
	(4079009,-7397927,224,4,'US'),
	(4081175,-7394478,149,4,'US'),
	(4065944,-7396238,224,1,'US'),
	(4074771,-739474,212,5,'US'),
	(4068111,-7395591,141,1,'US'),
	(4068554,-739409,141,1,'US');

	--Host
	INSERT INTO Host (ID, hostIdentidadVerficada,hostNombre,cantAlojamientosHost) 
	VALUES
	(80014485718,'unconfirmed','Madaline',6),
	(52335172823,'verified','Jenna',2),
	(78829239556,'null','Elise',1),
	(85098326012,'unconfirmed','Garry',1),
	(92037596077,'verified','Lyndon',1),
	(45498551794,'verified','Michelle',1),
	(61300605564,'null','Alberta',1),
	(90821839709,'unconfirmed','Emma',1),
	(79384379533,'verified','Evelyn',1),
	(75527839483,'unconfirmed','Carl',1),
	(1280143094,'verified','Miranda',4),
	(18824631834,'verified','Alan',1),
	(88136055909,'verified','',1),
	(26802410424,'verified','Darcy',3),
	(88920244552,'verified','Leonardo',1),
	(46551725984,'verified','Daniel',1),
	(62566345680,'unconfirmed','Heather',1),
	(80380130347,'verified','Ryan',1),
	(73862528370,'verified','Alberta',1),
	(72145018858,'null','Martin',1),
	(79805143117,'verified','Audrey',2),
	(86554611512,'verified','Alissa',1),
	(53754237010,'verified','Mary',6),
	(87668933180,'null','William',6),
	(57827496420,'unconfirmed','Charlotte',6),
	(48387947293,'null','Miranda',2),
	(81686279636,'null','Carlos',2),
	(38811420224,'verified','Adrianna',1),
	(19382804591,'unconfirmed','Andrew',1),
	(51449163855,'verified','Daryl',3),
	(86424057349,'unconfirmed','Tyler',1),
	(69410526955,'unconfirmed','Byron',3),
	(80369762211,'verified','Mary',1),
	(50968902783,'unconfirmed','John',3),
	(25066620900,'verified','Alfred',3),
	(57938703679,'unconfirmed','Jared',2),
	(53343148512,'verified','Brad',3),
	(26207748876,'verified','Arthur',1),
	(88653822946,'verified','Joyce',2),
	(49725315867,'verified','Deanna',1),
	(31736204344,'null','Clark',4),
	(63131487263,'unconfirmed','Byron',2),
	(50357575975,'verified','Alina',1),
	(45597582469,'null','Charlie',1),
	(55430108992,'unconfirmed','Alford',1),
	(2107606817,'unconfirmed','Chester',1),
	(41615406010,'null','David',1),
	(81253735818,'unconfirmed','Victoria',1),
	(42134614458,'verified','Jared',1),
	(53466382920,'verified','Chloe',1);

	--Lugar
	INSERT INTO Lugar (AlojamientoID,titulo)
	VALUES
	(1001254,'Clean & quiet apt home by the park'),
	(1002102,'Skylit Midtown Castle'),
	(1002403,'THE VILLAGE OF HARLEM....NEW YORK !'),
	(1002755,'null'),
	(1003689,'Entire Apt: Spacious Studio/Loft by central park'),
	(1004098,'Large Cozy 1 BR Apartment In Midtown East'),
	(1004650,'BlissArtsSpace!'),
	(1005202,'BlissArtsSpace!'),
	(1005754,'Large Furnished Room Near Bway'),
	(1006307,'Cozy Clean Guest Room - Family Apt'),
	(1006859,'Cute & Cozy Lower East Side 1 bdrm'),
	(1007411,'Beautiful 1br on Upper West Side'),
	(1007964,'Central Manhattan/near Broadway'),
	(1008516,'Lovely Room 1, Garden, Best Area, Legal rental'),
	(1009068,'Wonderful Guest Bedroom in Manhattan for SINGLES'),
	(1009621,'West Village Nest - Superhost'),
	(1010173,'Only 2 stops to Manhattan studio'),
	(1010725,'Perfect for Your Parents + Garden'),
	(1011277,'Chelsea Perfect'),
	(1011830,'Hip Historic Brownstone Apartment with Backyard'),
	(1012382,'Huge 2 BR Upper East  Cental Park'),
	(1012934,'Sweet and Spacious Brooklyn Loft'),
	(1013487,'CBG CtyBGd HelpsHaiti rm#1:1-4'),
	(1014039,'CBG Helps Haiti Room#2.5'),
	(1014591,'CBG Helps Haiti Rm #2'),
	(1015144,'MAISON DES SIRENES1,bohemian apartment'),
	(1015696,'Sunny Bedroom Across Prospect Park'),
	(1016248,'Magnifique Suite au N de Manhattan - vue Cloitres'),
	(1016800,'Midtown Pied-a-terre'),
	(1017353,'SPACIOUS, LOVELY FURNISHED MANHATTAN BEDROOM'),
	(1017905,'Modern 1 BR / NYC / EAST VILLAGE'),
	(1018457,'front room/double bed'),
	(1019010,'Spacious 1 bedroom in luxe building'),
	(1019562,'Loft in Williamsburg Area w/ Roof'),
	(1020114,'back room/bunk beds'),
	(1020667,'Large B&B Style rooms'),
	(1021219,'Lovely room 2 & garden; Best area, Legal rental'),
	(1021771,'Clean and Quiet in Brooklyn'),
	(1022323,'Cute apt in artists home'),
	(1022876,'Country space in the city'),
	(1023428,'LowerEastSide apt share shortterm 1'),
	(1023980,'ENJOY Downtown NYC!'),
	(1024533,'Beautiful Sunny Park Slope Brooklyn'),
	(1025085,'1bdr w private bath. in lofty apt'),
	(1025637,'West Side Retreat'),
	(1026190,'BEST BET IN HARLEM'),
	(1026742,'Entire apartment in central Brooklyn neighborhood.'),
	(1027294,'1 Stop fr. Manhattan! Private Suite,Landmark Block'),
	(1027846,'Charming Brownstone 3 - Near PRATT'),
	(1028399,'bright and stylish duplex');

	--Habitacion
	INSERT INTO Habitacion (tipoHabitacion) 
	VALUES
	('Private room'),
	('Entire home/apt'),
	('Shared room'),
	('Hotel room'),

	
	--PoliticaCancelacion
	INSERT INTO PoliticaCancelacion (politicaCancelacion)
	VALUES
	('strict'),
	('moderate'),
	('flexible');
	
	--ALOJAMIENTO
 	SET IDENTITY_INSERT Alojamiento ON
 	
 	/*INSERT INTO Alojamiento (ID) VALUES (1001254);
 	insert into Alojamiento (hostID) VALUES (80014485718);
 	INSERT INTO Alojamiento (fechaUltimaReview) VALUES (try_convert(date, '20201004', 104))*/
 	
	INSERT INTO Alojamiento
	(ID,hostID,locacionID,dispInmediata,politicaCancID,tipoHabID,anioConstruccion,precio,tarifaServicio,minNoches,disponibilidad365,reglas,nReviews,fechaUltimaReview,reviewsPorMes,promedioPuntaje)
	VALUES
	(1001254,80014485718,1,'0',1,1,2020,966,193,10,286,'Clean up and treat the home the way youd like your home to be treated.  No smoking.',9,'2019-05-04',21,4 )
	(1002102,52335172823,2,'0',2,2,2007,142,28,30,228,'Pet friendly but please confirm with me if the pet you are planning on bringing with you is OK. I have a cute and quiet mixed chihuahua. I could accept more guests (for an extra fee) but this also needs to be confirmed beforehand. Also friends traveling together could sleep in separate beds for an extra fee (the second bed is either a sofa bed or inflatable bed). Smoking is only allowed on the porch.',45,'2019-05-05',38,4 )
	(1002403,78829239556,3,'1',3,1,2005,620,124,3,352,'I encourage you to use my kitchen, cooking and laundry facilities. There is no additional charge to use the washer/dryer in the basement.  No smoking, inside or outside. Come home as late as you want.  If you come home stumbling drunk, its OK the first time. If you do it again, and you wake up me or the neighbors downstairs, we will be annoyed.  (Just so you know . . . )',0,'2019-05-06',null,5 )
	(1002755,85098326012,4,'1',2,2,2005,368,74,30,322,'null',270,'2019-05-07',464,4 )
	(1003689,92037596077,5,'0',2,2,2009,204,41,10,289,'Please no smoking in the house, porch or on the property (you can go to the nearby corner).  Reasonable quiet after 10:30 pm.  Please remove shoes in the house.',9,'2019-05-08',1,3 )
	(1004098,45498551794,6,'1',3,2,2013,577,115,3,374,'No smoking, please, and no drugs.',74,'2019-05-09',59,3 )
	(1004650,61300605564,7,'0',2,1,2015,71,14,45,224,'Please no shoes in the house so bring slippers or extra socks to keep your feet warm- especially in winter! No smoking either inside or outside. Please be considerate of neighbors from 10pm-7am in terms of noise. Please take out any trash and leave in the large blue garbage bin at the end of the driveway when you leave.',49,'2019-05-10',4,5 )
	(1005202,90821839709,8,'0',2,1,2009,1,06,212,45,219,'House Guidelines for our BnB We are delighted to welcome you.  Check in Sun – Thurs by 8PM and Fri, Sat by 9pm. Please bear in mind that this is not a hotel but our home and we are opening it to you.  We will do our utmost to make your stay enjoyable and fun.  We ask that you take care to respect our home and its appearance.  Thank you.  Marilyn and Alan 1.ROOMS - The bedroom is yours for the duration of your stay.  Be sure to let us know if you need something.  Please keep it neat and tidy and take advantage of the closet and bureau for your belongings.  We do ask that you turn off lights, air conditioner, fan, etc. when you are not in the room. Thank you. 2.LIGHTS – Please, too, remember to turn off lights on the stairway when returning.   3.KEYS - 2 house keys are provided - Replacement cost is $15 each 4.PARKING – Parking is available on street at all times.   5.SHOES – When the weather is inclement please remove shoes.   6.TOILETRIES - If you need them we can provide basic toiletr',49,'2019-05-11',4,5 )
	(1005754,79384379533,9,'1',1,1,2005,1,02,204,2,180,'- Please clean up after yourself when using the kitchen. - When using the bathroom, please be careful to minimize the amount of water on the floor when showering and using the sink. - Please make sure to remove any strands of hair from the sink and floors with a tissue or paper towel. - Be respectful of the noise levels after 11pm.  - Please be quiet coming in late or leaving early. - No Smoking  - No Pets - No overnight guests - For safety reasons, please make sure to shut and lock the windows and front door when you leave. *** Note: cancellations are subject to fees that are non refundable ***',430,'2019-05-12',347,3 )
	(1006307,75527839483,10,'0',1,1,2015,291,58,2,375,'NO SMOKING OR PETS ANYWHERE ON THE PROPERTY 1. Be respectful of the other tenants 2. If you use the grill, be sure to turn off the gas 3. Notify the owner of any discrepancies or things not functioning properly immediately 4. Please treat carpet stains promptly (or notify the owner) 5. Kindly turn off lights, air conditioners, and other electrical items when they arent needed',118,'2019-05-13',99,5 )
	(1006859,1280143094,11,'0',3,2,2004,319,64,1,1,'null',160,'2019-05-14',133,3 )
	(1007411,18824631834,12,'1',3,2,2008,606,121,5,163,'My ideal guests would be warm, friendly, and respectful of sharing my home and its rhythms. I am allergic to cigarettes, so no smoking please, not even in the yard. A quiet homecoming is much appreciated at the end of the evenings nightlife.',53,'2019-05-15',43,4 )
	(1007964,88136055909,13,'0',1,1,2008,714,143,2,258,'- One of the bedroom closets is not accessible to guests - Please be mindful of the neighbors, quiet time after 10PM  - Check-out time is at 11AM on the day of your departure.  - If youre going to smoke outside, please clean up after yourself and do not throw cigarette butts on the ground - The refrigerator and cabinets are available for your use but please do not take food items unless explicitly permitted',188,'2019-05-16',15,4 )
	(1008516,26802410424,14,'1',2,1,2010,580,116,4,47,'null',167,'2019-05-17',134,4 )
	(1009068,88920244552,15,'0',3,1,2019,149,30,2,68,'null',113,'2019-05-18',91,3 )
	(1009621,46551725984,16,'1',3,2,2018,578,null,90,100,'Arrival time can be no later than 9:00PM unless pre-arranged. No visitors allowed at anytime without prior approval. Overnight guests are not allowed at all. There is no room for guests. Dont ask. No smoking. 11:00 PM is quiet time while watching private room tv is acceptable. No eating meals in the room. Its too small, youll see what Im saying, and theres a nice dining table for that. Small snacks are fine. If you cook and/or uses dishes and utensils then please clean them so someone else can use them. Do not leave anything uncleaned in the sink overnight. Shared areas of the home are expected to be maintained after you use them. There are no room services provided other than normal cleaning. Closet and dresser space is provided for your clothes.',27,'2019-05-19',22,3 )
	(1010173,62566345680,17,'null',2,2,2009,778,null,2,197,'Absolutely no smoking in the building, handling of art work or damaging personal property. All additional charges for movie rental are the responsibility of the renter. Shower before entering the hot tub. No glass or food in the hot tub. Turn off all lights and appliances when leaving the unit.',148,'2019-05-20',12,3 )
	(1010725,80380130347,18,'null',3,2,2006,656,null,2,96,'- Please be mindful of the neighbors, quiet time after 10PM  - Check-out time is at 11AM on the day of your departure.  - If youre going to smoke outside, please clean up after yourself and do not throw cigarette butts on the ground - The refrigerator and cabinets are available for your use but please do not take food items unless explicitly permitted',198,'2019-05-21',172,5 )
	(1011277,73862528370,19,'null',2,1,2008,460,null,1,325,'null',260,'2019-05-22',212,3 )
	(1011830,72145018858,20,'null',2,2,2004,1,1,null,3,345,'LAUNDRY - Laundry can be done by the visitor before 10 pm, preferably on weekends. - Please provide your own detergent and fabric conditioner. Keep the machine clean and remember to clean the filter before and after use. - Please ask hosts to teach you how to operate the machines if you are not familiar with it. - Please limit your load and washes as not to overload the machine. - One wash per week will be ideal. HOUSEKEEPING - The bedrooms shall be kept clean and tidy by the visitor. - Please be respectful of others and keep the bathroom clean – do not leave dirty clothes and trash lying around. - Each visitor is responsible for cleaning their own dirty dishes and throwing their own trash in the garbage bin outside. - Please provide your own toiletries such as bath soap, shampoo and toothpaste.  KITCHEN USE  - We are sharing our kitchen and kitchenware stuff. Please make sure to take care of them and make sure you clean, dry and put them back where you found them. If you are cooking, ',53,'2019-05-23',444,5 )
	(1012382,79805143117,21,'null',2,2,2013,281,56,7,347,'No smoking, No pets.  No shoes in the house. Visitors are permitted in the common area only. Please use the dining room to enjoy your meals. Also  refrain using an electronic device while having your meal. Quiet time between 10:00pm-6:00am.',0,'2019-05-24',null,3 )
	(1012934,86554611512,22,'null',3,2,2016,477,95,3,193,'- No smoking or open flames on the property - Please respect the peace and privacy of our neighbors  - Access Roslindale Urban Wild from street - do not jump backyard fence - Max of 3 occupants, please!',9,'2019-05-25',7,3 )
	(1013487,53754237010,23,'null',2,1,2013,133,27,2,54,'Arrival time can be no later than 10:00PM. No visitors allowed at anytime without prior approval. Overnight guests are only allowed as part of the reservation. Never more than 2 people in this room.  No smoking. 11:00 PM is quiet time while watching private room tv is acceptable. No eating meals in the room. Its too small, youll see what Im saying, and theres a nice dining table for that. Small snacks are fine. If you cook and/or uses dishes and utensils then please clean them so someone else can use them. Do not leave anything uncleaned in the sink overnight. Shared areas of the home are expected to be maintained after you use them. There are no room services provided other than normal cleaning. Closet and dresser space is provided for your clothes.',130,'2019-05-26',109,4 )
	(1014039,87668933180,24,'null',2,1,2017,1,05,210,1,9,'null',39,'2019-05-27',37,3 )
	(1014591,57827496420,25,'null',1,1,2005,816,163,2,344,'We take great care of our home and expect you to do the same.  Smoking is not permitted anywhere on the property.',71,'2019-05-28',61,4 )
	(1015144,48387947293,26,'null',1,2,2006,1,18,235,2,372,'null',88,'2019-05-29',73,4 )
	(1015696,81686279636,27,'null',2,1,2021,530,106,1,344,'Quiet neighborhood, middle apartment of big house, quiet after 11:00. No smoking or candles in apartment.  Clean kitchen after use.',19,'2019-05-30',137,5 )
	(1016248,38811420224,28,'null',1,1,2017,274,55,4,96,'To treat our home with respect.  No smoking inside but feel free to use the front porch.  The marble in the bathroom is very easily stained. We ask that you limit drinking coffee, red wine, etc to the bedroom.',0,'2019-05-31',null,null )
	(1016800,19382804591,29,'null',2,2,2016,209,42,10,103,'Please no pets or smoking in the house, though you can go out on a private porch if you must indulge. Feel free to bring food and cook...I love it when guests prepare a meal.   Quiet hours 9PM to 6AM. ',58,'2019-06-01',49,null )
	(1017353,51449163855,30,'null',1,1,2021,432,86,3,172,'My ideal guests would be warm, friendly, and respectful of sharing my home and its rhythms. I am allergic to cigarettes, so no smoking please, not even in the yard. A quiet homecoming is much appreciated at the end of the evenings nightlife.',108,'2019-06-02',111,null )
	(1017905,86424057349,31,'null',3,2,2010,666,133,14,56,'Just be respectful, clean, and quiet after 10:00PM!',29,'2019-06-03',24,null )
	(1018457,69410526955,32,'null',3,1,2004,770,154,3,105,'No loud noises or loud music. Please help us save the planet by shutting off all the lights when they are not needed. Make sure the coffee maker, toaster and other appliance are off when you leave every morning.  No pets. Remove your shoes and keep them inside the apartment. ABSOLUTELY NO SMOKING is allowed in the house. It is only allowed in the rear part of the building. No wild parties, this is a quiet building. All dishes should ne washed after used. All garbage should be taken out and put in the trash cans in the back porch. And last and not least, ENJOY YOUR STAY WITH US!!',242,'2019-06-04',204,null )
	(1019010,80369762211,33,'null',3,1,2007,512,102,2,169,'null',88,'2019-06-05',142,null )
	(1019562,50968902783,34,'null',2,1,2007,858,172,4,383,'LAUNDRY - Laundry can be done by the visitor before 10 pm, preferably on weekends. - Please provide your own detergent and fabric conditioner. Keep the machine clean and remember to clean the filter before and after use. - Please ask hosts to teach you how to operate the machines if you are not familiar with it. - Please limit your load and washes as not to overload the machine. - One wash per week will be ideal. HOUSEKEEPING - The bedrooms shall be kept clean and tidy by the visitor. - Please be respectful of others and keep the bathroom clean – do not leave dirty clothes and trash lying around. - Each visitor is responsible for cleaning their own dirty dishes and throwing their own trash in the garbage bin outside. - Please provide your own toiletries such as bath soap, shampoo and toothpaste.  KITCHEN USE  - We are sharing our kitchen and kitchenware stuff. Please make sure to take care of them and make sure you clean, dry and put them back where you found them. If you are cooking, ',197,'2019-06-06',165,null )
	(1020114,25066620900,35,'null',1,1,2021,545,109,3,411,'Please no smoking on the property',273,'2019-06-07',237,null )
	(1020667,57938703679,36,'1',1,1,2016,191,38,1,76,'No smoking, this is non-negotiable.  No illegal drug use and we make no exceptions.  We do not allow additional guests or parties.  We expect respectful behavior, particularly late at night. We can allow friendly, house- trained dogs.  We have a dog of our own, so its important that your dog be under your charge at all times.  You may not leave your dog in the apartment alone.  You will be responsible for any damage pets may incur, including paying for cleaning of carpets should they be soiled.',74,'2019-06-08',66,null )
	(1021219,53343148512,37,'1',2,1,2003,1,11,222,4,416,'null',168,'2019-06-09',141,null )
	(1021771,26207748876,38,'0',2,1,2004,203,41,60,294,'NO Shoes in the house. This is why my house is so clean!  NO Smoking inside or outside (cigarettes or anything else).  NO Parties (inside or outside). NO pets (inside or out)  This is a nice quiet neighborhood. Please be respectful of others.',0,'2019-06-10',null,null )
	(1022323,88653822946,39,'1',2,2,2005,1,1,219,2,214,'Please no shoes inside the house and no  smoking (cigarettes or anything else) either in or outside. Please be respectful of neighbors in the evening and early morning (10pm-7am). When you leave at the end of your stay, please take your trash outside to the large garbage bin at the end of the driveway.',231,'2019-06-11',196,3 )
	(1022876,49725315867,40,'1',1,1,2011,1,02,204,1,356,'House Guidelines for our BnB We are delighted to welcome you.  Check in Sun – Thurs by 8PM and Fri, Sat by 9pm. Please bear in mind that this is not a hotel but our home and we are opening it to you.  We will do our utmost to make your stay enjoyable and fun.  We ask that you take care to respect our home and its appearance.  Thank you.  Marilyn and Alan 1.ROOMS - The bedroom is yours for the duration of your stay.  Be sure to let us know if you need something.  Please keep it neat and tidy and take advantage of the closet and bureau for your belongings.  We do ask that you turn off lights, air conditioner, fan, etc. when you are not in the room. Thank you. 2.LIGHTS – Please, too, remember to turn off lights on the stairway when returning.   3.KEYS - 2 house keys are provided - Replacement cost is $15 each 4.PARKING – Parking is available on street at all times.   (website hidden) – When the weather is inclement please remove shoes.   6.TOILETRIES - If you need them we can provide basi',0,'2019-06-12',null,3 )
	(1023428,31736204344,41,'1',2,3,2012,1,01,202,1,110,'Not smoking, drugs, or alcoholics allow. Guest most inform the purpose of their trip and provide ID or passport upon arrival. Only 1 gust allow unless the guest consult the host first for any other type of arrangements.',214,'2019-06-13',181,5 )
	(1023980,63131487263,42,'0',1,1,2005,563,113,2,354,'null',245,'2019-06-14',208,3 )
	(1024533,50357575975,43,'1',3,2,2020,370,74,3,33,'No smoking inside. Since I have a dog, there are no other pets allowed.',15,'2019-06-15',39,2 )
	(1025085,45597582469,44,'0',1,1,2008,687,137,7,405,'No smoking, No pets. No shoes in the house. Visitors are permitted in the common area only. Please use the dining room to enjoy your meals. Also please refrain using an electronic device while having your meal. Quiet time between 10:00pm-6:00am.',25,'2019-06-16',23,1 )
	(1025637,55430108992,45,'0',1,1,2017,856,171,4,86,'Free WiFi! * No smoking anywhere on property. *No out-door shoes to be worn in the house. We ask that guests be willing to be considerate and quiet while coming and going from 10 pm to 6 am, please. This is a non-smoking property. There is no smoking anywhere on the property, inside nor on the porch. We also ask guests to bring inside shoes/slippers. Thank you. As this is our home, we request you not to move the furniture nor our belongings around and to treat our home as you would wish your home to be treated. Thank you.',81,'2019-06-17',69,3 )
	(1026190,2107606817,46,'1',3,2,2006,62,12,7,152,'- Quiet hours between 10pm-6am - Visitors in common spaces only',97,'2019-06-18',84,null )
	(1026742,41615406010,47,'0',1,2,2007,435,87,null,353,'null',11,'2019-06-19',49,null )
	(1027294,81253735818,48,'1',3,1,2022,916,183,null,26,'The room is 1ly non-smoking, however, you can smoke in the back porch. No drugs! No visitors without previous authorization. We do prefer adults since the house is not "child proof" and, we are full time workers. Babies OK!  Please, keep in mind that, this is not a hotel.  The room should be left in good condition and picked up when you leave.  Longer term renters use of kitchen and other facilities can be arranged.',248,'2019-06-20',225,null )
	(1027846,42134614458,49,'1',2,2,2019,459,92,null,32,'No smoking, please. No drugs or guns allowed.  Only registered guests allowed; no other visitors please.  We cannot accommodate pets as I already have two. Cat:  OK to let Bella out of the house.  Dog:  Please dont let Moe out of the house. Hed like to run to the street. He is also a bit noisy when visitors arrive. Please say hi and then ignore him and hell calm down.  No candles or incense burning.  Kitchen:  you are welcome to use kitchen and appliances between 7a and 9p, except no stove use for cooking meals please.',61,'2019-06-21',52,null )
	(1028399,53466382920,50,'0',2,2,2015,363,73,null,85,'No smoking. No pet. No shoes in the house. Visitors are permitted in the common area only. Please use the dining room to enjoy your meals. Also please refrain using an electronic device while having your meal. Quiet time between 10:00pm-6:00am.',11,'2019-06-22',1,1 )

END;
/*	CREATE TABLE Prueba(
	fecha DATE
)
CREATE FUNCTION stringToDate (
	@
)
DECLARE @fechaString VARCHAR(20)
DECLARE @fechaDate DATE
SET @fechaString ='10/19/2021'
SET @FechaDate = TRY_CAST(@fechaString as DATE)
SELECT @FechaDate
UPDATE tpSQL.dbo.Prueba SET fechaUltimaReview = @fecha WHERE locacionID=
INSERT INTO Prueba(fecha) VALUE (SELECT TRY_CAST('10/19/2021' as DATE))*/

