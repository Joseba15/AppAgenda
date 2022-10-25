CREATE TABLE usuario(
	nombreUsuario VARCHAR(20),
	contrasena VARCHAR(25),
	CONSTRAINT pk_usuario PRIMARY KEY (nombreUsuario)
);

CREATE TABLE evento (
	id INT,
	descripcion VARCHAR(800),
	nombreUsuario VARCHAR(30),
	fecha DATE,
	hora DOUBLE,
	activo BOOLEAN,
	
	
	CONSTRAINT fk_evento FOREIGN KEY (nombreUsuario) REFERENCES usuario(nombreUsuario),
	CONSTRAINT pk_evento PRIMARY KEY (id)
);


ALTER TABLE evento MODIFY id INT AUTO_INCREMENT;

SELECT * from evento e  ;

insert into usuario (userId, nombreUsuario, contrasena) values (2, 'srosterne1', 'ycEdjv5Wa');
insert into usuario (userId, nombreUsuario, contrasena) values (3, 'ofenne2', 'Ikq79f');
insert into usuario (userId, nombreUsuario, contrasena) values (4, 'bspeechley3', 'Sz0NNlq');
insert into usuario (userId, nombreUsuario, contrasena) values (5, 'gjanic4', 'wGEP0iFFtAwi');
insert into usuario (userId, nombreUsuario, contrasena) values (6, 'gcawdron5', '4AOfITz');
insert into usuario (userId, nombreUsuario, contrasena) values (7, 'ipratley6', 'JWoQ1a');
insert into usuario (userId, nombreUsuario, contrasena) values (8, 'cirnys7', 'JuEpVCC');
insert into usuario (userId, nombreUsuario, contrasena) values (9, 'jcavilla8', '7zwBSKM');
insert into usuario (userId, nombreUsuario, contrasena) values (10, 'helner9', '0FNrXyPFkG1');
insert into usuario (userId, nombreUsuario, contrasena) values (11, 'gpymera', 'qJrG6P3afGO7');
insert into usuario (userId, nombreUsuario, contrasena) values (12, 'pvynallb', 'La2WpgUZ');
insert into usuario (userId, nombreUsuario, contrasena) values (13, 'asowtec', '0mTQRlWEVs');
insert into usuario (userId, nombreUsuario, contrasena) values (14, 'mguerrierid', 'PqXWAcvFUq1Z');
insert into usuario (userId, nombreUsuario, contrasena) values (15, 'lgephearte', 'IewebfVcE');
insert into usuario (userId, nombreUsuario, contrasena) values (16, 'gmackillf', 'lGBMUYuCDhLV');
insert into usuario (userId, nombreUsuario, contrasena) values (17, 'afrangioneg', 'utB5ni');
insert into usuario (userId, nombreUsuario, contrasena) values (18, 'hcalcutth', 'A0MUnV76hmOc');
insert into usuario (userId, nombreUsuario, contrasena) values (19, 'wreali', '04VimJB');
insert into usuario (userId, nombreUsuario, contrasena) values (20, 'climpkinj', 'll21B55vwT0');
insert into usuario (userId, nombreUsuario, contrasena) values (21, 'lsyddonk', '7A4UOdwCYW');
insert into usuario (userId, nombreUsuario, contrasena) values (22, 'bbeauchampl', 'lBvlui');
insert into usuario (userId, nombreUsuario, contrasena) values (23, 'cmccaskellm', 'o1oQIGm0snl');
insert into usuario (userId, nombreUsuario, contrasena) values (24, 'melnorn', 'g8aqA86');
insert into usuario (userId, nombreUsuario, contrasena) values (25, 'kleggateo', '1HDpZzxtY4');
insert into usuario (userId, nombreUsuario, contrasena) values (26, 'tphilippsohnp', 'zp9L47Kno1Lr');
insert into usuario (userId, nombreUsuario, contrasena) values (27, 'sbradburnq', '9pgDlGsoc');
insert into usuario (userId, nombreUsuario, contrasena) values (28, 'tmckinnar', 'QoMFNri');
insert into usuario (userId, nombreUsuario, contrasena) values (29, 'ogruszczaks', 'dG2otyABgqSW');
insert into usuario (userId, nombreUsuario, contrasena) values (30, 'hpelet', 'aZL55QxK8VsT');
insert into usuario (userId, nombreUsuario, contrasena) values (31, 'lpinneru', 'hzbNKqfmzhC');
insert into usuario (userId, nombreUsuario, contrasena) values (32, 'esawlev', 'PQuu2aKy');
insert into usuario (userId, nombreUsuario, contrasena) values (33, 'jsporrijw', 'IQAQjFgGUhO');
insert into usuario (userId, nombreUsuario, contrasena) values (34, 'cnenox', '6acWKvPmLc');
insert into usuario (userId, nombreUsuario, contrasena) values (35, 'sbuzeky', '6jqUYCt');
insert into usuario (userId, nombreUsuario, contrasena) values (36, 'chellierz', 'dDbw8NQIX1I');
insert into usuario (userId, nombreUsuario, contrasena) values (37, 'oogelsby10', 'uXyHjHG');
insert into usuario (userId, nombreUsuario, contrasena) values (38, 'askelhorne11', 'JQYPk4An');
insert into usuario (userId, nombreUsuario, contrasena) values (39, 'aolyff12', 'KYoAJi');
insert into usuario (userId, nombreUsuario, contrasena) values (40, 'mflorio13', 'X3PjmNnWf86T');
insert into usuario (userId, nombreUsuario, contrasena) values (41, 'fhawes14', 'D0gipy');
insert into usuario (userId, nombreUsuario, contrasena) values (42, 'anoli15', 'xqo3lhwtW');
insert into usuario (userId, nombreUsuario, contrasena) values (43, 'tbradick16', 'S4AJVMfvr7KK');
insert into usuario (userId, nombreUsuario, contrasena) values (44, 'ctoal17', 'bzSYHKweEV');
insert into usuario (userId, nombreUsuario, contrasena) values (45, 'porgan18', 'uAUcnC6');
insert into usuario (userId, nombreUsuario, contrasena) values (46, 'swrout19', 'uwhlje69JAL');
insert into usuario (userId, nombreUsuario, contrasena) values (47, 'ndaysh1a', '8q83Lh');
insert into usuario (userId, nombreUsuario, contrasena) values (48, 'cliversidge1b', '1gEr8yaGkoxp');
insert into usuario (userId, nombreUsuario, contrasena) values (49, 'pblinco1c', 'RBEwaJnz');
insert into usuario (userId, nombreUsuario, contrasena) values (50, 'rcalow1d', 'no0frLpFRS18');
insert into usuario (userId, nombreUsuario, contrasena) values (51, 'fdunsleve1e', 'zFpueg');
insert into usuario (userId, nombreUsuario, contrasena) values (52, 'bgosse1f', 'H8uOlMq');
insert into usuario (userId, nombreUsuario, contrasena) values (53, 'lstafford1g', 'mwAveQubCHz');
insert into usuario (userId, nombreUsuario, contrasena) values (54, 'egierth1h', 'Kj8TvM');
insert into usuario (userId, nombreUsuario, contrasena) values (55, 'malldis1i', 'O3ANuNa');
insert into usuario (userId, nombreUsuario, contrasena) values (56, 'kattard1j', 'rBD2Zzf');
insert into usuario (userId, nombreUsuario, contrasena) values (57, 'bhoulridge1k', '3HyFC0EozyjC');
insert into usuario (userId, nombreUsuario, contrasena) values (58, 'vthrush1l', 'KXFvKZk9');
insert into usuario (userId, nombreUsuario, contrasena) values (59, 'ltroak1m', '4d7mVhsCeN');
insert into usuario (userId, nombreUsuario, contrasena) values (60, 'mscalera1n', 'r00Res');
insert into usuario (userId, nombreUsuario, contrasena) values (61, 'kgerhold1o', 'hYXUcUWjXyd');
insert into usuario (userId, nombreUsuario, contrasena) values (62, 'bspivie1p', 'aYub8erLQ6YQ');
insert into usuario (userId, nombreUsuario, contrasena) values (63, 'zisham1q', '52ejVXxOG');
insert into usuario (userId, nombreUsuario, contrasena) values (64, 'crylatt1r', 'MUafsKVJZ');
insert into usuario (userId, nombreUsuario, contrasena) values (65, 'tsharpous1s', '07agDi');
insert into usuario (userId, nombreUsuario, contrasena) values (66, 'fantos1t', 'JcdBnR');
insert into usuario (userId, nombreUsuario, contrasena) values (67, 'imerrall1u', '9dPHGqTIKk');
insert into usuario (userId, nombreUsuario, contrasena) values (68, 'aheineke1v', 'g1WYF75PTjxO');
insert into usuario (userId, nombreUsuario, contrasena) values (69, 'rburgane1w', 'rjitebMeUEiu');
insert into usuario (userId, nombreUsuario, contrasena) values (70, 'wbtham1x', 'a221cz0WISC');
insert into usuario (userId, nombreUsuario, contrasena) values (71, 'kroache1y', 'w5Iv2tCh9');
insert into usuario (userId, nombreUsuario, contrasena) values (72, 'bmaden1z', 'HA1WjXnHGfE');
insert into usuario (userId, nombreUsuario, contrasena) values (73, 'pmckerley20', '0PD5BNE');
insert into usuario (userId, nombreUsuario, contrasena) values (74, 'tzink21', 'MhjGOWt2');
insert into usuario (userId, nombreUsuario, contrasena) values (75, 'doles22', 'Uycuub71qL3');
insert into usuario (userId, nombreUsuario, contrasena) values (76, 'emichelmore23', '9yBET7wt');
insert into usuario (userId, nombreUsuario, contrasena) values (77, 'tsyddall24', 'OPl7YAkS');
insert into usuario (userId, nombreUsuario, contrasena) values (78, 'bbyars25', 'apOYuYyx4');
insert into usuario (userId, nombreUsuario, contrasena) values (79, 'hedworthie26', 'WhyilCXVmSTg');
insert into usuario (userId, nombreUsuario, contrasena) values (80, 'smussen27', 'EjoZ2Q4');
insert into usuario (userId, nombreUsuario, contrasena) values (81, 'llundie28', 'hJB10G1y2L');
insert into usuario (userId, nombreUsuario, contrasena) values (82, 'lotuohy29', 'QqR3hozf4veo');
insert into usuario (userId, nombreUsuario, contrasena) values (83, 'bsowthcote2a', 'OYsPMS');
insert into usuario (userId, nombreUsuario, contrasena) values (84, 'aepinoy2b', '2deYaFZ');
insert into usuario (userId, nombreUsuario, contrasena) values (85, 'mjerrems2c', 'CejwmznGm');
insert into usuario (userId, nombreUsuario, contrasena) values (86, 'cgrebbin2d', 'XFdJ5AkmAy');
insert into usuario (userId, nombreUsuario, contrasena) values (87, 'edungay2e', 'cJzTE82T48d');
insert into usuario (userId, nombreUsuario, contrasena) values (88, 'anind2f', 'ghyyPv');
insert into usuario (userId, nombreUsuario, contrasena) values (89, 'ifenkel2g', 'On3o1W');
insert into usuario (userId, nombreUsuario, contrasena) values (90, 'wsantoro2h', 'BfeTkkEz');
insert into usuario (userId, nombreUsuario, contrasena) values (91, 'bkeightley2i', 'Cqxgb73Q');
insert into usuario (userId, nombreUsuario, contrasena) values (92, 'hseacroft2j', 'oxzXdv8P8aQ');
insert into usuario (userId, nombreUsuario, contrasena) values (93, 'bchese2k', 'zVcUL1PFll');
insert into usuario (userId, nombreUsuario, contrasena) values (94, 'rbisp2l', 'Pa0LS69A');
insert into usuario (userId, nombreUsuario, contrasena) values (95, 'rashling2m', 'FBfG374');
insert into usuario (userId, nombreUsuario, contrasena) values (96, 'jmewitt2n', 'loCSvII');
insert into usuario (userId, nombreUsuario, contrasena) values (97, 'dbodell2o', 'DH4SaavAB');
insert into usuario (userId, nombreUsuario, contrasena) values (98, 'alemonby2p', 'XeLJdp4RwM1G');
insert into usuario (userId, nombreUsuario, contrasena) values (99, 'mclougher2q', 'AbPNKCf99');
insert into usuario (userId, nombreUsuario, contrasena) values (100, 'drockcliffe2r', 'VSzX9uVx3Kv');


insert into evento (id, descripcion, fecha, hora, activo, userId) values (14, 'Elephas maximus bengalensis', '2024-05-09', 0.65, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (15, 'Manouria emys', '2023-09-15', 14.76, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (16, 'Chionis alba', '2022-11-07', 21.04, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (17, 'Crotalus cerastes', '2023-05-03', 19.21, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (18, 'Bettongia penicillata', '2023-12-15', 19.48, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (19, 'Falco peregrinus', '2024-03-30', 7.34, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (20, 'Pterocles gutturalis', '2024-03-27', 19.02, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (21, 'Phalaropus lobatus', '2023-08-02', 23.09, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (22, 'Trachyphonus vaillantii', '2023-11-03', 7.34, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (23, 'Morelia spilotes variegata', '2023-02-22', 6.95, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (24, 'Thalasseus maximus', '2023-04-15', 6.6, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (25, 'Eubalaena australis', '2024-02-05', 5.87, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (26, 'Anhinga rufa', '2023-05-24', 20.02, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (27, 'Thalasseus maximus', '2022-11-08', 20.32, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (28, 'Odocoileus hemionus', '2024-03-20', 16.91, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (29, 'Damaliscus lunatus', '2024-05-06', 10.9, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (30, 'Sciurus niger', '2023-07-19', 18.44, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (31, 'Nucifraga columbiana', '2023-01-28', 0.07, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (32, 'Crocuta crocuta', '2024-09-27', 1.7, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (33, 'Meles meles', '2024-04-23', 18.86, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (34, 'Mycteria ibis', '2023-10-07', 3.16, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (35, 'Vulpes vulpes', '2023-07-03', 22.38, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (36, 'Cercatetus concinnus', '2024-08-20', 18.36, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (37, 'Physignathus cocincinus', '2023-07-29', 14.8, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (38, 'Calyptorhynchus magnificus', '2023-08-04', 15.37, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (39, 'Canis mesomelas', '2024-02-16', 1.62, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (40, 'Aegypius tracheliotus', '2022-12-15', 3.77, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (41, 'Panthera leo persica', '2024-03-13', 18.27, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (42, 'Spizaetus coronatus', '2022-12-02', 10.65, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (43, 'Paraxerus cepapi', '2023-07-15', 19.56, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (44, 'Procyon lotor', '2024-07-23', 7.92, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (45, 'Otocyon megalotis', '2023-09-08', 14.96, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (46, 'Bos mutus', '2023-08-30', 13.78, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (47, 'Ictonyx striatus', '2024-02-13', 21.81, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (48, 'Cochlearius cochlearius', '2024-02-15', 10.89, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (49, 'Nyctea scandiaca', '2022-12-26', 19.8, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (50, 'unavailable', '2024-07-10', 18.98, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (51, 'Amblyrhynchus cristatus', '2023-01-18', 4.73, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (52, 'Eutamias minimus', '2023-06-25', 5.52, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (53, 'Crocuta crocuta', '2023-11-01', 9.51, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (54, 'Sula dactylatra', '2023-02-04', 17.96, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (55, 'Bucephala clangula', '2024-05-07', 15.58, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (56, 'Crotaphytus collaris', '2024-10-10', 18.84, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (57, 'Papio cynocephalus', '2024-05-01', 23.05, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (58, 'Varanus salvator', '2024-02-23', 20.1, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (59, 'Cebus apella', '2022-12-31', 17.52, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (60, 'Loris tardigratus', '2024-07-22', 14.24, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (61, 'Proteles cristatus', '2022-10-21', 14.19, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (62, 'Suricata suricatta', '2023-08-17', 17.56, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (63, 'Lamprotornis nitens', '2023-02-03', 21.14, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (64, 'Centrocercus urophasianus', '2023-02-25', 3.84, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (65, 'Callipepla gambelii', '2024-02-28', 23.06, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (66, 'Sula dactylatra', '2024-09-10', 22.74, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (67, 'Uraeginthus granatina', '2023-06-26', 7.96, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (68, 'Sterna paradisaea', '2024-01-27', 10.84, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (69, 'Psittacula krameri', '2023-11-25', 0.52, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (70, 'Philetairus socius', '2024-01-16', 7.34, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (71, 'Dicrostonyx groenlandicus', '2023-03-10', 2.86, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (72, 'Marmota flaviventris', '2023-07-06', 9.43, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (73, 'Leptoptilos crumeniferus', '2023-06-16', 18.84, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (74, 'Colobus guerza', '2023-12-25', 19.82, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (75, 'Laniaurius atrococcineus', '2024-02-12', 15.12, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (76, 'Ovis dalli stonei', '2024-01-22', 17.15, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (77, 'Francolinus swainsonii', '2024-06-21', 16.66, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (78, 'Coluber constrictor foxii', '2023-03-16', 17.45, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (79, 'Estrilda erythronotos', '2023-01-02', 9.66, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (80, 'Rangifer tarandus', '2024-01-17', 11.42, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (81, 'Melanerpes erythrocephalus', '2022-11-21', 15.04, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (82, 'Himantopus himantopus', '2024-02-18', 23.23, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (83, 'Sarcophilus harrisii', '2023-04-06', 0.13, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (84, 'unavailable', '2024-05-15', 6.71, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (85, 'Pycnonotus nigricans', '2023-04-11', 5.89, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (86, 'Pelecanus occidentalis', '2024-10-14', 5.49, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (87, 'Macropus parryi', '2024-10-18', 19.02, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (88, 'Cordylus giganteus', '2024-03-23', 1.29, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (89, 'Junonia genoveua', '2022-11-01', 15.77, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (90, 'Hippotragus equinus', '2023-10-17', 12.3, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (91, 'Ictonyx striatus', '2024-01-21', 7.01, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (92, 'Morelia spilotes variegata', '2024-01-20', 5.07, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (93, 'Lasiodora parahybana', '2023-01-12', 0.1, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (94, 'Turtur chalcospilos', '2023-11-05', 9.85, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (95, 'Sciurus vulgaris', '2023-12-22', 4.14, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (96, 'Cacatua tenuirostris', '2023-12-22', 10.68, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (97, 'Phascogale calura', '2023-09-03', 3.4, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (98, 'Lasiorhinus latifrons', '2022-12-09', 5.61, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (99, 'Ovibos moschatus', '2023-12-01', 16.64, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (100, 'Larus novaehollandiae', '2022-10-22', 6.7, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (101, 'Tetracerus quadricornis', '2024-02-25', 5.61, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (102, 'Rangifer tarandus', '2023-12-20', 6.4, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (103, 'Climacteris melanura', '2023-07-19', 10.05, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (104, 'Panthera leo persica', '2023-01-24', 14.22, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (105, 'Dasyurus viverrinus', '2023-06-06', 3.23, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (106, 'Eudromia elegans', '2023-01-24', 4.38, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (107, 'Papilio canadensis', '2024-02-04', 4.57, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (108, 'Sceloporus magister', '2023-05-06', 2.49, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (109, 'Bassariscus astutus', '2023-09-19', 10.2, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (110, 'Macropus fuliginosus', '2022-11-21', 11.71, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (111, 'Martes americana', '2023-02-16', 4.86, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (112, 'Choloepus hoffmani', '2024-01-17', 12.61, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (113, 'Ovis ammon', '2022-12-31', 7.97, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (114, 'Cebus albifrons', '2023-06-25', 17.33, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (115, 'Dendrocitta vagabunda', '2024-04-12', 16.69, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (116, 'Cervus duvauceli', '2024-07-25', 3.62, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (117, 'Tragelaphus scriptus', '2023-02-28', 5.99, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (118, 'Priodontes maximus', '2023-03-01', 0.87, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (119, 'Tauraco porphyrelophus', '2022-11-12', 16.54, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (120, 'Choriotis kori', '2023-12-06', 16.25, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (121, 'Dacelo novaeguineae', '2023-10-25', 14.53, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (122, 'Felis silvestris lybica', '2024-05-13', 2.66, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (123, 'Alouatta seniculus', '2023-05-31', 15.79, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (124, 'Mazama gouazoubira', '2023-12-03', 19.44, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (125, 'Dendrocygna viduata', '2023-04-05', 19.6, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (126, 'Dendrocygna viduata', '2022-12-01', 22.81, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (127, 'Otaria flavescens', '2023-05-16', 12.91, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (128, 'Gyps bengalensis', '2024-05-27', 7.14, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (129, 'Trichechus inunguis', '2022-11-09', 13.29, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (130, 'Dolichitus patagonum', '2023-04-01', 11.9, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (131, 'Anastomus oscitans', '2024-10-14', 14.08, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (132, 'Alectura lathami', '2023-04-18', 16.31, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (133, 'Dacelo novaeguineae', '2023-02-08', 22.91, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (134, 'Phylurus milli', '2024-10-04', 9.19, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (135, 'Geococcyx californianus', '2024-07-29', 0.79, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (136, 'Terathopius ecaudatus', '2024-01-02', 22.92, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (137, 'Raphicerus campestris', '2023-11-10', 10.61, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (138, 'Larus novaehollandiae', '2023-02-08', 1.49, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (139, 'Panthera onca', '2024-07-08', 15.96, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (140, 'Neotis denhami', '2023-09-13', 18.19, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (141, 'Dusicyon thous', '2023-08-29', 21.3, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (142, 'Vanellus armatus', '2023-10-23', 15.88, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (143, 'Lycosa godeffroyi', '2024-09-14', 6.61, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (144, 'Conolophus subcristatus', '2023-07-10', 1.66, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (145, 'Sus scrofa', '2023-06-17', 9.94, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (146, 'Taurotagus oryx', '2023-04-09', 21.5, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (147, 'Odocoileus hemionus', '2024-03-17', 4.71, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (148, 'Butorides striatus', '2024-08-10', 19.23, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (149, 'Pteropus rufus', '2023-11-29', 9.88, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (150, 'Sceloporus magister', '2023-03-29', 23.41, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (151, 'Macaca mulatta', '2023-10-29', 14.41, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (152, 'Trichoglossus', '2024-04-30', 1.66, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (153, 'Alopochen aegyptiacus', '2023-12-25', 2.39, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (154, 'Canis aureus', '2023-03-03', 1.1, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (155, 'Toxostoma curvirostre', '2024-01-13', 10.22, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (156, 'Philetairus socius', '2023-01-13', 18.7, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (157, 'Chloephaga melanoptera', '2024-08-21', 20.55, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (158, 'Lemur fulvus', '2024-09-20', 13.5, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (159, 'Trichoglossus', '2024-10-11', 19.8, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (160, 'Pelecanus conspicillatus', '2024-04-26', 12.85, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (161, 'Podargus strigoides', '2024-07-17', 22.21, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (162, 'Zosterops pallidus', '2023-11-12', 20.8, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (163, 'Mazama gouazoubira', '2023-10-26', 20.5, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (164, 'Snycerus caffer', '2024-10-15', 3.93, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (165, 'Tauraco porphyrelophus', '2024-03-23', 12.2, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (166, 'Spizaetus coronatus', '2024-04-26', 16.63, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (167, 'Nyctanassa violacea', '2024-06-20', 5.54, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (168, 'Meles meles', '2024-05-17', 5.99, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (169, 'Odocoileus hemionus', '2023-09-21', 12.75, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (170, 'Acrantophis madagascariensis', '2023-09-28', 8.32, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (171, 'Lamprotornis superbus', '2024-06-16', 20.49, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (172, 'Agelaius phoeniceus', '2023-07-10', 12.16, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (173, 'Francolinus leucoscepus', '2022-12-28', 23.58, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (174, 'Cordylus giganteus', '2023-10-05', 1.02, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (175, 'Dendrocitta vagabunda', '2024-02-13', 5.53, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (176, 'Gabianus pacificus', '2022-10-21', 14.33, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (177, 'Branta canadensis', '2023-04-20', 15.32, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (178, 'Aonyx capensis', '2024-09-07', 5.23, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (179, 'Corvus brachyrhynchos', '2023-10-27', 17.89, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (180, 'Butorides striatus', '2023-03-16', 13.24, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (181, 'Varanus komodensis', '2022-11-28', 23.02, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (182, 'Naja nivea', '2023-10-02', 20.46, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (183, 'Eumetopias jubatus', '2024-03-24', 19.7, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (184, 'Ourebia ourebi', '2023-10-11', 11.02, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (185, 'Phalacrocorax niger', '2022-11-12', 22.0, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (186, 'Mungos mungo', '2023-01-16', 0.55, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (187, 'Zalophus californicus', '2023-07-21', 11.22, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (188, 'Taurotagus oryx', '2023-11-20', 9.77, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (189, 'Crocodylus niloticus', '2023-10-31', 4.17, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (190, 'Salvadora hexalepis', '2023-02-06', 4.13, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (191, 'Sylvicapra grimma', '2023-05-26', 5.49, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (192, 'Chordeiles minor', '2024-01-23', 3.75, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (193, 'Falco peregrinus', '2024-04-28', 0.75, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (194, 'Terrapene carolina', '2024-08-08', 11.87, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (195, 'Varanus salvator', '2024-04-20', 23.32, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (196, 'Eunectes sp.', '2024-07-09', 14.57, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (197, 'Equus hemionus', '2023-10-22', 20.19, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (198, 'Buteo regalis', '2023-05-18', 13.26, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (199, 'Delphinus delphis', '2024-01-29', 6.49, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (200, 'Phalacrocorax carbo', '2024-03-28', 11.58, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (201, 'Mazama americana', '2023-06-30', 0.04, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (202, 'Acridotheres tristis', '2024-03-15', 8.97, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (203, 'Lepus townsendii', '2024-07-16', 21.83, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (204, 'Paroaria gularis', '2023-08-12', 12.49, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (205, 'Myiarchus tuberculifer', '2024-08-14', 1.42, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (206, 'Morelia spilotes variegata', '2024-06-05', 19.78, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (207, 'Alligator mississippiensis', '2023-03-01', 11.54, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (208, 'Ateles paniscus', '2024-08-17', 13.41, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (209, 'Panthera pardus', '2023-04-20', 10.95, true, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (210, 'Neophron percnopterus', '2023-07-19', 14.01, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (211, 'Papio ursinus', '2022-12-03', 18.49, false, 1);
insert into evento (id, descripcion, fecha, hora, activo, userId) values (212, 'Prionace glauca', '2022-10-22', 8.07, true, 1);












