CREATE TABLE `application_user` (
                                    `id` bigint NOT NULL,
                                    `username` varchar(255) DEFAULT NULL,
                                    `name` varchar(255) DEFAULT NULL,
                                    `hashed_password` varchar(255) DEFAULT NULL,
                                    `version` int NOT NULL,
                                    `profile_picture` mediumblob,
                                    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `user_roles` (
                              `user_id` bigint NOT NULL,
                              `roles` enum('ADMIN','USER') DEFAULT NULL,
                              KEY `FKq0h6vpf3crn504yyep1hdv0vc` (`user_id`),
                              CONSTRAINT `FKq0h6vpf3crn504yyep1hdv0vc` FOREIGN KEY (`user_id`) REFERENCES `application_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `sample_person` (
                                 `id` bigint NOT NULL,
                                 `first_name` varchar(255) DEFAULT NULL,
                                 `last_name` varchar(255) DEFAULT NULL,
                                 `phone` varchar(255) DEFAULT NULL,
                                 `email` varchar(255) DEFAULT NULL,
                                 `date_of_birth` date DEFAULT NULL,
                                 `occupation` varchar(255) DEFAULT NULL,
                                 `role` varchar(255) DEFAULT NULL,
                                 `version` int NOT NULL,
                                 `important` bit(1) NOT NULL,
                                 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 1,'Eula','Lane','eula.lane@jigrormo.ye','(762) 526-5961','1953-12-11','Insurance Clerk','Worker',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 2,'Barry','Rodriquez','barry.rodriquez@zun.mm','(267) 955-5124','2012-12-11','Mortarman','Manager',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 3,'Eugenia','Selvi','eugenia.selvi@capfad.vn','(680) 368-2192','1972-11-26','Beer Coil Cleaner','External',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 4,'Alejandro','Miles','alejandro.miles@dec.bn','(281) 301-2039','2013-01-13','Scale Attendant','Worker',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 5,'Cora','Tesi','cora.tesi@bivo.yt','(600) 616-7955','1971-03-13','Clinical Audiologist','Supervisor',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 6,'Marguerite','Ishii','marguerite.ishii@judbilo.gn','(882) 813-1374','1936-12-08','Parking Meter Collector','Supervisor',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 7,'Mildred','Jacobs','mildred.jacobs@joraf.wf','(642) 665-1763','1966-07-13','Business Unit Manager','Manager',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 8,'Gene','Goodman','gene.goodman@kem.tl','(383) 458-2132','2009-05-23','Technical Communicator','External',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 9,'Lettie','Bennett','lettie.bennett@odeter.bb','(769) 335-6771','1958-07-28','Correctional Officer Sergeant','Worker',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 10,'Mabel','Leach','mabel.leach@lisohuje.vi','(803) 586-8035','1945-07-04','Food Chemist','Supervisor',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 11,'Jordan','Miccinesi','jordan.miccinesi@duod.gy','(531) 919-2280','1981-08-15','Signals Intelligence/Electronic Warfare Chief','Manager',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 12,'Marie','Parkes','marie.parkes@nowufpus.ph','(814) 667-8937','1942-06-16','Language Pathologist','External',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 13,'Rose','Gray','rose.gray@kagu.hr','(713) 311-8766','1957-06-15','Wildlife Officer','Worker',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 14,'Garrett','Stokes','garrett.stokes@fef.bg','(381) 421-2371','2008-03-26','Bindery Machine Operator','Manager',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 15,'Barbara','Matthieu','barbara.matthieu@derwogi.jm','(940) 463-7299','1929-03-22','Instructional Aide','External',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 16,'Jean','Rhodes','jean.rhodes@wehovuce.gu','(777) 435-9570','1948-08-29','Clinical Psychiatrist','Worker',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 17,'Jack','Romoli','jack.romoli@zamum.bw','(517) 393-9630','1974-06-25','Mortician Investigator','Supervisor',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 18,'Pearl','Holden','pearl.holden@dunebuh.cr','(711) 904-3669','1948-10-20','Rod Buster Helper','Manager',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 19,'Belle','Montero','belle.montero@repiwid.si','(935) 404-4792','1931-11-13','Classroom Aide','External',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 20,'Olive','Molina','olive.molina@razuppa.ga','(935) 267-8492','1933-05-25','Traditional Chinese Herbalist','Worker',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 21,'Minerva','Todd','minerva.todd@kulmenim.ad','(763) 948-4815','1949-10-26','Electronic Drafter','Supervisor',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 22,'Bobby','Pearson','bobby.pearson@ib.kg','(238) 240-2561','2014-03-20','Vault Teller','Worker',true);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 23,'Larry','Ciappi','larry.ciappi@ba.lk','(410) 257-1723','1995-04-05','Fire Sprinkler Installer','Supervisor',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 24,'Ronnie','Salucci','ronnie.salucci@tohhij.lv','(566) 726-3346','1973-10-07','Brewery Pumper','Manager',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 25,'Walter','Grossi','walter.grossi@tuvo.sa','(416) 906-7221','1986-11-25','Kitchen Chef','External',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 26,'Frances','Koopmans','frances.koopmans@foga.tw','(611) 712-1562','1966-01-16','Medical Esthetician','Worker',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 27,'Frances','Fujimoto','frances.fujimoto@uswuzzub.jp','(919) 887-8542','1935-06-22','Auto Tire Worker','Supervisor',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 28,'Olivia','Vidal','olivia.vidal@hivwerip.vc','(982) 684-7650','1932-09-29','Semi-Truck Driver','Manager',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 29,'Edna','Henry','edna.henry@gugusu.rw','(811) 931-8202','1946-08-13','Command And Control','External',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 30,'Lydia','Brun','lydia.brun@zedekak.md','(927) 400-3928','1928-09-25','Drywall Hanger','Worker',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 31,'Jay','Blake','jay.blake@ral.mk','(365) 345-1498','2008-10-13','Real Property Evaluator','Manager',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 32,'Isabel','Serafini','isabel.serafini@turuhu.bh','(656) 968-9869','1972-10-21','Human Performance Professor','Manager',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 33,'Rebecca','Carter','rebecca.carter@omjo.et','(739) 612-6585','1958-05-10','V/Stol Landing Signal Officer','External',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 34,'Maurice','Fabbrini','maurice.fabbrini@rig.bh','(485) 521-2687','1992-03-15','Air Control/Anti-Air Warfare Officer','Supervisor',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 35,'Ollie','Turnbull','ollie.turnbull@sicewap.org','(835) 620-3330','1943-11-10','General Superintendent','Manager',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 36,'Jerry','Hopkins','jerry.hopkins@fo.mh','(211) 851-5960','2013-12-04','Child Protective Services Social Worker','External',true);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 37,'Nora','Lyons','nora.lyons@gegijap.na','(811) 311-5257','1944-09-17','Lens Grinder and Polisher','Worker',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 38,'Anne','Weiß','anne.weiß@kuvesa.pe','(843) 836-3759','1940-04-05','Civil Engineering Professor','Worker',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 39,'Louise','Gauthier','louise.gauthier@lapahu.mt','(913) 235-1856','1929-07-16','Mobile Home Servicer','Supervisor',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 40,'Lloyd','Fani','lloyd.fani@zev.ru','(467) 487-7239','1991-06-20','Floor Refinisher','Supervisor',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 41,'Maud','Dunn','maud.dunn@nabeaga.ni','(724) 340-3634','1954-09-11','Senior Sales Associate','Manager',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 42,'Henry','Gigli','henry.gigli@kaot.ps','(413) 229-8428','1987-11-14','Tile Designer','Worker',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 43,'Virgie','Werner','virgie.werner@tawuctuj.cf','(886) 292-9749','1940-12-23','Econometrics Professor','Supervisor',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 44,'Gregory','Cozzi','gregory.cozzi@eh.ru','(418) 472-1239','1993-10-16','Basketball Player','Manager',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 45,'Lucinda','Gil','lucinda.gil@fajjusuz.kr','(961) 233-3461','1933-10-07','Indirect Fire Infantryman','External',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 46,'Gertrude','Verbeek','gertrude.verbeek@pave.cc','(605) 226-4037','1963-10-21','Licensed Esthetician','Worker',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 47,'Mattie','Graham','mattie.graham@ispaviw.gt','(719) 765-1705','1956-08-18','Antisubmarine Warfare Intelligence Officer','Supervisor',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 48,'Bryan','Shaw','bryan.shaw@ha.ee','(232) 228-5539','2018-04-14','Research Assistant','Manager',true);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 49,'Essie','Adams','essie.adams@iliat.cw','(768) 554-8377','1957-10-24','Cigar Roller','External',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 50,'Gary','Osborne','gary.osborne@do.ga','(311) 731-7079','2008-08-12','Customer Support Representative','Worker',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 51,'Richard','Silva','richard.silva@wi.lc','(207) 554-6244','2014-03-24','Programmer','Manager',true);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 52,'Dustin','Pestelli','dustin.pestelli@iwage.la','(558) 913-2855','1977-07-28','Global Engineering Manager','Manager',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 53,'Henrietta','Hilton','henrietta.hilton@joopoju.pn','(832) 759-6654','1943-05-22','Telegraph and Teletype Operator','External',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 54,'Francisco','Giordano','francisco.giordano@gojawu.tn','(482) 736-8079','1987-10-29','Hairpiece Stylist','Manager',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 55,'Cynthia','Sardi','cynthia.sardi@afigoh.mm','(677) 345-2680','1973-04-18','Tobacco Buyer','External',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 56,'Lula','Testi','lula.testi@benom.tj','(610) 374-7581','1971-02-13','Marine Steamfitter','Worker',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 57,'Bess','Lucas','bess.lucas@jevakbe.cd','(982) 583-8067','1928-07-24','Attending Anesthesiologist','Supervisor',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 58,'Linnie','Driessen','linnie.driessen@darhow.tr','(680) 266-3167','1967-04-24','Certified Indoor Environmentalist','External',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 59,'Eva','Tesi','eva.tesi@dupid.cf','(611) 955-4652','1971-03-06','Land Management Forester','Worker',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 60,'Augusta','Sakai','augusta.sakai@comouc.ee','(940) 714-8088','1935-12-12','Digital Proofing and Platemaker','Worker',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 61,'Mathilda','Schwarz','mathilda.schwarz@igunisi.ao','(868) 481-5125','1941-04-06','Public Health Veterinarian','Manager',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 62,'Joe','Riley','joe.riley@pe.vu','(225) 395-2772','2016-09-14','Statement Processor','External',true);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 63,'Leon','McGee','leon.mcgee@puk.se','(365) 837-6888','2010-07-01','Computer Applications Developer','Worker',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 64,'Florence','Viviani','florence.viviani@vegub.no','(606) 352-8734','1969-04-23','African History Professor','Supervisor',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 65,'Lee','Miceli','lee.miceli@rucwi.pf','(555) 800-7339','1981-07-27','Gastroenterology Professor','Manager',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 66,'Celia','Sodi','celia.sodi@agijit.iq','(657) 357-3671','1972-05-19','Laboratory Animal Caretaker','External',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 67,'Aaron','Misuri','aaron.misuri@loolu.lu','(523) 789-5485','1981-04-20','Water Pump Installer','Worker',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 68,'Fanny','Parkinson','fanny.parkinson@tupwovali.cw','(766) 966-7387','1949-01-30','Orthopedic Cast Specialist','Supervisor',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 69,'Phoebe','Vitale','phoebe.vitale@hidge.fo','(672) 613-2954','1969-06-02','Budget Coordinator','Manager',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 70,'Edith','Brennan','edith.brennan@liowci.ir','(803) 549-9387','1947-11-12','Railroad Engineer','Manager',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 71,'Jeremy','Marilli','jeremy.marilli@vesa.pf','(526) 435-1819','1983-05-17','Chief Projectionist','External',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 72,'Kathryn','Huet','kathryn.huet@wupikdoh.by','(937) 855-5936','1926-11-03','Telecasting Engineer','Worker',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 73,'Lelia','Matsuo','lelia.matsuo@dajsiphaj.az','(960) 335-6192','1934-11-14','Drama Therapist','Supervisor',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 74,'Virginia','Woods','virginia.woods@soofpe.ht','(735) 809-2611','1954-08-22','General Superintendent','Manager',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 75,'Sally','Aoki','sally.aoki@aruzusjas.tc','(857) 797-7918','1936-10-23','Technical Communicator','External',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 76,'Isabelle','de Ridder','isabelle.deridder@ufeco.in','(659) 331-1543','1962-08-09','Leisure Studies Professor','Worker',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 77,'Rosie','Murphy','rosie.murphy@uneehi.id','(759) 639-8597','1958-02-09','Air Conditioning Service Technician','Supervisor',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 78,'Lou','Meyer','lou.meyer@hahinaba.gm','(942) 352-4854','1928-11-04','Business Unit Manager','External',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 79,'Rodney','Love','rodney.love@zun.ph','(247) 867-8287','2012-02-29','Job Estimator','Worker',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 80,'Kenneth','Bianchini','kenneth.bianchini@jo.ws','(302) 793-9936','2001-02-20','Correctional Officer Sergeant','Worker',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 81,'Essie','Dietrich','essie.dietrich@goltuefo.mn','(861) 740-6628','1938-10-23','Parking Meter Collector','Supervisor',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 82,'Leila','Simon','leila.simon@lupuwuzo.gw','(953) 866-9992','1930-07-20','Signals Intelligence/Electronic Warfare Chief','External',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 83,'Eva','Pierre','eva.pierre@reduzris.ee','(915) 491-8384','1927-08-01','Clinical Psychiatrist','Worker',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 84,'Landon','Moretti','landon.moretti@pubsav.sk','(584) 909-6235','1980-11-03','Wildlife Officer','Supervisor',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 85,'Mittie','Sardi','mittie.sardi@lullip.nf','(673) 849-4256','1973-04-13','Food Chemist','Manager',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 86,'Corey','McDaniel','corey.mcdaniel@aba.tc','(268) 208-9643','2012-06-17','Advanced Foreign Counterintelligence Specialist (Afcs)','Supervisor',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 87,'Hester','Stein','hester.stein@kettujwo.eu','(873) 489-6641','1939-04-10','Forest Fire Officer','Manager',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 88,'Danny','Lowe','danny.lowe@ju.sd','(243) 974-5539','2013-07-23','Catalogue Illustrator','External',true);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 89,'Lillie','Winter','lillie.winter@vioburez.vi','(816) 699-1291','1945-06-17','Knife Grinder','Worker',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 90,'Brandon','Borchi','brandon.borchi@ig.al','(319) 401-1090','2000-04-08','Neuropsychiatrist','Supervisor',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 91,'Isaac','Bernardi','isaac.bernardi@omu.bj','(359) 691-6408','2001-09-19','Bottle Packer','Manager',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 92,'Clyde','Crawford','clyde.crawford@luw.dz','(273) 892-4646','2018-09-22','Special Education Kindergarten Teacher','External',true);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 93,'Paul','Sherman','paul.sherman@pi.cf','(304) 610-2881','2008-02-29','Commercial Art Instructor','Worker',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 94,'Craig','Russell','craig.russell@zu.nz','(237) 969-2900','2019-12-27','Ferryboat Captain','Supervisor',true);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 95,'John','Sutton','john.sutton@ag.ee','(207) 424-6468','2013-03-09','School Social Worker','Manager',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 96,'Francisco','Formigli','francisco.formigli@fopav.tn','(481) 661-8179','1990-02-21','Joint Terminal Attack Controller','External',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 97,'Gary','Baker','gary.baker@ji.cf','(212) 510-3444','2022-03-13','VP Sales','Worker',true);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 98,'Earl','Giovannoni','earl.giovannoni@lojet.ge','(433) 862-3076','1987-07-22','Auto Service Station Attendant','Manager',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 99,'Helen','Zanieri','helen.zanieri@ukve.tn','(619) 506-4452','1968-12-03','Healthcare Social Worker','External',false);
insert into sample_person(version, id,first_name,last_name,email,phone,date_of_birth,occupation,role,important) values (1, 100,'Agnes','Toccafondi','agnes.toccafondi@viipo.ae','(616) 688-6883','1970-12-23','Comedian','External',false);
insert into application_user (version, id, username,name,hashed_password,profile_picture) values (1, '1','user','John Normal','$2a$10$xdbKoM48VySZqVSU/cSlVeJn0Z04XCZ7KZBjUBC00eKo5uLswyOpe','');
insert into user_roles (user_id, roles) values ('1', 'USER');
insert into application_user (version, id, username,name,hashed_password,profile_picture) values (1, '2','admin','Emma Powerful','$2a$10$jpLNVNeA7Ar/ZQ2DKbKCm.MuT2ESe.Qop96jipKMq7RaUgCoQedV.','');
insert into user_roles (user_id, roles) values ('2', 'USER');
insert into user_roles (user_id, roles) values ('2', 'ADMIN');


