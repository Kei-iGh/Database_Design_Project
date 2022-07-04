/*
All the data(names, drugs, descriptions, etc) were chosen randomly through a random word/sentence generation.
*/

INSERT INTO customer
VALUES 
("94319944", "Dalton", "Combs", "2001-01-22", "Dalt_2001@gmail.com", "3846 Hiddenview Drive", "44512", "(918) 463-2647", "M"),
("99998712", "Tyrell", "Khan", "1957-10-24", "Khan15@gmail.com", "1617 Fairfield Road", "4096", "", "M"),
("02831372", "Briony", "Snider", "1999-05-01", "M10999@gmail.com", "3269 Byers Lane", "38118", "(615) 591-1732", "M"),
("17756081", "Humairaa", "Koch", "1995-11-14", "KochHum@gmai.com", "808 Coffman Alley", "8901", "(307) 362-9673", "F"), 
("97171908", "Mahira", "Holland", "1969-03-12", "Holland69@gmail.com", "1758 Hamill Avenue", "85225", "(810) 658-8390", "F"), 
("22232776", "Alayah", "Bloggs", "2000-09-06", "Blog01@gmail.com", "3714 Rardin Drive", "44128", "(727) 819-1624", "F"), 
("99994262", "Wiktor", "Kaye", "1981-01-08", "kai9999@gmail.com", "4139 Cedarstone Drive", "32811", "", "M"),
("30695115", "Kayla", "Humphrey", "1977-11-04", "humprey77@gmail.com", "1498 Liberty Avenue", "21201", "", "F"),
("27708568", "Mylo", "Sutton", "1997-07-13", "mylousa@gmail.com", "625 Rosemont Avenue", "25143", "", "M"),
("56944292", "Milana", "Redfern", "1980-09-22", "red1980@gmail.com", "278 Horner Street", "93721", "(419) 258-2520", "F");


select *
from customer;



insert into drug
values 
("3524", "Ciprofloxacin", "Armenia", "Demi Pharm", "Ciprofloxacin Demi Pharm is a strong antimicrobial drug.", "18", "No", "10$"),
("1183", "Vitamin D3", "Armenia", "Demi Pharm", "EVERY DROP IS POWER Demi Pharm D3 drops are indicated for people with a weak immune system, insufficient bone mineralization, as well as patients with osteopenia and osteoporosis, with an increased level of stress, as well as for all conditions that require compensation, vitamin D is needed. In addition to the positive effect that it has in these conditions, vitamin D3 helps to reduce inflammation and maintain proper muscle function.", "0", "Yes", "15$"),
("5721", "SUPER OMEGA", "Armenia", "Demi Pharm", "Demiland Super Omega 2000mg is used as an adjuvant in prevention and in complex therapy:", "18", "No", "100$"),
("7457", "IMMUNODEMIA (tablets)", "Armenia", "Demi Pharm", "Vitamin C is able to normalize psychological function, reduce constipation and constipation, and replace it with vitamin B2 and zinc, which is useful for protecting cells from acid stress.", "0", "Yes", "69$"),
("8250", "TRIO VISION (eye drops, suspension 5 ml)", "Armenia", "Demi Pharm", "Clindamycin ADB is indicated for the treatment of infections caused by microorganisms sensitive to the action of clindamycin:", "14", "Yes", "2$"),
("6868", "FERRODEMI (30 capsules)", "Armenia", "Demi Pharm", "", "0", "Yes", "15$"),
("7378", "Crizotinib", "United States", "XALKORI", "Crizotinib is an anti-cancer medicine. Crizotinib is taken by mouth. It is available as a 200 mg and 250 mg capsule and a liquid that can be taken by mouth.", "0", "Yes", "10$"),
("6151", "Deferasirox", "Germany", "Exjade", "", "0", "Yes", "30$"),
("2636", "Desmopressin", "Sweeden", "Stimate", "Desmopressin is used to help manage bleeding disorders. It is available as spray that is squirted in the nose.", "18", "No", "999$"),
("9165", "Etonogestrel", "United States", "Nexplanon", "", "18", "Yes", "14$");


select *
from drug;



insert into pharmacy
values
("0001", "Bartell Drugs", "(620) 331-9864", "116 N Maple St Ste B", "Cherryvale", "67335", "2012-09-20"),
("0002", "CVS Pharmacy", "(620) 331-7594", "3711 SE Frank Phillips Blvd", "Bartlesville", "74006", "2015-01-06"),
("0003", "Duane Reade", "(417) 347-7490", "1610 S Broadway St", "Wichita", "67211", "2015-11-05");


select *
from pharmacy;



insert into employee
values
("442925", "Talya", "Frisk", "2001-05-29" ,"Pharmacy technician" ,"313 N Shore Rd Spofford" ,"t.273@gmail.com" ,"15000" ,"" ,"0001"),
("708568", "Isabella", "Gatsby", "1997-04-30" ,"Pharmacy manager" ,"1385 Paul Baker Rd Fordsville" ,"isa.beell_34@gmail.com" ,"29000" ,"(277) 843-2830" ,"0001"),
("951157", "Vibiana", "Aesculapius", "2002-02-12" ,"SMM specialist" ,"3128 W Market Rd" ,"vibi.lila02@gmail.com" ,"35000" ,"" ,"0002"),
("554711", "Ganbold", "Felicitas", "1979-02-10" ,"Pharmacist" ,"33 Longmeadow Rd" ,"Gan.hajs09@gmail.com" ,"23000" ,"(347)736-1379" ,"0001"),
("232776", "Hashim", "Rilla", "1998-03-09" ,"Head Pharmacist" ,"3709 Expedition Dr" ,"hasm.asj98@gmail.com" ,"40000" ,"(354)812-1302" ,"0001"),
("454884", "Merob", "Diederick", "1989-09-12" ,"CEO" ,"10131 Pelican Ridge Rd" ,"mer.lsld923@gmail.com" ,"50000" ,"" ,"0001"),
("306951", "Arda", "Nolan", "1968-01-01" ,"Pharmacist" ,"2513 Joes Road" ,"arda5@gmail.com" ,"23000" ,"(780) 435-8748" ,"0002"),
("874563", "Rebeca", "Williamson", "1979-11-22" ,"Pharmacist" ,"1822 Kinney Street" ,"williamson68@gmail.com" ,"23000" ,"(08) 8733 3248" ,"0003"),
("124833", "Hollie", "Riley", "1989-02-12" ,"Pharmacist" ,"2177 Aspen Court" ,"rileyhol@gmail.com" ,"23000" ,"(847) 487-6904" ,"0003"),
("569442", "Jerry", "Key", "1999-02-19" ,"Pharmacist" ,"858 Moore Avenue" ,"jerrkey@gmail.com" ,"23000" ,"(479) 394-2011" ,"0003"),
("445118", "Sally", "Spence", "1996-03-03" ,"Pharmacist" ,"3269 Heather Sees Way" ,"sal009@gmail.com" ,"23000" ,"(02) 6642 7118" ,"0002"),
("112477", "Jocelyn", "Morales", "1977-12-15" ,"Head Pharmacist" ,"4159 Ryder Avenue" ,"joc1977@gmail.com" ,"40000" ,"(456)852-9842" ,"0003"),
("994262", "Bayley", "Brett", "1989-04-04" ,"Head Pharmacist" ,"13 Grey Fox Farm Road" ,"brettbay@gmail.com" ,"40000" ,"" ,"0002"),
("336971", "Neriah", "Hussain", "1977-01-29" ,"CEO" ,"1594 Anthony Avenue" ,"nerhus@gmail.com" ,"50000" ,"" ,"0002"),
("124471", "Vienna", "Leal", "1979-04-13" ,"CEO" ,"2257 Clearview Drive" ,"vileal3@gmail.com" ,"50000" ,"(684)723-1468" ,"0003");


select * 
from employee;



insert into prescription
values
("13145", "2022-05-19", "2022-06-19", "1", "94319944", "7457"),
("44214", "2022-05-06", "2023-06-19", "1", "99994262", "7457"),
("98741", "2022-12-01", "2023-05-01", "1", "56944292", "7378"),
("12648", "2021-09-05", "2021-10-05", "2", "30695115", "2636"),
("36548", "2020-11-21", "2021-01-21", "5", "99998712", "2636"),
("99741", "2022-01-06", "2022-09-06", "3", "22232776", "7378");


select *
from prescription;



insert into purchase_details
values
("10", "1", "1167837", "7378"),
("20", "2", "7643263", "3524"),
("45", "3", "7643263", "1183"),
("100", "1", "7521205", "5721"),
("69", "1", "8309768", "7457"),
("2", "1", "9639792", "8250"),
("20", "10", "7566194", "8250"),
("75", "5", "7566194", "6868"),
("10", "1", "7566194", "3524"),
("30", "1", "6304031", "6151"),
("30", "1", "1857382", "6151"),
("999", "1", "1857382", "2636"),
("28", "2", "1857382", "9165");


select * 
from purchase_details;



insert into purchases
values
("1167837", "2022-04-15", "0001", "56944292"),
("7643263", "2022-05-15", "0001", "99994262"),
("7521205", "2022-05-03", "0001", "56944292"),
("8309768", "2022-04-22", "0002", "99994262"),
("9639792", "2021-11-08", "0003", "22232776"),
("7566194", "2020-09-29", "0002", "02831372"),
("6304031", "2020-07-08", "0002", "30695115"),
("1857382", "2022-04-26", "0003", "30695115");


select * 
from purchases;



insert into stock
values
("58", "1", "0001", "1183"),
("66", "1", "0001", "2636"),
("12", "1", "0001", "3524"),
("0", "0", "0001", "5721"),
("1", "1", "0001", "6151"),
("3", "1", "0001", "6868"),
("99", "1", "0001", "7378"),
("102", "1", "0001", "7457"),
("650", "1", "0001", "8250"),
("0", "0", "0001", "9165"),

("40", "1", "0002", "1183"),
("56", "1", "0002", "2636"),
("13", "1", "0002", "3524"),
("0", "0", "0002", "5721"),
("0", "0", "0002", "6151"),
("0", "0", "0002", "6868"),
("99", "1", "0002", "7378"),
("770", "1", "0002", "7457"),
("68", "1", "0002", "8250"),
("150", "1", "0002", "9165"),

("50", "1", "0003", "1183"),
("80", "1", "0003", "2636"),
("75", "1", "0003", "3524"),
("15", "1", "0003", "5721"),
("0", "0", "0003", "6151"),
("1", "1", "0003", "6868"),
("20", "1", "0003", "7378"),
("8", "1", "0003", "7457"),
("5", "1", "0003", "8250"),
("0", "0", "0003", "9165");


select *
from stock;



UPDATE stock
SET stock.drug_available = "1"
WHERE stock.drug_count > 0;

UPDATE stock
SET stock.drug_available = "0"
WHERE stock.drug_count = 0;
