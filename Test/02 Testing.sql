
 
------------------ ## EXPLICACI�N ## ------------------
--TEST TRIGGER GENERA EVENTOS Y CONTADORES DE METRICAS BUENAS Y MALAS -> RESULTADO: deberia mostrar que la API 1 anda mal y la cantidad de metricas malas en 
--cada dispositivo

--- Metricas con valores de  50 =< OK
--- Metricas con valores de 50 > FAIL

DELETE FROM metrica
DELETE FROM Dispositivo
DELETE FROM Aplicacion

INSERT INTO Aplicacion(id_Api, nombreApi, id_disp, countMet)VALUES(1, 'Aplicaci�n 1', 1, 0)
INSERT INTO Aplicacion(id_Api, nombreApi, id_disp, countMet)VALUES(1, 'Aplicaci�n 1', 2, 0)
INSERT INTO Aplicacion(id_Api, nombreApi, id_disp, countMet)VALUES(1, 'Aplicaci�n 1', 3, 0)
INSERT INTO Aplicacion(id_Api, nombreApi, id_disp, countMet)VALUES(1, 'Aplicaci�n 1', 4, 0)
INSERT INTO Aplicacion(id_Api, nombreApi, id_disp, countMet)VALUES(2, 'Aplicaci�n 2', 5, 0)
INSERT INTO Aplicacion(id_Api, nombreApi, id_disp, countMet)VALUES(2, 'Aplicaci�n 2', 6, 0)
INSERT INTO Aplicacion(id_Api, nombreApi, id_disp, countMet)VALUES(2, 'Aplicaci�n 2', 7, 0)
INSERT INTO Aplicacion(id_Api, nombreApi, id_disp, countMet)VALUES(2, 'Aplicaci�n 2', 8, 0)


INSERT INTO Dispositivo(id_disp, sonda, cant_metCorrectas, cant_metIncorrectas)VALUES(1, 'SNMP', 0, 0)
INSERT INTO Dispositivo(id_disp, sonda, cant_metCorrectas, cant_metIncorrectas)VALUES(2, 'SNMP', 0, 0)
INSERT INTO Dispositivo(id_disp, sonda, cant_metCorrectas, cant_metIncorrectas)VALUES(3, 'SNMP', 0, 0)
INSERT INTO Dispositivo(id_disp, sonda, cant_metCorrectas, cant_metIncorrectas)VALUES(4, 'SNMP', 0, 0)
INSERT INTO Dispositivo(id_disp, sonda, cant_metCorrectas, cant_metIncorrectas)VALUES(5, 'activa', 0, 0)
INSERT INTO Dispositivo(id_disp, sonda, cant_metCorrectas, cant_metIncorrectas)VALUES(6, 'activa', 0, 0)
INSERT INTO Dispositivo(id_disp, sonda, cant_metCorrectas, cant_metIncorrectas)VALUES(7, 'activa', 0, 0)
INSERT INTO Dispositivo(id_disp, sonda, cant_metCorrectas, cant_metIncorrectas)VALUES(8, 'activa', 0, 0)

INSERT INTO Metrica(id_disp, fecha_hora, descrip, unidad, valor)VALUES(1, getdate(), 'descrip1', 'entera', 70)
INSERT INTO Metrica(id_disp, fecha_hora, descrip, unidad, valor)VALUES(2, getdate(), 'descrip2', 'entera', 80)
INSERT INTO Metrica(id_disp, fecha_hora, descrip, unidad, valor)VALUES(3, getdate(), 'descrip3', 'entera', 90)
INSERT INTO Metrica(id_disp, fecha_hora, descrip, unidad, valor)VALUES(3, getdate(), 'descrip3', 'entera', 80)
INSERT INTO Metrica(id_disp, fecha_hora, descrip, unidad, valor)VALUES(3, getdate(), 'descrip3', 'entera', 60)
INSERT INTO Metrica(id_disp, fecha_hora, descrip, unidad, valor)VALUES(7, getdate(), 'descrip7', 'entera', 30)
INSERT INTO Metrica(id_disp, fecha_hora, descrip, unidad, valor)VALUES(8, getdate(), 'descrip8', 'entera', 20)

SELECT * FROM metrica
SELECT * FROM Dispositivo
SELECT * FROM Aplicacion
