--Cicavce
INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Cicavec', 'Pes', 'Jazvečík', 'Lucky', 2, 13.2, 'granule', 'Malý, vrtký, mierne tučnejší samec, ktorý sa rád hrá a loví potkanov a myši. Je dobrý strážca a miluje svojho pána.', 50);
INSERT INTO public."petsApp_pet" (id_user, fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Cicavec', 'Pes', 'Moskovský strážny', 'Buddy', 1, 38.5, 'všežravec', 'Najlepší strážca domu vyšľachtený v Moskve. Ochráni dom aj svoju rodinu, je veľmi spoločenský a hravý.', 150);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Cicavec', 'Pes', 'Aljašský malamut', 'Johnny', 5, 45.7, 'mäso', 'Dlhosrstý bandita čo sa potrebuje stále hrať a pútať na seba pozornosť.', 90);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Cicavec', 'Pes', 'Bígl', 'Lucas', 1, 8.4, 'granule', 'Prítulný strážca, ktorý má rád deti a zábavu s nimi.', 40);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Cicavec', 'Pes', 'Čivava', 'Lolly', 3, 4.1, 'granule', 'Malý, drsný, nebojácny strážca.', 65);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Cicavec', 'Pes', 'Doberman', 'Debil', 7, 31.2, 'mäso', 'Od pohľadu drsný a nebezpečný strážca, ktorý nepustí ani poštára ku schránke.', 100);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Cicavec', 'Mačka', 'Ruská modrá mačka', 'Russie', 1, 2.8, 'všežravec', 'Prítulná a chytrá mačka, mierne aktívna. Ideálna do bytu. Miluje výzvy a zábavu!', 500);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Cicavec', 'Mačka', 'Bengálska mačka', 'Ellie', 2, 5.2, 'všežravec', 'Unikátne plemeno s divokou krvou. Chytrá, poslušná, rada šplhá a miluje vodu.', 40);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Cicavec', 'Mačka', 'Mačka domáca', 'Ben', 3, 6, 'všežravec', 'Obyčajný neobyčajný kocúr vhodný do bytu k deťom. Mierne hravý, prítulný.', 30);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Cicavec', 'Mačka', 'Britská mačka', 'Muro', 5, 8.7, 'všežravec', 'Kocúr so spokojnou, vyrovnanou povahou. Vhodný pre chov v domácom prostredí.', 70);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Cicavec', 'Mačka', 'Perzská mačka', 'Mia', 4, 7.6, 'všežravec', 'Veľmi obľúbené plemeno. Má krásnu, dlhosrstú srsť, je spoločenská, inteligentná a hravá. ', 200);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Cicavec', 'Mačka', 'Siamská mačka', 'Ezechiel', 3, 8.4, 'všežravec', 'Plemeno vhodné pre ľahký výcvik. Je veľmi spoločenský, a neustále sa potrebuje prejavovať' , 89);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

--Zajace
INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Cicavec', 'Zajac', 'Zajac poľný', 'Joe', 1, 2.8, 'tráva', 'Bojazlivý, plachý zajac vhodný do dvora.', 30);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Cicavec', 'Zajac', 'Zajac Belák', 'Rišo', 2, 3, 'seno', 'Krotký malý zajačik vhodný do domácnosti.', 50);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Cicavec', 'Zajac', 'Zajac polárny', 'BigZ', 3, 2, 'tráva', 'Neobyčajný zajac, ktorý zvláda aj tuhú zimu.', 70);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Cicavec', 'Zajac', 'Zajac japonský', 'Zajo', 5, 4, 'tráva', 'Zajac japonského pôvodu, ktorý má rád sushi.', 90);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Cicavec', 'Zajac', 'Zajac africký', 'King', 4, 2.4, 'tráva', 'Zajac, ktorý je zvyknutý na savanu a vysoké teploty.', 150);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Cicavec', 'Zajac', 'Zajac meňavý', 'Ludwiq', 3, 3.5, 'seno', 'Malý prítulný zajačik, ktorý sa rád hrá.' , 70);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

--Mysi 
INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Cicavec', 'Myš', 'Myš domová', 'Ratatouille', 1, 0.5, 'všetko', 'Malá nenápadná, ktorá zje úplne všetko čo vidí - ovocie, zelenina, mäso.', 2);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Cicavec', 'Myš', 'Myš trpasličia', 'Mia', 2, 0.3, 'omrvinky', 'Unikátne plemeno netradičné v našich krajoch.', 10);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));
 
INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Cicavec', 'Myš', 'Myš obilná', 'Oblina', 3, 0.7, 'omrvinky', 'Myška, čo má rada skrývanie sa vo vysokých trávach', 23);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Cicavec', 'Myš', 'Myš cyperská', 'Cyprica', 5, 0.2, 'omrvinky', 'Exotická myš z Cypru.', 20);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

--#FRETINTO KY
INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Cicavec', 'Fretka', 'Fretka domáca', 'Dina', 1, 0.5, 'granule', 'Priateľská fretka do domácnosti.', 150);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Cicavec', 'Fretka', 'Fretka štandardná', 'Mina', 1, 0.7, 'granule', 'Fretka, ktorá sa rada hrá.', 130);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Cicavec', 'Fretka', 'Fretka poloangora', 'Kia', 1, 0.8, 'granule', 'Fretka, ktorá sa rada učí.', 100);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Cicavec', 'Fretka', 'Fretka angora', 'Bína', 1, 1.5, 'granule', 'Fretka vhodná na hru pre malé deti.', 200);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Cicavec', 'Fretka', 'Fretka tmavooká biela', 'Zia', 1, 1.6, 'granule', 'Táto fretka je zvuknutá behať a rada je vonku.', 70);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Cicavec', 'Fretka', 'Fretka čokoládová', 'Cia', 1, 0.98, 'granule', 'Fretka vhodná pre ľahký výcvik. Je veľmi spoločenská, a neustále sa potrebuje prejavovať.' , 133);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

--#LISKINTO Y
INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Cicavec', 'Líška', 'Polárna líška', 'Pollie', 1, 8.7, 'mäso', 'Prefíkaná, tajomná, ktorá sa rada zakráda.', 500);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Cicavec', 'Líška', 'Japonská líška', 'Japy', 1, 5.2, 'mäso', 'Unikátne plemeno s divokou krvou. Chytrá líška, čo miluje vodu.', 430);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Cicavec', 'Líška', 'Arabská líška', 'Ary', 2, 12, 'mäso', 'Rada loví sliepky a robí neplechu.', 70);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Cicavec', 'Líška', 'Kórejská líška', 'Kori', 3, 14, 'mäso', 'Toto plemeno je najjemnejšie a najkľudnejšie.', 300);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Cicavec', 'Líška', 'Hrdzavá líška', 'Foxy', 1, 7.6, 'mäso', 'Toto plemeno patrí medzi najobľúbenejšie líšky vôbev. Má krásnu, dlhosrstú srsť, je spoločenská, inteligentná a hravá.', 149);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

--#HADINTO 
INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Plaz', 'Had', 'Anakonda', 'Nagini', 1, 20, 'mäso', 'Nebezpečný najväčší had, ktorý vzbudí rešpekt.', 180);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Plaz', 'Had', 'Kobra', 'Slyz', 1, 22, 'mäso', 'Jedovatý had, skvelý do terária.', 150);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Plaz', 'Had', 'Užovka', 'Ferko', 2, 17, 'mäso', 'Neškodný had, ktorých je najviac na Slovensku.', 20);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Plaz', 'Had', 'Štrkáč', 'Dyna', 3, 15.7, 'mäso', 'Nebezpečný, útočný had, ktorý nechcete aby vám ušiel. ', 78);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Plaz', 'Had', 'Pytón', 'Plena', 1, 12.6, 'mäso', 'Toto plemeno je veľmi zriedkavé v našich končinách, tiež veľmi nebezpečné. ', 99);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Plaz', 'Had', 'Slepúch', 'Hyena', 2, 25.4, 'mäso', 'Ďaľšie neškodné plemeno hada, ktorý je skvelý na chov do terária' , 48);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

--#JASTINTO ERICA
INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Plaz', 'Jašterica', 'Jašterica krátkohlavá', 'Lea', 1, 2.8, 'hmyz', 'Jašterica najvhodnejšia do terária.', 30);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Plaz', 'Jašterica', 'Jašterica zelená', 'Mea', 1, 5.2, 'hmyz', 'Toto plemeno má rado voľný výbeh.', 28);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Plaz', 'Jašterica', 'Jašterica smaragdová', 'Kea', 2, 6, 'hmyz', 'Malá jašterica, ktorá pochádza z Južnej Ameriky.', 27.9);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));
INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Plaz', 'Jašterica', 'Jašterica ostrohlavá', 'Nea', 3, 8.7, 'hmyz', 'Jašterica, ktorá je veľmi plachá.', 25);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Plaz', 'Jašterica', 'Jašterica ostropyská', 'Bea', 5, 7.6, 'hmyz', 'Toto plemeno je najobľúbenejšie v našich končinách. ', 23.2);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Plaz', 'Jašterica', 'Jašterica dugesova', 'Cea', 2, 8.4, 'hmyz', 'Plemeno z Ázie, ktoré má rado vodu a okolie pri vode.' , 44);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

--VARANINTO  
INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Plaz', 'Varan', 'Varan komodský', 'Jožko', 3, 70, 'mäso', 'Najčastejšie plemeno varana, ktoré môžme vidieť v ZOO.', 600);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Plaz', 'Varan', 'Varan veľký', 'Janko', 2, 38, 'mäso', 'Pochádza z Austrálie, tiež obľúbené v ZOO.', 580);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Plaz', 'Varan', 'Varan stepný', 'Palko', 3, 35, 'mäso', 'Toto plemeno má rado spoločnosť pri sebe, takže odporúčame kúpiť vždy pár.', 620);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Plaz', 'Varan', 'Varan nílsky', 'Danko', 5, 59.8, 'mäso', 'Plemeno, ktoré má rado samotu.', 490);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));
 
INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Plaz', 'Varan', 'Varan smaragdový', 'Peťko', 1, 20.5, 'mäso', 'Toto plemeno patrí k najnebezpečnejším, často útočí aj na čloagea.', 598);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Plaz', 'Varan', 'Varan mangrovový', 'Karolko', 2, 48.2, 'mäso', 'Plemeno najvhodnejšie do domácnosti do vlastného terotória.' , 620);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

--#KROKINTO ODIL
INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Plaz', 'Krokodil', 'Aligátor', 'Lezus', 1, 70, 'mäso', 'Najnebezpečnejší zo všetkých druhov krokodílov.', 390);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Plaz', 'Krokodil', 'Allodaposuchus', 'Nezus', 5, 200, 'mäso', 'Pochádza z Brazílie.', 400);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Plaz', 'Krokodil', 'Gavialoidea', 'Kezus', 10, 228, 'mäso', 'Tento druh býva často v zoo.', 480);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Plaz', 'Krokodil', 'Astorgosuchus', 'Bezus', 5, 189, 'mäso', 'Najvhodnejší na kúpu domov.', 320);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Plaz', 'Krokodil', 'Tomistoma', 'Zezus', 2, 147.8, 'mäso', 'Treba vynaložiť veľkú snahu a starostlivosť o toto plemeno. ', 340);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Plaz', 'Krokodil', 'Brevirostres', 'Cezus', 3, 198.2, 'mäso', 'Veľmi krotké a ľahko vycvičiteľné plemeno.' , 280);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

--VTÁKYINTO : papagáje, korely, sliepka, sova, pštros
--#PAPAINTO GAJE
INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Vták', 'Papagáj', 'Ara', 'Žako', 1, 7.2, 'slnečnicové semienka', 'Najobľúbenejší druh, rýchlo sa učí rozprávať.', 200);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Vták', 'Papagáj', 'Rozela', 'Mako', 2, 5.2, 'proso', 'Malé, bláznivé plemeno, ktoré potrebuje pútať pozornosť na seba.', 180);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Vták', 'Papagáj', 'Papagáj kráľovský', 'Kako', 3, 6, 'slnečnicové semienka', 'Vhodné na chov vonku, pretože veľmi škrieka.', 60);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Vták', 'Papagáj', 'Aratinga', 'Pako', 1, 3.7, 'proso', 'Rýchlo sa naučí rozprávať.', 67);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Vták', 'Papagáj', 'Pristtacus', 'Dako', 4, 5.6, 'slnečnicové semienka', 'Neobyčajné plemeno v našich krajoch s obyčajným sfarbením. ', 50);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Vták', 'Papagáj', 'Kráľčik nádherný', 'Cako', 3, 8.4, 'proso', 'Vhodné plemeno pre deti do vnútra do klietky.' , 50);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));
--korelINTO y
INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Vták', 'Korela', 'Korela chocholatá', 'Kiko', 1, 0.09, 'proso', 'Priateľská korela do domácnosti.', 10);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Vták', 'Korela', 'Andulka biela', 'Riko', 1, 0.06, 'proso', 'Unikátne plemeno s divokou krvou. Chytrá, poslušná, rada šplhá a miluje vodu.', 9);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Vták', 'Korela', 'Andulka modrá', 'Miko', 2, 0.08, 'proso', 'Obyčajne neobyčajná korela vhodná do bytu k deťom, hravá.', 8);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Vták', 'Korela', 'Andulka zelená', 'Biko', 3, 0.06, 'proso', 'Uprednostňuje cupkanie pred lietaním, rada sa hrá.', 12);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Vták', 'Korela', 'Andulka žltá', 'Ziko', 4, 0.05, 'proso', 'Veľmi hravé plemeno, dokáže sa naučiť vysloviť aj rôzne slová.', 15);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Vták', 'Korela', 'Andulka farebná', 'Ciko', 3, 0.07, 'proso', 'Ľahko sa cvičí, je tiché celkom.' , 12);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

--SLIEPINTO KA 
INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Vták', 'Sliepka', 'Liliputka', 'Lila', 1, 2.5, 'pšenica a šalát', 'Skvelé plemeno na nosenie vajec.', 6);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Vták', 'Sliepka', 'Hodvábnička', 'Mila', 2, 2.3, 'pšenica a šalát', 'Vynikajúce mäso, úžasná do polievky.', 2.90);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Vták', 'Sliepka', 'Hempšírka', 'Kila', 3, 2.1, 'pšenica a šalát', 'Pochádza zo Švajčiarska, skvelá nosnica.', 2.80);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Vták', 'Sliepka', 'Japonská sliepka', 'Bila', 2, 1.9, 'pšenica a šalát', 'Spoločenský druh, ktorý potrebuje okolo seba viac kamaratiek.', 2.7);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Vták', 'Sliepka', 'Brahmanka', 'Zila', 1, 2.8, 'pšenica a šalát', 'Toto plemeno patrí medzi najobľúbenejšie sliepky vôbev.', 4.9);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Vták', 'Sliepka', 'Mládka', 'Cila', 3, 2.9, 'pšenica a šalát', 'Toto plemeno je veľmi vyberavé, nezje hocičo.' , 2.87);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

--SOVA INTO 
INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Vták', 'Sova', 'Eostrix', 'Hedviga', 1, 2.3, 'hlodavce', 'Najvhodnejšie plemeno do domácnosti.', 75);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Vták', 'Sova', 'Výr skalný', 'Menza', 2, 3.8, 'hlodavce', 'Unikátne plemeno s divokou krvou. Chytrá a poslušná', 80);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Vták', 'Sova', 'Sceloglaux', 'Kenza', 1, 0.6, 'hlodavce', 'Vhodná na výcvik, skvelo chytá myši.', 69);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Vták', 'Sova', 'Micrathene', 'Benza', 3, 0.7, 'hlodavce', 'Pokojná, kľudná sova, ktorej stačí jedlo do života.', 62);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Vták', 'Sova', 'Ogygoptynx', 'Zenza', 1, 0.8, 'hlodavce', 'Toto plemeno patrí medzi najobľúbenejšie sovy. Má krásnu srsť a je inteligentná.', 72);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Vták', 'Sova', 'Sova obyčajná', 'Cenza', 2, 3.6, 'hlodavce', 'Plemeno vhodné pre ľahký výcvik. Je veľmi spoločenská, a neustále sa potrebuje prejavovať.' , 70);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

--PŠTROINTO S
INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Vták', 'Pštros', 'Pštros dvojprstý', 'Denos', 2, 70, 'rastliny', 'Skvelý druh do domácnosti.', 170);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Vták', 'Pštros', 'Pštros sivonohý', 'names', 2, 5.2, 'rastliny', 'Najobľúbenejší a najkrajší druh pštrosu.', 175);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Vták', 'Pštros', 'Pachystruthio', 'Kenos', 3, 156, 'rastliny', 'Pochádza z Austrálie, vhodný do dvora v rodinnom dome.', 140);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Vták', 'Pštros', 'Emu', 'Benos', 1, 59, 'rastliny', 'Najčastejší výskyt v ZOO.', 180);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Vták', 'Pštros', 'Coppensi', 'Zenos', 7, 137, 'rastliny', 'Vhodný na chov doma, rád sa ukazuje pred svojím pánom.', 130);
INSERT INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));


--OBOJŽIVELNÍKY
INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Obojživelník', 'Žaba', 'Pralesnička azurová', 'Azure', 1, 0.03, 'hmyz, červy', 'Dorastá sa 4.5cm a je prudko jedovatá. Mala by byť chovaná v páre a v teráriu s dostatočnou vlhkosťou.', 205);
INSERT  INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Obojživelník', 'Žaba', 'Pralesnička batiková', 'Betty', 1, 0.01, 'bezstavovce', 'Dorastá sa 2.5cm a je prudko jedovatá. Je aktívna vo dne, počas chovu nie je jedovatá.', 150);
INSERT  INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Obojživelník', 'Žaba', 'Pralesnička drobná', 'Lill', 1, 2.8, 'článkovce, mravce', 'Dorastá sa 1.7-2.4cm. Je denný tvor, aktívny najmä ráno. ', 180);
INSERT  INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Obojživelník', 'Žaba', 'Pralesnička farbiarka', 'Bonnie', 1, 0.04, 'hmyz', 'Dorastá sa 3-4cm. Do terária potrebuje dubové listy, mach, kokosové orechy.', 270);
INSERT  INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Obojživelník', 'Žaba', 'Pralesnička strašná', 'Scar', 1, 0.004, 'bezstavovce', 'Dorastá až do 5.5cm. Na prstoch má vankúšiky, vďaka ktorým sa jej dobre šplhá.', 200);
INSERT  INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Obojživelník', 'Žaba', 'Pralesnička trojfarebná', 'Coli', 1, 2.8, 'bezstavovce','Dorastá sa 2cmm je aktívny najmä cez deň.', 250);
INSERT  INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));


INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Obojživelník', 'Korytnačka', 'Korytnačka zelenkastá', 'Greenie', 15, 1.5 , 'byliny, surové mäso', 'Dorastá sa 20 cm a je obľúbená pre pomerne nenáročný chov. Dožíva sa 60-80 rokov.', 100);
INSERT  INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Obojživelník', 'Korytnačka', 'Korytnačka stepná', 'Sillie', 2, 1, 'listy, plody, kvety', 'Dorastá sa 25cm a je aktívna od septembra do marca.', 150);
INSERT  INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Obojživelník', 'Korytnačka', 'Korytnačka leopardia', 'Leon', 10, 40, 'byliny, sukulenty', 'Má 65cm, potrebuje veľké, suché terárium. Ak je ve&ĺmi sucho, upadne do letného spánku.', 50);
INSERT  INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Obojživelník', 'Korytnačka', 'Klopavka obecná', 'Chloe', 3, 0.5, 'ryby, perloočky', 'Dorastá sa 13cm. Postačuje jej menšia nádrž a nepotrebuje vyhrievanie.', 30);
INSERT  INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Obojživelník', 'Korytnačka', 'Korytnačka nádherná scripta', 'Beauty', 2, 0.5, 'hmyz, rybky, granule', 'Dorastá až do 30cm. Nenáročná na chov. ', 200);
INSERT  INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));


INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Obojživelník', 'Mlok', 'Axolotl mexický', 'Axy', 2, 0.5, 'rybky, dážďovky, červy', 'Potrebuje aspoň 40cm vysoké akvárium so studenšou vodou. Vyžaduje starostlivosť a záujem. ', 150);
INSERT  INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Obojživelník', 'Mlok', 'Salamandra škvrnitá', 'Sally', 1, 0.3, 'hmyz, dážďovky', 'Dorastá až do 30cm. Kvôli potrave aktívna najmä v noci.', 70);
INSERT  INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

--RYBY

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Ryba', 'Bojovnica', 'Bojovnica pestrá', 'Collie', 1, 0.05, 'granulky', 'Má rada vysoké rastliny a aspoň 10l akvárium. Nehodí sa k malým rybkám.', 4.2);
INSERT  INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Ryba', 'Bojovnica', 'Bojovnica mierna', 'Izy', 1, 0.05, 'granulky', 'Označuje sa ako nebojovná, nakoľko je plachá. Vie vyskočiť do výšky až 2cm', 4.2);
INSERT  INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Ryba', 'Bojovnica', 'Bojovnica smaragdová', 'Clyde', 1, 0.05, 'granulky', 'Hodí sa do spoločenských akvárií k nekonfliktným druhom.', 4.2);
INSERT  INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Ryba', 'Bojovnica', 'Bojovnica jávska', 'Jaw', 1, 0.05, 'granulky', 'Má nadžiabrový orgán, ktorý jej umožňuje dýchanie v teplej, stojatej a málo okysličenej vode.', 4.2);
INSERT  INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));


INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Ryba', 'Tetra', 'Tetra čierna', 'Blacky', 1, 0.05, 'nitenky, vločky, šalát', 'Mierumilovná, hejnovitá rybka. Je nenáročná na chov.', 1.50);
INSERT  INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Ryba', 'Tetra', 'Tetra červenoústa', 'Redd', 1, 0.05, 'nitenky, vločky, šalát', 'Je nenáročná na chov. Má rada husto osádzané akváriá.', 1.80);
INSERT  INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Ryba', 'Tetra', 'Neónka čierna', 'Sally', 1, 0.05, 'jemné suché, mrazené a živé krmivá', 'Čulá, mierumilovná rybka, nenáročná na chov. Väčšinu času trávi tesne pod hladinou.', 1.1);
INSERT  INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Ryba', 'Tetra', 'Tetra neónová', 'Neones', 1, 0.05, 'nitenky, palatenky, perloočky', 'Mierumilovná, hejnovitá rybka vhodná do spoločenských akvárií. Je nenáročná na chov.', 1.2);
INSERT  INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Ryba', 'Tetra', 'Neonka zlatá', 'Golden', 1, 0.05, 'suché vločkové krmivo', 'Nekonfliktná a vhodná do väčšiny akvárií.', 1.5);
INSERT  INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Ryba', 'Akara', 'Akara potočná', 'Golden', 1, 0.05, 'všetky druhy živej potravy', 'Dorastá 15-20cm, je agresívna a teritoriálna. Na chov si vyžaduje akvárium o min. dĺžke 100 cm.', 1.5);
INSERT  INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Ryba', 'Akara', 'Akara modrá', 'Electra', 1, 0.05, 'všetky druhy živej potravy', 'Dorastá sa 15-19cm. Pomerne kľudná, v období trenia sa pár správa teritoriálne.', 2.5);
INSERT  INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));


INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Ryba', 'Živorodka', 'Mečúň mexický red simpson', 'Mexican', 1, 0.05, 'suché, mrazené, živé krmivá a zelenina', 'Dorastá sa 6-12cm. Mečúne sú obľúbené krásne a nenáročné živorodky.', 3.5);
INSERT  INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Ryba', 'Živorodka', 'Mečúň Kohaku wagtail', 'Waggie', 1, 0.05, 'suché, mrazené, živé krmivá a zelenina', 'Dorastá sa 6-12cm. Mečúne sú obľúbené krásne a nenáročné živorodky.', 4);
INSERT  INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Ryba', 'Živorodka', 'Živorodka wingei mix', 'Mixa', 1, 0.05, 'jemné suché, mrazené a živé krmivá', 'Dorastá sa 3-4cm. Živorodky Endlerové sú čulé mierumilovné rybky vhodné do spoločenských akvárií. ', 1.9);
INSERT  INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Ryba', 'Živorodka', 'Živorodka wingei Japan Blue', 'Blue', 1, 0.05, 'jemné suché, mrazené a živé krmivá', 'Dorastá sa 2-3cm. Samčeky Živorodiek Endlerových sú krásne malé rybky vhodné do miniakvárií.', 2.5);
INSERT  INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Ryba', 'Živorodka', 'Gupka Blue neon', 'Blune', 1, 0.05, 'jemné suché, mrazené a živé krmivá', 'Dorastá sa 4-6cm. Nenáročná rybka vhodná aj pre úplných začiatočníkov. Sú jedny z najznámejších rybiek medzi akvaristami. .', 2.5);
INSERT  INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Ryba', 'Živorodka', 'Gupka Galaxy', 'Gala', 1, 0.05, ' jemné suché, mrazené a živé krmivá', 'Dorastá sa 4-6cm. Krásne vyfarbená rybka so zaujímavým škvrnitým vzorom a oranžovým nádychom. Nenáročná.', 2.8);
INSERT  INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

-- HMYZ

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Hmyz', 'Motýľ', 'Žltáčik Vičencový', 'Jelly', 1, 0, 'nektár, rastlinné šťavy', 'Žlto-biely motýľ vhodný pre začiatočníckych chovateľov.', 2);
INSERT  INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Hmyz', 'Motýľ', 'Žltáčik Lucernový', 'Lucy', 1, 0, 'nektár, rastlinné šťavy', 'Žlto-čierny motýľ vhodný pre začiatočníckych chovateľov.', 2);
INSERT  INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Hmyz', 'Motýľ', 'Mlynárik Rezedový', 'Wessy', 1, 0, 'nektár, rastlinné šťavy', 'Bielo-zelený motýľ vhodný pre začiatočníckych chovateľov.', 2.5);
INSERT  INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Hmyz', 'Motýľ', 'Babôčka pŕhľavová', 'Mill', 1, 0, 'nektár, rastlinné šťavy', 'Babôčka nepatrí medzi veľké motýle, dĺžka tela je 40 – 50 mm, dĺžka predného krídla je 23 – 30 mm.', 2.8);
INSERT  INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Hmyz', 'Motýľ', 'Babôčka pávooká', 'Pearl', 1, 0, 'nektár, rastlinné šťavy', 'Babôčka nepatrí medzi veľké motýle, dĺžka tela je 40 – 50 mm, dĺžka predného krídla je 23 – 30 mm.', 2.8);
INSERT  INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));


INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Hmyz', 'Iné', 'Škorpión kráľovský', 'Marley', 1, 0, 'hmyz, pavúky', 'Je to pravdepodobne najväčší druh šťúra. Škorpión je prispôsobený na život vo veľmi vysokých teplotách, najlepšie zo všetkých živočíchov.', 50);
INSERT  INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Hmyz', 'Iné', 'Vtáčkar Brachypelma Smithi', 'Death', 1, 0, 'cvrčky, myšie holíčatá', 'Pochádza z Mexika. Dospelý pavúk prijíma potravu 1x týždenne, mladý pavúk každý 2 – 3 deň.', 30);
INSERT  INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Hmyz', 'Iné', 'Vtáčkar Grammostoloa Rosea', 'Rose', 1, 0, 'cvrčky, myšie holíčatá', 'Pochádza z Chile, jedná sa o horský druh. Obýva terénne nerovnosti a priehlbni, kde si robí nory.', 30);
INSERT  INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));

INSERT INTO public."petsApp_details" (species, kind, breed, name, age, weight, food, info, price) VALUES('Hmyz', 'Iné', 'Modlivka zelená', 'Granny', 1, 0, 'hmyz', 'Má štíhle telo dlhé 42 – 75 mm. Je jediným hmyzom s priestorovým videním a môže otočiť hlavu až o 180 stupňov.', 20);
INSERT  INTO public."petsApp_pet" (id_user, Fond, id_details) VALUES(0, 0, (SELECT id FROM public."petsApp_details" ORDER BY id DESC LIMIT 1));
