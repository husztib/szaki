-- =============================================================================
-- TESZTADATOK - Jelszó minden felhasználóhoz: jelszo123
-- BCrypt hash: $2a$10$d8kPg08q0kY8UAgskAaa/upU18xez6VjPmXr9s5Vz.LjYMGn2rs0S
-- =============================================================================

-- ===================== SZAKEMBER felhasználók (id: 1-15) =====================
INSERT INTO users (id, email, password_hash, nev, telefon, varos, role, aktiv, letrehozva) VALUES
(1,  'kovacs.peter@email.hu',     '$2a$10$d8kPg08q0kY8UAgskAaa/upU18xez6VjPmXr9s5Vz.LjYMGn2rs0S', 'Kovács Péter',     '+36301234567', 'Budapest',        'SZAKEMBER', true, '2025-03-15 10:00:00'),
(2,  'nagy.istvan@email.hu',      '$2a$10$d8kPg08q0kY8UAgskAaa/upU18xez6VjPmXr9s5Vz.LjYMGn2rs0S', 'Nagy István',      '+36302345678', 'Debrecen',        'SZAKEMBER', true, '2025-04-02 14:30:00'),
(3,  'szabo.laszlo@email.hu',     '$2a$10$d8kPg08q0kY8UAgskAaa/upU18xez6VjPmXr9s5Vz.LjYMGn2rs0S', 'Szabó László',     '+36303456789', 'Szeged',          'SZAKEMBER', true, '2025-04-10 09:15:00'),
(4,  'toth.gabor@email.hu',       '$2a$10$d8kPg08q0kY8UAgskAaa/upU18xez6VjPmXr9s5Vz.LjYMGn2rs0S', 'Tóth Gábor',       '+36304567890', 'Pécs',            'SZAKEMBER', true, '2025-05-01 11:00:00'),
(5,  'horvath.zoltan@email.hu',   '$2a$10$d8kPg08q0kY8UAgskAaa/upU18xez6VjPmXr9s5Vz.LjYMGn2rs0S', 'Horváth Zoltán',   '+36305678901', 'Győr',            'SZAKEMBER', true, '2025-05-20 16:45:00'),
(6,  'varga.tamas@email.hu',      '$2a$10$d8kPg08q0kY8UAgskAaa/upU18xez6VjPmXr9s5Vz.LjYMGn2rs0S', 'Varga Tamás',      '+36306789012', 'Miskolc',         'SZAKEMBER', true, '2025-06-03 08:30:00'),
(7,  'kiss.andras@email.hu',      '$2a$10$d8kPg08q0kY8UAgskAaa/upU18xez6VjPmXr9s5Vz.LjYMGn2rs0S', 'Kiss András',      '+36307890123', 'Budapest',        'SZAKEMBER', true, '2025-06-15 13:00:00'),
(8,  'molnar.ferenc@email.hu',    '$2a$10$d8kPg08q0kY8UAgskAaa/upU18xez6VjPmXr9s5Vz.LjYMGn2rs0S', 'Molnár Ferenc',    '+36308901234', 'Nyíregyháza',     'SZAKEMBER', true, '2025-07-01 10:30:00'),
(9,  'nemeth.attila@email.hu',    '$2a$10$d8kPg08q0kY8UAgskAaa/upU18xez6VjPmXr9s5Vz.LjYMGn2rs0S', 'Németh Attila',    '+36309012345', 'Kecskemét',       'SZAKEMBER', true, '2025-07-20 15:00:00'),
(10, 'balogh.sandor@email.hu',    '$2a$10$d8kPg08q0kY8UAgskAaa/upU18xez6VjPmXr9s5Vz.LjYMGn2rs0S', 'Balogh Sándor',    '+36301122334', 'Székesfehérvár',  'SZAKEMBER', true, '2025-08-05 09:00:00'),
(11, 'farkas.david@email.hu',     '$2a$10$d8kPg08q0kY8UAgskAaa/upU18xez6VjPmXr9s5Vz.LjYMGn2rs0S', 'Farkas Dávid',     '+36302233445', 'Szombathely',     'SZAKEMBER', true, '2025-08-18 14:15:00'),
(12, 'papp.robert@email.hu',      '$2a$10$d8kPg08q0kY8UAgskAaa/upU18xez6VjPmXr9s5Vz.LjYMGn2rs0S', 'Papp Róbert',      '+36303344556', 'Budapest',        'SZAKEMBER', true, '2025-09-01 11:30:00'),
(13, 'takacs.bela@email.hu',      '$2a$10$d8kPg08q0kY8UAgskAaa/upU18xez6VjPmXr9s5Vz.LjYMGn2rs0S', 'Takács Béla',      '+36304455667', 'Debrecen',        'SZAKEMBER', true, '2025-09-15 08:00:00'),
(14, 'juhasz.marton@email.hu',    '$2a$10$d8kPg08q0kY8UAgskAaa/upU18xez6VjPmXr9s5Vz.LjYMGn2rs0S', 'Juhász Márton',    '+36305566778', 'Szeged',          'SZAKEMBER', true, '2025-10-01 16:00:00'),
(15, 'olah.csaba@email.hu',       '$2a$10$d8kPg08q0kY8UAgskAaa/upU18xez6VjPmXr9s5Vz.LjYMGn2rs0S', 'Oláh Csaba',       '+36306677889', 'Pécs',            'SZAKEMBER', true, '2025-10-12 12:00:00');

-- ===================== MEGRENDELŐ felhasználók (id: 16-25) =====================
INSERT INTO users (id, email, password_hash, nev, telefon, varos, role, aktiv, letrehozva) VALUES
(16, 'fekete.anna@email.hu',      '$2a$10$d8kPg08q0kY8UAgskAaa/upU18xez6VjPmXr9s5Vz.LjYMGn2rs0S', 'Fekete Anna',      '+36201234567', 'Budapest',        'MEGRENDELO', true, '2025-04-01 09:00:00'),
(17, 'simon.katalin@email.hu',    '$2a$10$d8kPg08q0kY8UAgskAaa/upU18xez6VjPmXr9s5Vz.LjYMGn2rs0S', 'Simon Katalin',    '+36202345678', 'Debrecen',        'MEGRENDELO', true, '2025-04-15 10:30:00'),
(18, 'racz.eva@email.hu',         '$2a$10$d8kPg08q0kY8UAgskAaa/upU18xez6VjPmXr9s5Vz.LjYMGn2rs0S', 'Rácz Éva',         '+36203456789', 'Szeged',          'MEGRENDELO', true, '2025-05-05 14:00:00'),
(19, 'biro.judit@email.hu',       '$2a$10$d8kPg08q0kY8UAgskAaa/upU18xez6VjPmXr9s5Vz.LjYMGn2rs0S', 'Bíró Judit',       '+36204567890', 'Pécs',            'MEGRENDELO', true, '2025-05-20 11:15:00'),
(20, 'lukacs.maria@email.hu',     '$2a$10$d8kPg08q0kY8UAgskAaa/upU18xez6VjPmXr9s5Vz.LjYMGn2rs0S', 'Lukács Mária',     '+36205678901', 'Győr',            'MEGRENDELO', true, '2025-06-10 09:45:00'),
(21, 'szekely.zsofia@email.hu',   '$2a$10$d8kPg08q0kY8UAgskAaa/upU18xez6VjPmXr9s5Vz.LjYMGn2rs0S', 'Székely Zsófia',   '+36206789012', 'Budapest',        'MEGRENDELO', true, '2025-06-25 16:30:00'),
(22, 'pinter.agnes@email.hu',     '$2a$10$d8kPg08q0kY8UAgskAaa/upU18xez6VjPmXr9s5Vz.LjYMGn2rs0S', 'Pintér Ágnes',     '+36207890123', 'Miskolc',         'MEGRENDELO', true, '2025-07-08 13:00:00'),
(23, 'hegedus.orsolya@email.hu',  '$2a$10$d8kPg08q0kY8UAgskAaa/upU18xez6VjPmXr9s5Vz.LjYMGn2rs0S', 'Hegedűs Orsolya',  '+36208901234', 'Kecskemét',       'MEGRENDELO', true, '2025-07-22 10:00:00'),
(24, 'szucs.petra@email.hu',      '$2a$10$d8kPg08q0kY8UAgskAaa/upU18xez6VjPmXr9s5Vz.LjYMGn2rs0S', 'Szűcs Petra',      '+36209012345', 'Budapest',        'MEGRENDELO', true, '2025-08-10 15:30:00'),
(25, 'mezei.dora@email.hu',       '$2a$10$d8kPg08q0kY8UAgskAaa/upU18xez6VjPmXr9s5Vz.LjYMGn2rs0S', 'Mezei Dóra',       '+36201122334', 'Debrecen',        'MEGRENDELO', true, '2025-08-28 08:45:00');

-- Sequence frissítése
SELECT setval('users_id_seq', 25);

-- ===================== SZAKEMBER PROFILOK (id: 1-15) =====================
INSERT INTO szakember_profil (id, user_id, bemutatkozas, tapasztalat_ev, min_ar, max_ar, munkaterulet) VALUES
(1,  1,  'Több mint 15 éve dolgozom villanyszerelőként Budapesten és környékén. Családi házak, lakások teljes villamos hálózatának kiépítése, felújítása. Okosotthon megoldások telepítése.', 15, 8000, 25000, 'Budapest és 30 km-es körzet'),
(2,  2,  'Megbízható vízszerelő Debrecenben. Csőtörés elhárítás, fürdőszoba felújítás, fűtésszerelés. Hétvégén is elérhető, sürgős esetben akár 1 órán belül.', 10, 6000, 20000, 'Debrecen és Hajdú-Bihar megye'),
(3,  3,  'Festő és burkoló mester Szegeden. Lakások, irodák festése, tapétázás, csempe- és járólapburkolás. Precíz, tiszta munka, referenciákkal.', 12, 5000, 18000, 'Szeged és 50 km-es körzet'),
(4,  4,  'Egyedi bútorok készítése és beépített szekrények, konyhák tervezése és gyártása. Minőségi alapanyagok, 3D tervezés, pontos határidők.', 20, 15000, 50000, 'Pécs és Baranya megye'),
(5,  5,  'Kőműves és burkoló munkák Győrben. Falazás, vakolás, hőszigetelés, térburkolás. Nagy tapasztalat családi házak építésében és felújításában.', 18, 7000, 22000, 'Győr és Győr-Moson-Sopron megye'),
(6,  6,  'Klímaszerelés és karbantartás Miskolcon. Minden márkájú klímaberendezés telepítése, javítása. Energetikai tanácsadás, hőszivattyúk telepítése.', 8, 10000, 35000, 'Miskolc és Borsod-Abaúj-Zemplén megye'),
(7,  7,  'Lakatos munkák: korlátok, kapuk, kerítések, acélszerkezetek gyártása és felszerelése. Hegesztési munkák helyszínen is. Ingyenes felmérés Budapesten.', 14, 10000, 40000, 'Budapest és Pest megye'),
(8,  8,  'Tetőfedő és bádogos munkák. Cserépcsere, tetőfelújítás, ereszcsatorna szerelés, tetőszigetelés. Garanciális munka, biztosítással dolgozom.', 16, 8000, 30000, 'Nyíregyháza és Szabolcs-Szatmár-Bereg megye'),
(9,  9,  'Villanyszerelő és klímaszerelő Kecskeméten. Komplex megoldások: villamos hálózat + klíma egy kézből. Napelem rendszerek telepítése is.', 11, 9000, 28000, 'Kecskemét és Bács-Kiskun megye'),
(10, 10, 'Vízszerelő és kőműves Székesfehérváron. Teljes fürdőszoba felújítás az alapoktól: bontás, falazás, csövezés, burkolás. Kulcsrakész megoldások.', 13, 7000, 25000, 'Székesfehérvár és Fejér megye'),
(11, 11, 'Festő mester Szombathelyen. Belső és külső festés, homlokzatfestés, dekorációs festés. Környezetbarát festékekkel dolgozom, allergiásoknak is ajánlom.', 9, 4000, 15000, 'Szombathely és Vas megye'),
(12, 12, 'Burkoló és festő Budapesten. Csempe, járólap, laminált padló, parketta lerakása. Festés, glettelés, tapétázás. Gyors, pontos munka, tiszta átadás.', 7, 5000, 20000, 'Budapest teljes területe'),
(13, 13, 'Kertész és kertépítő Debrecenben. Kertterezés, növénytelepítés, gyepszőnyeg, öntözőrendszer, kerti utak, térburkolás. Karbantartási szerződés is.', 6, 5000, 25000, 'Debrecen és 40 km-es körzet'),
(14, 14, 'Asztalos és lakatos mester Szegeden. Fa és fém munkák: ajtók, ablakok, bútorok, korlátok, kapuk. Restaurálás, antik bútorok felújítása is.', 22, 12000, 45000, 'Szeged és Csongrád-Csanád megye'),
(15, 15, 'Villanyszerelő és vízszerelő Pécsen. Mindkét szakma egy kézből: teljes lakásfelújítás villamos és vízhálózat. E-számlát adok, garanciával dolgozom.', 10, 7000, 22000, 'Pécs és 30 km-es körzet');

SELECT setval('szakember_profil_id_seq', 15);

-- ===================== SZAKEMBER - SZAKTERÜLET KAPCSOLATOK =====================
-- Szakterületek: 1=Villanyszerelő, 2=Vízszerelő, 3=Festő, 4=Burkoló, 5=Asztalos, 6=Lakatos, 7=Kőműves, 8=Tetőfedő, 9=Klímaszerelő, 10=Kertész
INSERT INTO szakember_szakterulet (szakember_profil_id, szakterulet_id) VALUES
(1, 1),             -- Kovács Péter: Villanyszerelő
(2, 2),             -- Nagy István: Vízszerelő
(3, 3), (3, 4),     -- Szabó László: Festő, Burkoló
(4, 5),             -- Tóth Gábor: Asztalos
(5, 7), (5, 4),     -- Horváth Zoltán: Kőműves, Burkoló
(6, 9),             -- Varga Tamás: Klímaszerelő
(7, 6),             -- Kiss András: Lakatos
(8, 8),             -- Molnár Ferenc: Tetőfedő
(9, 1), (9, 9),     -- Németh Attila: Villanyszerelő, Klímaszerelő
(10, 2), (10, 7),   -- Balogh Sándor: Vízszerelő, Kőműves
(11, 3),            -- Farkas Dávid: Festő
(12, 4), (12, 3),   -- Papp Róbert: Burkoló, Festő
(13, 10),           -- Takács Béla: Kertész
(14, 5), (14, 6),   -- Juhász Márton: Asztalos, Lakatos
(15, 1), (15, 2);   -- Oláh Csaba: Villanyszerelő, Vízszerelő

-- ===================== MUNKÁK (id: 1-20) =====================
INSERT INTO munka (id, megrendelo_id, cim, leiras, varos, statusz, hatarido, letrehozva) VALUES
(1,  16, 'Konyhafestés 2 szobás lakásban',
     'A konyha és az étkező festése szükséges, kb. 35m². A falak jó állapotúak, csak újrafestés kell. Fehér szín, matt festék. Hétvégén is lehet dolgozni.',
     'Budapest', 'NYITOTT', '2026-04-15', '2026-02-01 10:00:00'),
(2,  16, 'Villanyszerelés - konnektorcsere',
     '8 db régi konnektort kell kicserélni biztonságosra egy panellakásban. A vezetékek alumíniumok, lehetőleg az is legyen ellenőrizve.',
     'Budapest', 'NYITOTT', '2026-03-30', '2026-02-05 14:30:00'),
(3,  17, 'Fürdőszoba felújítás komplett',
     'Teljes fürdőszoba felújítás szükséges: régi csempe leverése, új csövezés, új csempe és járólap, szaniterek beszerelése. Méret: 6m². Anyagot mi vesszük.',
     'Debrecen', 'FOLYAMATBAN', '2026-05-01', '2026-01-20 09:00:00'),
(4,  17, 'Kert rendezése tavasszal',
     'Kb. 200m²-es kert tavaszi rendezése: gyepszellőztetés, metszés, új növények ültetése. Öntözőrendszer kialakítása is érdekel.',
     'Debrecen', 'NYITOTT', '2026-04-20', '2026-02-10 11:30:00'),
(5,  18, 'Klíma beszerelés 3 szobába',
     'Három helyiségbe szeretnénk inverteres klímát beszereltetni. A külső egység az erkélyre kerülne. Samsung vagy LG márkát preferálunk.',
     'Szeged', 'NYITOTT', '2026-05-15', '2026-02-12 16:00:00'),
(6,  18, 'Laminált padló lerakása',
     'Két szobában (összesen 40m²) laminált padló lerakása, régi szőnyeg fölé aljzatkiegyenlítés után. Az anyag megvan.',
     'Szeged', 'LEZART', null, '2025-11-15 10:00:00'),
(7,  19, 'Kerítés és kapu készítése',
     'Családi ház köré fém kerítés (30 fm) és kétszárnyú kapu készítése és felszerelése szükséges. Porfestett kivitelben, antracit szín.',
     'Pécs', 'NYITOTT', '2026-06-01', '2026-02-15 09:30:00'),
(8,  19, 'Beépített szekrény a hálóba',
     'Hálószobába beépített szekrény készítése tolóajtóval, kb. 3m széles, 2,5m magas. Fehér és tölgy kombináció. Tervezéssel együtt kérem.',
     'Pécs', 'FOLYAMATBAN', '2026-04-10', '2026-01-10 14:00:00'),
(9,  20, 'Tetőcserép csere vihar után',
     'Vihar után kb. 15-20 cserép megrepedt/leszakadt. Sürgős csere szükséges, mielőtt beázna a padlástér. Betoncserepes tető.',
     'Győr', 'NYITOTT', '2026-03-15', '2026-02-20 08:00:00'),
(10, 20, 'Fűtéscsövek cseréje',
     'Régi acél fűtéscsövek cseréje műanyagra a teljes lakásban (65m²-es tégla lakás). 6 radiátor bekötése. A radiátorokat megtartjuk.',
     'Győr', 'NYITOTT', '2026-04-30', '2026-02-18 13:15:00'),
(11, 21, 'Homlokzat festés családi házon',
     'Kétszintes családi ház homlokzatfestése (kb. 180m²). Előtte kisebb vakolat javítások szükségesek. Állvány biztosítva.',
     'Budapest', 'NYITOTT', '2026-06-30', '2026-02-22 10:45:00'),
(12, 21, 'Napelem rendszer telepítése',
     '10 kW-os napelem rendszer telepítése családi ház tetejére. Érdeklődöm az engedélyeztetés segítségében is. Déli tájolású nyeregtető.',
     'Budapest', 'NYITOTT', '2026-07-15', '2026-02-25 15:00:00'),
(13, 22, 'Vízvezeték-törés javítása SÜRGŐS',
     'A pincében eltört egy vízvezeték cső, szivárog a víz. Sürgős javítás szükséges! Régi galvanizált csövek vannak.',
     'Miskolc', 'LEZART', null, '2025-12-20 07:30:00'),
(14, 22, 'Terasz burkolása',
     'Kb. 25m²-es terasz kültéri burkolása fagyálló járólappal. Az alap betonozott, de aljzatkiegyenlítés kellhet. Vízelvezetés megoldása is kell.',
     'Miskolc', 'NYITOTT', '2026-05-30', '2026-02-14 11:00:00'),
(15, 23, 'Konyhabútor készítése',
     'L alakú konyha berendezése egyedi bútorokkal, kb. 4m + 2,5m. Gránit munkalap, beépíthető gépekhez kivágások. Modern, fehér magasfényű.',
     'Kecskemét', 'NYITOTT', '2026-05-20', '2026-02-08 16:30:00'),
(16, 23, 'Riasztórendszer telepítése',
     'Családi házba riasztórendszer telepítése: mozgásérzékelők (6 db), nyitásérzékelők (4 db), központi egység, mobilértesítés.',
     'Kecskemét', 'NYITOTT', '2026-04-15', '2026-02-19 09:00:00'),
(17, 24, 'Garázs villanyszerelése',
     'Új garázs villamos hálózatának kiépítése: világítás (LED), 3 konnektor, garázskapu motor bekötése. A főelosztóból kell kivinni.',
     'Budapest', 'NYITOTT', '2026-04-01', '2026-02-21 14:30:00'),
(18, 24, 'Fürdőszoba csempe lerakása',
     'Felújított fürdőszobában a csempe és járólap lerakása. 12m² fal + 6m² padló. A régi le van verve, az alap elő van készítve.',
     'Budapest', 'FOLYAMATBAN', '2026-03-25', '2026-02-03 10:00:00'),
(19, 25, 'Gipszkarton álmennyezet',
     'Nappali + konyha (összesen 45m²) gipszkarton álmennyezet készítése beépített LED világítással. Egy szintben, egyszerű kivitel.',
     'Debrecen', 'NYITOTT', '2026-05-10', '2026-02-16 12:00:00'),
(20, 25, 'Kertépítés új házhoz',
     'Újonnan épült ház kertjének kialakítása: gyep (150m²), tuják ültetése, kerti út térburkolattal, automata öntözőrendszer.',
     'Debrecen', 'NYITOTT', '2026-06-15', '2026-02-24 08:30:00');

SELECT setval('munka_id_seq', 20);

-- ===================== MUNKA - SZAKTERÜLET KAPCSOLATOK =====================
INSERT INTO munka_szakterulet (munka_id, szakterulet_id) VALUES
(1, 3),              -- Konyhafestés: Festő
(2, 1),              -- Konnektorcsere: Villanyszerelő
(3, 2), (3, 4),      -- Fürdőszoba felújítás: Vízszerelő, Burkoló
(4, 10),             -- Kert rendezés: Kertész
(5, 9),              -- Klíma beszerelés: Klímaszerelő
(6, 4),              -- Laminált padló: Burkoló
(7, 6),              -- Kerítés és kapu: Lakatos
(8, 5),              -- Beépített szekrény: Asztalos
(9, 8),              -- Tetőcserép csere: Tetőfedő
(10, 2),             -- Fűtéscsövek: Vízszerelő
(11, 3),             -- Homlokzat festés: Festő
(12, 1),             -- Napelem: Villanyszerelő
(13, 2),             -- Vízvezeték-törés: Vízszerelő
(14, 4), (14, 7),    -- Terasz burkolás: Burkoló, Kőműves
(15, 5),             -- Konyhabútor: Asztalos
(16, 1),             -- Riasztó: Villanyszerelő
(17, 1),             -- Garázs villanyszerelés: Villanyszerelő
(18, 4),             -- Fürdőszoba csempe: Burkoló
(19, 7), (19, 1),    -- Gipszkarton + LED: Kőműves, Villanyszerelő
(20, 10);            -- Kertépítés: Kertész

-- ===================== BESZÉLGETÉSEK (id: 1-12) =====================
INSERT INTO beszelgetes (id, user1_id, user2_id, letrehozva) VALUES
(1,  16, 1,  '2026-02-01 12:00:00'),  -- Fekete Anna ↔ Kovács Péter (villanyszerelő BP)
(2,  16, 12, '2026-02-02 10:00:00'),  -- Fekete Anna ↔ Papp Róbert (festő/burkoló BP)
(3,  17, 2,  '2026-01-21 09:30:00'),  -- Simon Katalin ↔ Nagy István (vízszerelő Debrecen)
(4,  17, 13, '2026-02-11 14:00:00'),  -- Simon Katalin ↔ Takács Béla (kertész Debrecen)
(5,  18, 6,  '2026-02-13 08:00:00'),  -- Rácz Éva ↔ Varga Tamás (klímaszerelő)
(6,  19, 7,  '2026-02-16 10:00:00'),  -- Bíró Judit ↔ Kiss András (lakatos)
(7,  19, 4,  '2026-01-11 15:00:00'),  -- Bíró Judit ↔ Tóth Gábor (asztalos Pécs)
(8,  20, 8,  '2026-02-20 09:00:00'),  -- Lukács Mária ↔ Molnár Ferenc (tetőfedő)
(9,  22, 2,  '2025-12-20 08:00:00'),  -- Pintér Ágnes ↔ Nagy István (vízszerelő - sürgős)
(10, 23, 9,  '2026-02-19 10:00:00'),  -- Hegedűs Orsolya ↔ Németh Attila (villany+klíma)
(11, 24, 1,  '2026-02-21 15:30:00'),  -- Szűcs Petra ↔ Kovács Péter (villanyszerelő BP)
(12, 25, 13, '2026-02-25 09:00:00');  -- Mezei Dóra ↔ Takács Béla (kertész Debrecen)

SELECT setval('beszelgetes_id_seq', 12);

-- ===================== ÜZENETEK (id: 1-50) =====================
-- Beszélgetés 1: Fekete Anna ↔ Kovács Péter (villanyszerelő)
INSERT INTO uzenet (id, beszelgetes_id, kuldo_id, tartalom, olvasva, kuldve) VALUES
(1,  1, 16, 'Szia! Láttam a profilodat, konnektorokat kellene cserélni a lakásomban. Mikor tudnál jönni felmérni?', true, '2026-02-01 12:00:00'),
(2,  1, 1,  'Szia Anna! Szívesen segítek. Hány konnektor cseréjéről van szó, és hol van a lakás?', true, '2026-02-01 12:15:00'),
(3,  1, 16, '8 darab, XIII. kerületben vagyunk. Panellakás, alumínium vezetékek.', true, '2026-02-01 12:20:00'),
(4,  1, 1,  'Értem, alumínium vezetéknél fontos a megfelelő csatlakozó. A felmérés ingyenes. Jövő kedden 14:00-kor megfelel?', true, '2026-02-01 12:30:00'),
(5,  1, 16, 'Tökéletes, kedd 14:00 jó lesz! Küldöm a pontos címet privátban.', true, '2026-02-01 12:35:00'),

-- Beszélgetés 2: Fekete Anna ↔ Papp Róbert (festő)
(6,  2, 16, 'Jó napot! A konyhát és az étkezőt szeretnénk kifestetni, kb. 35m². Mennyi lenne az ára?', true, '2026-02-02 10:00:00'),
(7,  2, 12, 'Jó napot! Mennyezet is kell, vagy csak falak? És milyen állapotban vannak a falak?', true, '2026-02-02 10:20:00'),
(8,  2, 16, 'Falak és mennyezet is. A falak jó állapotúak, nem kell glettelni, csak festeni.', true, '2026-02-02 10:25:00'),
(9,  2, 12, 'Ha csak festés kell, két réteg prémium matt festékkel kb. 85.000-90.000 Ft lenne anyaggal együtt. 2 nap munka.', true, '2026-02-02 10:35:00'),
(10, 2, 16, 'Az belefér! Mikor tudnál kezdeni?', false, '2026-02-02 10:40:00'),

-- Beszélgetés 3: Simon Katalin ↔ Nagy István (fürdőszoba felújítás)
(11, 3, 17, 'Üdvözlöm! Teljes fürdőszoba felújítást szeretnénk. Láttam hogy Debrecenben dolgozik.', true, '2026-01-21 09:30:00'),
(12, 3, 2,  'Üdvözlöm! Igen, Debrecenben és környékén dolgozom. Mekkora a fürdőszoba és mi a jelenlegi állapota?', true, '2026-01-21 09:45:00'),
(13, 3, 17, 'Kb. 6m², régi csempe van, ami le kell verni. Új csövezés is kellene, mert régiek a csövek.', true, '2026-01-21 10:00:00'),
(14, 3, 2,  'Értem. A teljes felújítás (bontás, csövezés, burkolás, szaniter szerelés) kb. 450-550 ezer Ft munkadíj. Az anyag nincs benne. Ráérek jövő héten felmérni.', true, '2026-01-21 10:15:00'),
(15, 3, 17, 'Az elfogadható. Csütörtökön délelőtt jó lenne a felmérés.', true, '2026-01-21 10:20:00'),
(16, 3, 2,  'Csütörtök 10:00 megfelel. Kérem a címet és a kapucsengő számát.', true, '2026-01-21 10:25:00'),
(17, 3, 17, 'Egyetem sugárút 45., 3. emelet 12. Csengő: 312. Köszönöm!', true, '2026-01-21 10:30:00'),

-- Beszélgetés 4: Simon Katalin ↔ Takács Béla (kertész)
(18, 4, 17, 'Szia! Tavasszal szeretnénk rendbe rakatni a kertet. Te csinálsz öntözőrendszert is?', true, '2026-02-11 14:00:00'),
(19, 4, 13, 'Szia! Igen, öntözőrendszer telepítést is vállalok. Mekkora a kert és mire gondoltál pontosan?', true, '2026-02-11 14:20:00'),
(20, 4, 17, 'Kb. 200m². Gyepszellőztetés, metszés, új növények, és az öntöző kiépítése.', true, '2026-02-11 14:30:00'),
(21, 4, 13, 'Azt tudom vállalni! A komplett munkára (öntözővel együtt) kb. 350-400 ezer Ft, növényektől függően. Április elején lehetne kezdeni.', false, '2026-02-11 14:45:00'),

-- Beszélgetés 5: Rácz Éva ↔ Varga Tamás (klímaszerelő)
(22, 5, 18, 'Jó napot! 3 szobába kellene inverteres klíma. Samsung vagy LG preferált. Tud ajánlatot adni?', true, '2026-02-13 08:00:00'),
(23, 5, 6,  'Jó napot! Milyen méretű szobákról van szó? A külső egység hova kerülne?', true, '2026-02-13 08:30:00'),
(24, 5, 18, '20m², 16m² és 14m². A külső egységet az erkélyre gondoltuk.', true, '2026-02-13 08:40:00'),
(25, 5, 6,  'Samsunggal kalkulálva: 3 beltéri + 1 multi kültéri egység, telepítéssel együtt kb. 850-950 ezer Ft. A pontos ár a csőhosszaktól függ.', true, '2026-02-13 09:00:00'),
(26, 5, 18, 'Köszönöm, ez elfogadható. Mikor lenne elérhető?', false, '2026-02-13 09:10:00'),

-- Beszélgetés 6: Bíró Judit ↔ Kiss András (lakatos - kerítés)
(27, 6, 19, 'Szia! Kerítést és kaput szeretnénk csináltatni. Pécsen lakom de láttam hogy Pest megyében dolgozol. Eljönnél Pécsre?', true, '2026-02-16 10:00:00'),
(28, 6, 7,  'Szia! Sajnos Pécsre nem tudok lemenni. De ajánlom a helyi szakembereket, biztosan találsz jó lakatost arra is.', true, '2026-02-16 10:30:00'),
(29, 6, 19, 'Értem, köszi a választ!', true, '2026-02-16 10:35:00'),

-- Beszélgetés 7: Bíró Judit ↔ Tóth Gábor (asztalos - beépített szekrény)
(30, 7, 19, 'Jó napot! Hálószobába beépített szekrényt szeretnénk tolóajtóval. Tud segíteni?', true, '2026-01-11 15:00:00'),
(31, 7, 4,  'Jó napot! Természetesen, ez az egyik fő profilom. Milyen méretekre gondol?', true, '2026-01-11 15:15:00'),
(32, 7, 19, 'Kb. 3m széles, plafonig érő (2,5m). Fehér és tölgy kombináció, tolóajtóval.', true, '2026-01-11 15:20:00'),
(33, 7, 4,  'Szép kombináció! 3D-ben megtervezem, így látni fogja előre. A szekrény 380-420 ezer Ft körül lesz a mérettől és a belső kialakítástól függően.', true, '2026-01-11 15:30:00'),
(34, 7, 19, 'Nagyon jó, kérem a tervezést! Mikor tud jönni felmérni?', true, '2026-01-11 15:35:00'),
(35, 7, 4,  'Jövő hétfőn délelőtt szabad vagyok. Megfelel?', true, '2026-01-11 15:40:00'),
(36, 7, 19, 'Hétfő délelőtt tökéletes!', true, '2026-01-11 15:45:00'),

-- Beszélgetés 8: Lukács Mária ↔ Molnár Ferenc (tetőfedő)
(37, 8, 20, 'Sürgős! Tegnap a viharban megsérült a tető, kb. 15-20 cserép. Tudna segíteni?', true, '2026-02-20 09:00:00'),
(38, 8, 8,  'Sajnos Győrbe nem tudok kimenni, Nyíregyháza és környéke az én területem. Kérem keressen helyi tetőfedőt, ez tényleg sürgős!', true, '2026-02-20 09:15:00'),
(39, 8, 20, 'Köszönöm a gyors választ, keresek mást!', true, '2026-02-20 09:20:00'),

-- Beszélgetés 9: Pintér Ágnes ↔ Nagy István (sürgős vízszerelés)
(40, 9, 22, 'SÜRGŐS! A pincében eltört egy cső, ömlik a víz! Tud jönni?', true, '2025-12-20 08:00:00'),
(41, 9, 2,  'Jövök azonnal! Mi a pontos cím? A főcsapot zárja el addig!', true, '2025-12-20 08:05:00'),
(42, 9, 22, 'Vörösmarty u. 23, Miskolc. A főcsap el van zárva, köszi!', true, '2025-12-20 08:07:00'),
(43, 9, 2,  'Sajnos Miskolcra nem tudok kimenni, Debrecenben és környékén dolgozom. Hívjon helyi vízszerelőt sürgősen!', true, '2025-12-20 08:10:00'),

-- Beszélgetés 10: Hegedűs Orsolya ↔ Németh Attila (riasztó + klíma)
(44, 10, 23, 'Jó napot! Riasztórendszert és klímát is szeretnék telepíttetni. Olvastam hogy mindkettővel foglalkozik.', true, '2026-02-19 10:00:00'),
(45, 10, 9,  'Jó napot! Igen, mindkettőt vállalom. A klíma a szakterületem, riasztóhoz van egy partner cégem akivel együtt dolgozunk.', true, '2026-02-19 10:20:00'),
(46, 10, 23, 'Az is jó! Mikor tudnánk egyeztetni a részletekről?', false, '2026-02-19 10:30:00'),

-- Beszélgetés 11: Szűcs Petra ↔ Kovács Péter (garázs villanyszerelés)
(47, 11, 24, 'Szia! Új garázs villanyszerelésére keresek valakit. LED világítás, konnektorok, garázskapu motor bekötése.', true, '2026-02-21 15:30:00'),
(48, 11, 1,  'Szia! Ezt szívesen megcsinálom. Hol van a garázs és a főelosztó milyen messze van tőle?', true, '2026-02-21 15:45:00'),
(49, 11, 24, 'XI. kerület, a garázs a ház mellett van, kb. 8 méter a főelosztótól.', false, '2026-02-21 16:00:00'),

-- Beszélgetés 12: Mezei Dóra ↔ Takács Béla (kertépítés)
(50, 12, 25, 'Szia! Újonnan épített házhoz kellene komplett kertépítés. Gyep, tuják, öntözőrendszer, kerti út. Megcsinálnád?', false, '2026-02-25 09:00:00');

SELECT setval('uzenet_id_seq', 50);

-- ===================== ÉRTÉKELÉSEK (id: 1-25) =====================
INSERT INTO ertekeles (id, ertekelo_id, ertekelt_id, pontszam, szoveg, letrehozva) VALUES
-- Kovács Péter (villanyszerelő) értékelései
(1,  16, 1,  5, 'Kiváló szakember! Precíz, pontos, tisztán dolgozik. A konnektorcsere gyorsan megvolt, mindent elmagyarázott. Csak ajánlani tudom!', '2025-09-15 18:00:00'),
(2,  21, 1,  5, 'Péter nagyon profi, a napelem rendszert tökéletesen telepítette. Türelmes volt a kérdéseinkkel és segített az engedélyeztetésben is.', '2025-10-20 14:30:00'),
(3,  24, 1,  4, 'Jó munkát végzett, de a megbeszélt időponthoz képest 30 percet késett. A munka minőségével viszont nagyon elégedett vagyok.', '2025-11-05 16:00:00'),

-- Nagy István (vízszerelő) értékelései
(4,  17, 2,  5, 'A fürdőszoba felújítás tökéletes lett! Nagyon alapos, megbízható mester. A csövezés minősége kiemelkedő.', '2025-08-10 12:00:00'),
(5,  22, 2,  4, 'Gyors és hatékony munka, bár az árajánlat kicsit magasabb volt a vártnál. A végeredmény viszont kiváló.', '2025-12-22 10:00:00'),

-- Szabó László (festő/burkoló) értékelései
(6,  18, 3,  5, 'A laminált padló lerakása tökéletes lett! Gyors, precíz munka. A díjat előre megbeszéltük és tartotta magát hozzá.', '2025-12-01 15:00:00'),
(7,  16, 3,  4, 'Szép munkát végzett a festéssel, de a takarítás nem volt tökéletes. Összességében elégedett vagyok.', '2025-07-20 11:00:00'),

-- Tóth Gábor (asztalos) értékelései
(8,  19, 4,  5, 'Mesteri munka! A beépített szekrény gyönyörű lett, a 3D tervezés nagyon hasznos volt. Mindenkinek ajánlom!', '2025-06-15 17:00:00'),
(9,  23, 4,  5, 'A konyhabútor álmaink netovábbja lett. Tóth úr igazi művész, a részletekre is odafigyel. Korrekt ár, pontos határidő.', '2025-09-01 13:00:00'),
(10, 20, 4,  4, 'Nagyon szép bútorok, de a szállítás csúszott egy hetet. A minőségre viszont semmi panasz.', '2025-11-10 09:00:00'),

-- Horváth Zoltán (kőműves/burkoló) értékelései
(11, 20, 5,  5, 'A térburkolat tökéletesen sikerült. Zoltán nagyon tapasztalt, mindent precízen csinál. A legjobb kőműves Győrben!', '2025-10-05 14:00:00'),
(12, 21, 5,  5, 'Homlokzatszigetelés és vakolás - minden profi szinten. Betartotta a határidőt és az árat is.', '2025-08-25 16:00:00'),

-- Varga Tamás (klímaszerelő) értékelései
(13, 18, 6,  4, 'A klíma jól működik, a telepítés rendben volt. Kicsit drágább volt mint a többi ajánlat, de a minőség jó.', '2025-09-20 11:00:00'),
(14, 22, 6,  5, 'Kiváló klímaszerelő! Tisztán dolgozott, mindent elmagyarázott a kezelésről. A szerviz is gyors volt.', '2025-11-15 15:30:00'),

-- Kiss András (lakatos) értékelései
(15, 21, 7,  5, 'A korlát gyönyörű lett! Egyedi tervezés, precíz hegesztés, szép porfestés. Profi munka!', '2025-07-12 10:00:00'),
(16, 16, 7,  4, 'A kapu szép lett, de az automatika beállítása nem volt tökéletes először. Visszajött és megcsinálta ingyen. Korrekt.', '2025-10-30 13:00:00'),

-- Molnár Ferenc (tetőfedő) értékelései
(17, 25, 8,  5, 'Megbízható tetőfedő! A cserépcsere gyorsan megvolt, azóta semmi probléma. Garancia is van rá.', '2025-08-15 09:00:00'),

-- Németh Attila (villany+klíma) értékelései
(18, 23, 9,  5, 'A napelem rendszer telepítése profi volt. Attila mindent egy kézből megoldott, a klímát is ő szerelte. Remek szakember!', '2025-12-10 14:00:00'),

-- Balogh Sándor (vízszerelő/kőműves) értékelései
(19, 20, 10, 4, 'A fürdőszoba felújítás összességében jól sikerült. Apró részleteken lehetett volna javítani, de az ár-érték arány jó.', '2025-11-20 11:00:00'),

-- Farkas Dávid (festő) értékelései
(20, 22, 11, 5, 'Fantasztikus festő! A dekorációs festés meseszép lett. Környezetbarát festékeket használ, ami fontos volt nekünk a gyerekek miatt.', '2025-10-08 16:00:00'),

-- Papp Róbert (burkoló/festő) értékelései
(21, 16, 12, 5, 'Róbert a legjobb burkoló Budapesten! A csempe tökéletesen illeszkedik, a fugázás hibátlan. Tisztán is hagy maga után.', '2025-09-25 12:00:00'),
(22, 24, 12, 4, 'A festés szép lett, de kicsit több időbe telt a vártnál. A végeredmény viszont tökéletes.', '2025-12-05 10:00:00'),

-- Takács Béla (kertész) értékelései
(23, 17, 13, 5, 'Béla csodálatos kertet varázsoltatott nekünk! Az öntözőrendszer is tökéletesen működik. Nagyon profi és kedves.', '2025-09-30 15:00:00'),
(24, 25, 13, 4, 'A gyepszőnyeg szépen megeredt, a növények is jól fejlődnek. Az ár a felsőbb kategóriás, de megéri.', '2025-10-15 11:00:00'),

-- Juhász Márton (asztalos/lakatos) értékelései
(25, 18, 14, 5, 'Márton egy igazi polihisztor! Az antik szekrényt gyönyörűen restaurálta, és a fém vasalatokat is ő készítette. Ritka tehetség!', '2025-11-25 14:00:00');

SELECT setval('ertekeles_id_seq', 25);

-- ===================== ÉRTÉKELÉS VÁLASZOK (id: 1-15) =====================
INSERT INTO ertekeles_valasz (id, ertekeles_id, szoveg, letrehozva) VALUES
(1,  1,  'Köszönöm szépen az értékelést, Anna! Örülök hogy elégedett a munkámmal. Ha bármikor szüksége van villanyszerelőre, szívesen állok rendelkezésre!', '2025-09-16 09:00:00'),
(2,  3,  'Köszönöm a visszajelzést! Sajnálom a késést, forgalmi dugó miatt történt. Igyekszem a jövőben pontosabb lenni. Örülök hogy a munka tetszett!', '2025-11-06 10:00:00'),
(3,  4,  'Nagyon köszönöm a kedves szavakat! A fürdőszoba felújítás összetett munka, igyekeztem a legjobb minőséget nyújtani.', '2025-08-11 08:30:00'),
(4,  5,  'Köszönöm az értékelést! Az árak az anyagminőséget is tükrözik, mindig prémium csöveket és szerelvényeket használok.', '2025-12-23 09:00:00'),
(5,  6,  'Köszönöm Éva! A precizitás számomra a legfontosabb. Remélem a padló sokáig szolgálja Önöket!', '2025-12-02 10:00:00'),
(6,  8,  'Nagyon köszönöm Judit! Öröm volt dolgozni a projektjén. A 3D tervezés valóban sokat segít, hogy az ügyfél előre lássa a végeredményt.', '2025-06-16 11:00:00'),
(7,  9,  'Hálás vagyok a szép értékelésért! A konyhabútor készítés mindig különleges feladat, mert az a ház szíve. Örülök hogy elégedettek!', '2025-09-02 14:00:00'),
(8,  11, 'Köszönöm a bizalmat és a szép szavakat! Győrben mindig szívesen dolgozom.', '2025-10-06 09:00:00'),
(9,  13, 'Köszönöm az értékelést! Az áraim a minőségi alkatrészeket is tartalmazzák, ezért lehetnek kicsit magasabbak. Örülök hogy elégedett!', '2025-09-21 10:00:00'),
(10, 15, 'Köszönöm szépen! A korlátot nagy szeretettel készítettem, örülök hogy tetszik!', '2025-07-13 08:00:00'),
(11, 17, 'Köszönöm! A garanciát komolyan vesszük, ha bármi gond lenne, hívjon bátran!', '2025-08-16 09:00:00'),
(12, 18, 'Köszönöm Orsolya! A komplex megoldások (villany + klíma) valóban praktikusak, mert egy ember koordinálja az egészet.', '2025-12-11 10:00:00'),
(13, 21, 'Köszönöm Anna! A tisztaság nekem is fontos, mindig letakarok mindent és a végén kitakarítok.', '2025-09-26 11:00:00'),
(14, 23, 'Köszönöm a kedves értékelést Katalin! A kert az ember második nappalija, igyekeztem szépet alkotni.', '2025-10-01 09:00:00'),
(15, 25, 'Hálás vagyok ezért az értékelésért! Az antik bútorok restaurálása a szenvedélyem, minden darabot egyedileg kezelek.', '2025-11-26 10:00:00');

SELECT setval('ertekeles_valasz_id_seq', 15);

-- Megrendelők is kapnak értékelést a szakemberektől
INSERT INTO ertekeles (id, ertekelo_id, ertekelt_id, pontszam, szoveg, letrehozva) VALUES
(26, 1,  16, 5, 'Nagyon korrekt megrendelő. Pontosan leírta mit szeretne, és a fizetés is azonnal megvolt.', '2025-09-16 10:00:00'),
(27, 2,  17, 5, 'Katalin nagyon kedves és együttműködő megrendelő volt. Az anyagokat időben beszerezte, a határidőket tartotta.', '2025-08-12 09:00:00'),
(28, 3,  18, 5, 'Éva precízen kommunikált, tudta mit szeretne. Az anyagválasztásban is jó döntéseket hozott.', '2025-12-02 11:00:00'),
(29, 4,  19, 5, 'Judit rugalmas és megértő volt a projekt során. A beépített szekrény tervezésénél jó ötletei voltak.', '2025-06-17 10:00:00'),
(30, 5,  20, 4, 'Mária alapvetően jó megrendelő, de néhányszor változtatott a terveken menet közben. Ettől eltekintve minden rendben volt.', '2025-10-07 14:00:00');

SELECT setval('ertekeles_id_seq', 30);

INSERT INTO ertekeles_valasz (id, ertekeles_id, szoveg, letrehozva) VALUES
(16, 26, 'Köszönöm Péter! Nagyon elégedett voltam a munkáddal, szívesen dolgozom veled újra!', '2025-09-17 09:00:00'),
(17, 27, 'Köszönöm István! Nagyon profi munkát végzett, bármikor újra Önhöz fordulnék!', '2025-08-13 10:00:00'),
(18, 29, 'Köszönöm Gábor! A szekrény gyönyörű lett, tényleg jó volt együtt dolgozni!', '2025-06-18 11:00:00');

SELECT setval('ertekeles_valasz_id_seq', 18);
