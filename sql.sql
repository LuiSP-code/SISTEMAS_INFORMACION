--Creación del a base de datos de Sistemas de Información
/*
ESTA TABLA SE ENCARGARA DE ALMACENAR LOS DATOS DE LOS USUARIOS QUE TENDRÁN PERMISO DE INGRESAR A LA APP
*/
CREATE TABLE user(
    Id_User INT AUTO_INCREMENT NOT NULL,
    User VARCHAR(50) NOT NULL,
    Name_User VARCHAR(50) NOT NULL,
    Password_User VARCHAR(50)NOT NULL,
    PRIMARY KEY(Id_User)
);

/*
ESTA TABLA SE ENCARGARA DE ALMACENAR LOS REQUERIMIENTO PARA EL DOCUMENTO
*/
CREATE TABLE document(
    ID_Document INT AUTO_INCREMENT NOT NULL,
    Date_Document DATE NOT NULL,
    Subjects TEXT NOT NULL,
    Department VARCHAR(100) NOT NULL,
    Document_Target VARCHAR(50) NOT NULL,
    Digital_Signature VARCHAR(100) NOT NULL,
    Id_User INT NOT NULL,
    FOREIGN KEY (Id_User)REFERENCES user(Id_User)
);

/*
INFORMACIÓN DE LLENADO PARA LAS PRUEBAS DE LA BASE DE DATOS
TABLA-User
TABLA-Document
*/

INSERT INTO user(User,Name_User,Password_User)
VALUES
('Romero12','Antonio Salazar Pascuaro','1^6^#4AoB!8!?'),
('Thony_12','Juan Antonio Romero','7/Y_?ah*PlÑ+'),
('DAQuep_22','Daniel Alfonso Queparo','¡AA!?8bc/O4$#n');

INSERT INTO document(Date_Document,Subjects,Department,Document_Target)
 VALUES('03/09/25','Horas extra','Ciencias Sociales','Profesor:Juanito Carrillo Velazco')