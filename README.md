# SQL con MySQL Proyecto final

### Preparando el ambiente

Aquí puedes descargar los archivos que necesitarás para iniciar con tu entrenamiento.

[Descargue los archivos en Github](https://github.com/alura-es-cursos/1834-proyecto-final-sql-con-mysql "Descargue los archivos en Github") o haga clic [aquí](https://github.com/alura-es-cursos/1834-proyecto-final-sql-con-mysql/archive/refs/heads/main.zip "aquí") para descargarlos directamente.

### Haga lo que hicimos en aula

Llegó la hora de que sigas todos los pasos realizados por mí durante esta clase. Si ya lo has hecho ¡Excelente! Si todavía no lo has hecho, es importante que ejecutes lo que fue visto en los vídeos para que puedas continuar con la próxima aula.

1. Si estás usando un nuevo equipo, debes instalar MySQL. Por ello, te invito a seguir las siguientes instrucciones:

**Instalación en WINDOWS**

- Accede a través de tu navegador y busca: MySQL Downloads. Allí, accederás al link: [http://www.mysql.com/downloads](http://www.mysql.com/downloads "http://www.mysql.com/downloads").
- Busca el link que dice:** MySQL Community Edition (GPL) / Community (GPL) download**s.
- Dirígete hacia: **MySQL on Windows (Installer & Tools) / Downloads**.
- Haz clic en: **MySQL Installer**.
- Haz clic en el botón de download al lado de la opción: **Windows (x86-32 Bits), MSI Installer (mysql-installer-web-community-8.0.15.0.msi)**.
- Haz login en la página de Oracle. Si no tienes login regístrate.
- Luego de hacer Login haz clic en **Download Now**.
- Ejecuta el programa que fue descargado.
- Haz clic en: **I Accept the license terms** y luego en **Next**.
- Escoge la instalación: **Developer Default**. Haz clic en **Next** dos veces.
- Haz clic sobre **Execute** para hacer el download y la instalación de la base y sus componentes.
- Haz clic en **Next** dos veces.
- Mantén la opción **StandAlone MySQL Server / Classic MySQL Replication**.
- Mantén las propiedades por defecto del servicio y del gateway. Clic en **Next**.
- Mantén la opción** Use Strong Encryption for Authentication..**. Clic en **Next**.
- Incluye la contraseña del usuario root dos veces. Clic en** Next**.
- Mantén las propiedades por defecto. Clic en **Next**.
- Clic en **Execute** para iniciar la instalación.

Siempre selecciona **Next** y **Finish** a medida que otros cuadros de diálogo sean exhibidos. Si se solicita la contraseña del usuario root, digita la que configuraste anteriormente durante la instalación.

Automáticamente, Workbench se abrirá. Haz clic en la conexión que fue configurada. ¡Felicitaciones, tu ambiente de trabajo está al aire, y listo para comenzar!

**Instalación en UBUNTU**

Comandos para verificar si MySQL está instalado:

```cmd
dpkg -l mysql-server
mysql -V
```

Comandos para desinstalar MySQL:

```cmd
sudo apt-get remove --purge mysql*
sudo apt-get purge mysql*
sudo apt-get autoremove
sudo apt-get autoclean
```
Comandos para instalar MySQL:

```cmd
sudo apt-get install mysql-server
sudo apt-get install mysql-workbench
```

Configurando MySQL:

```cmd
sudo mysql_secure_installation 
```

Se quieres hacer login como root a través de programas externos:

```cmd
sudo mysql -u root ALTER USER 'root'@'localhost' IDENTIFIED WITH
```

2. Si estás usando un nuevo equipo, o no participaste de los cursos anteriores, debes recuperar la base de datos que usaremos en este curso. Para ello, realiza los siguientes pasos:

- Abre MySQL Workbench. Usa la conexión LOCALHOST.
- Botão derecho del mouse sobre la lista de las bases y escoge **Create Schema..**.
- Digita el nombre jugos_ventas. Clic en **Apply** dos veces.
- Descarga y descompacta el archivo RecuperacionAmbiente.rar.(Este archivo está disponible en la sección Preparando el Ambiente de esta Aula).
- Selecciona, en el área Navigator, la pestaña **Administration**.
- Selecciona el link **Data Import/Restore**.
- En la opción **Import From Dump Project Folder** escoge el directorio: `/DumpJugosVentas`.
- Selecciona Start Import.
- Verifica en la base jugos_ventas si las tablas fueron creadas.

3. Debemos crear la base de datos empresa, para ello, debemos seguir el siguiente procedimiento:

Haz clic derecho en el área Navigator:

![](https://caelum-online-public.s3.amazonaws.com/ESP-1834-proyecto-final-sql-con-mysql/1.png)

- Luego digita el nombre de la base de datos y presiona el botón **Apply**:

![](https://caelum-online-public.s3.amazonaws.com/ESP-1834-proyecto-final-sql-con-mysql/2.png)

- Ahora se abrirá un asistente con los comandos usados en MySQL para crear una base de datos; haz clic en **Apply**:

![](https://caelum-online-public.s3.amazonaws.com/ESP-1834-proyecto-final-sql-con-mysql/3.png)

- Haz clic en **Finish** y tu base de datos estará creada:

![](https://caelum-online-public.s3.amazonaws.com/ESP-1834-proyecto-final-sql-con-mysql/4.png)

4. Vamos a crear las tablas de clientes y productos empleando los siguientes comandos en un nuevo script de Workbench (no olvides especificar los campos que serán claves primarias):

```SQL
CREATE TABLE clientes (
DNI VARCHAR(11) NOT NULL,
NOMBRE VARCHAR(100) NULL,
DIRECCION VARCHAR(150),
BARRIO VARCHAR(50),
CIUDAD VARCHAR(50),
ESTADO VARCHAR(10),
CP VARCHAR(10),
FECHA_NACIMIENTO DATE,
EDAD SMALLINT,
SEXO VARCHAR(1),
LIMITE_CREDITO FLOAT,
VOLUMEN_COMPRA FLOAT,
PRIMERA_COMPRA BIT,
PRIMARY KEY (DNI)
);

CREATE TABLE productos (
CODIGO VARCHAR(10) NOT NULL,
DESCRIPCION VARCHAR(100),
SABOR VARCHAR(50),
TAMANO VARCHAR(50),
ENVASE VARCHAR(50),
PRECIO FLOAT,
PRIMARY KEY (CODIGO)
);
```

5. La tabla de vendedores la crearemos utilizando el asistente:

Haz clic derecho sobre la opción **Tables** en la base de datos **empresa**, y selecciona **Create Table...**:

![](https://caelum-online-public.s3.amazonaws.com/ESP-1834-proyecto-final-sql-con-mysql/5.png)

- Aparecerá un asistente. Digita los campos como se muestra a continuación y haz click en **Apply**:

![](https://caelum-online-public.s3.amazonaws.com/ESP-1834-proyecto-final-sql-con-mysql/6.png)

- Aparecerán los comandos empleados en MySQL para la creación de la tabla:

![](https://caelum-online-public.s3.amazonaws.com/ESP-1834-proyecto-final-sql-con-mysql/7.png)

- Haz clic en Finish y tu tabla será creada:

![](https://caelum-online-public.s3.amazonaws.com/ESP-1834-proyecto-final-sql-con-mysql/8.png)

6. Ahora crearemos las tablas de facturas e items utilizando los siguientes comandos en el script de Workbench (No olvides especificar las claves primarias y foráneas):

```SQL
CREATE TABLE facturas(
NUMERO VARCHAR(5) NOT NULL,
FECHA DATE,
DNI VARCHAR(11) NOT NULL,
MATRICULA VARCHAR(5) NOT NULL,
IMPUESTO FLOAT,
PRIMARY KEY (NUMERO),
FOREIGN KEY (DNI) REFERENCES clientes(DNI),
FOREIGN KEY (MATRICULA) REFERENCES vendedores(MATRICULA)
);
CREATE TABLE items(
NUMERO VARCHAR(5) NOT NULL,
CODIGO VARCHAR(10) NOT NULL,
CANTIDAD INT,
PRECIO FLOAT,
PRIMARY KEY (NUMERO, CODIGO),
FOREIGN KEY (NUMERO) REFERENCES facturas(NUMERO),
FOREIGN KEY (CODIGO) REFERENCES productos(CODIGO)
);
```

7. Ahora, procederemos a insertar datos en nuestras tablas. Abriremos con nuestro procesador de texto el archivo anexo a este entrenamiento llamado `Carga_Tablas_Registros.sql` y seleccionaremos la línea que contiene los valores de cliente cuyo nombre es Marcos Rosas, y la copiaremos utilizando la sintaxis para comentarios de MySQL:

```SQL
/*('3623344710', 'Marcos Rosas', 'Av. Universidad', 'Del Valle', 
'Ciudad de México', 'EM', '22002012', '1995-01-13', 26, 'M', 
110000, 220000, 1); */
```

8. Vamos a insertar este cliente a la tabla clientes digitando la siguiente línea de comando:

```SQL
INSERT INTO clientes VALUES('3623344710', 'Marcos Rosas', 'Av. Universidad',
'Del Valle', 'Ciudad de México', 'EM', '22002012', '1995-01-13', 26, 'M',
110000, 220000, 1);
```

9. Al ejecutar:

````SQL
SELECT * FROM clientes;
```

¿Qué aparece en el *output*?

10) Ahora seleccionaremos y copiaremos los demás clientes que se encuentran en el archivo `Carga_Tablas_Registros.sql` y los pegaremos en el script de Workbench asegurándonos de no repetir al cliente Marcos Rosas. Ejecutaremos el script:
````SQL
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('2600586709', 'Raúl Meneses', 'Estudiantes 89', 'Centro', 'Ciudad de México', 'EM', '22002012', '1999-08-13', 21, 'M', 120000, 210000, 1);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('19290992743', 'Rodrigo Villa', 'Libertadores 65', 'Héroes', 'Ciudad de México', 'EM', '21002020', '1998-05-30', 22, 'M', 120000, 220000, 0);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('9283760794', 'Edson Calisaya', 'Sta Úrsula Xitla', 'Barrio del Niño Jesús', 'Ciudad de México', 'EM', '22002002', '1995-01-07', 25, 'M', 150000, 250000, 1);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('7771579779', 'Marcelo Perez', 'F.C. de Cuernavaca 13', 'Carola', 'Ciudad de México', 'EM', '88202912', '1992-01-25', 29, 'M', 120000, 200000, 1);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('5576228758', 'Patricia Olivera', 'Pachuca 75', 'Condesa', 'Ciudad de México', 'EM', '88192029', '1995-01-14', 25, 'F', 70000, 160000, 1);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('8502682733', 'Luis Silva', 'Prol. 16 de Septiembre 1156', 'Contadero', 'Ciudad de México', 'EM', '82122020', '1995-01-07', 25, 'M', 110000, 190000, 0);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('1471156710', 'Erica Carvajo', 'Heriberto Frías 1107', 'Del Valle', 'Ciudad de México', 'EM', '80012212', '1990-01-01', 30, 'F', 170000, 245000, 0);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('50534475787', 'Abel Pintos', 'Carr. México-Toluca 1499', 'Cuajimalpa', 'Ciudad de México', 'EM', '22000212', '1995-01-11', 25, 'M', 170000, 260000, 0);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('5840119709', 'Gabriel Roca', 'Eje Central Lázaro Cárdenas 911', 'Del Valle', 'Ciudad de México', 'EM', '80010221', '1985-01-16', 36, 'M', 140000, 210000, 1);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('8719655770', 'Carlos Santivañez', 'Calz. del Hueso 363', 'Floresta Coyoacán', 'Ciudad de México', 'EM', '81192002', '1983-01-20', 37, 'M', 200000, 240000, 0);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('5648641702', 'Paolo Mendez', 'Martires de Tacubaya 65', 'Héroes de Padierna', 'Ciudad de México', 'EM', '21002020', '1991-01-30', 29, 'M', 120000, 220000, 0);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('492472718', 'Jorge Castro', 'Federal México-Toluca 5690', 'Locaxco', 'Ciudad de México', 'EM', '22012002', '1994-01-19', 26, 'M', 75000, 95000, 1);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('9275760794', 'Alberto Rodriguez', 'Circunvalación Oblatos 690', 'Oblatos', 'Guadalajara', 'JC', '44700000', '1991-12-28', 26, 'M', 75000, 95000, 1);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('94387575700', 'María Jimenez', 'Av. Libertadores 457', 'Barragán Hernández', 'Guadalajara', 'JC', '44469000', '1995-05-13', 26, 'F', 120000, 300000, 1);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('95939180787', 'Ximena Gómez', 'Jaguares 822', 'Alcalde Barranquitas', 'Guadalajara', 'JC',        '44270000', '1992-01-05', 16, 'F', 90000, 18000, 0);
```

Así, habremos insertado con éxito todos nuestros clientes en la tabla **clientes**.

11. Repetiremos el procedimiento anterior con los comandos referentes a productos y a vendedores para llenar nuestras tablas. Ejecutamos el script:

````SQL
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('773912', 'Clean', '1 Litro', 'Naranja', 'Botella PET', 8.01);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('838819', 'Clean', '1,5 Litros', 'Naranja', 'Botella PET', 12.01);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('1037797', 'Clean', '2 Litros', 'Naranja', 'Botella PET', 16.01);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('812829', 'Clean', '350 ml', 'Naranja', 'Lata', 2.81);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('479745', 'Clean', '470 ml', 'Naranja', 'Botella de Vidrio', 3.77);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('695594', 'Festival de Sabores', '1,5 Litros', 'Asaí', 'Botella PET', 28.51);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('243083', 'Festival de Sabores', '1,5 Litros', 'Maracuyá', 'Botella PET', 10.51);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('1022450', 'Festival de Sabores', '2 Litros', 'Asái', 'Botella PET', 38.01);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('231776', 'Festival de Sabores', '700 ml', 'Asaí', 'Botella de Vidrio', 13.31);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('723457', 'Festival de Sabores', '700 ml', 'Maracuyá', 'Botella de Vidrio', 4.91);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('746596', 'Light', '1,5 Litros', 'Sandía', 'Botella PET', 19.51);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('1040107', 'Light', '350 ml', 'Sandía', 'Lata', 4.56);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('1002334', 'Línea Citrus', '1 Litro', 'Lima/Limón', 'Botella PET', 7);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('1088126', 'Línea Citrus', '1 Litro', 'Limón', 'Botella PET', 7);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('1041119', 'Línea Citrus', '700 ml', 'Lima/Limón', 'Botella de Vidrio', 4.9);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('1042712', 'Línea Citrus', '700 ml', 'Limón', 'Botella de Vidrio', 4.9);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('520380', 'Pedazos de Frutas', '1 Litro', 'Manzana', 'Botella PET', 12.01);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('788975', 'Pedazos de Frutas', '1,5 Litros', 'Manzana', 'Botella PET', 18.01);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('229900', 'Pedazos de Frutas', '350 ml', 'Manzana', 'Lata', 4.21);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('1101035', 'Refrescante', '1 Litro', 'Frutilla/Limón', 'Botella PET', 9.01);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('1086543', 'Refrescante', '1 Litro', 'Mango', 'Botella PET', 11.01);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('326779', 'Refrescante', '1,5 Litros', 'Mango', 'Botella PET', 16.51);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('826490', 'Refrescante', '700 ml', 'Frutilla/Limón', 'Botella de Vidrio', 6.31);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('1096818', 'Refrescante', '700 ml', 'Mango', 'Botella de Vidrio', 7.71);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('394479', 'Sabor da Montaña', '700 ml', 'Cereza', 'Botella de Vidrio', 8.41);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('783663', 'Sabor da Montaña', '700 ml', 'Frutilla', 'Botella de Vidrio', 7.71);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('1000889', 'Sabor da Montaña', '700 ml', 'Uva', 'Botella de Vidrio', 6.31);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('544931', 'Verano', '350 ml', 'Limón', 'Lata', 2.46);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('235653', 'Verano', '350 ml', 'Mango', 'Lata', 3.86);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('1051518', 'Verano', '470 ml', 'Limón', 'Botella de Vidrio', 3.3);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('1078680', 'Verano', '470 ml', 'Mango', 'Botella de Vidrio', 5.18);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('1004327', 'Vida del Campo', '1,5 Litros', 'Sandía', 'Botella PET', 19.51);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('1013793', 'Vida del Campo', '2 Litros', 'Cereza/Manzana', 'Botella PET', 24.01);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('290478', 'Vida del Campo', '350 ml', 'Sandía', 'Lata', 4.56);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('1002767', 'Vida del Campo', '700 ml', 'Cereza/Manzana', 'Botella de Vidrio', 8.41);
INSERT VENDEDORES (MATRICULA, NOMBRE, COMISION, FECHA_ADMISION, VACACIONES, BARRIO) VALUES ('00235','Miguel Pavón Silva',0.08,'2014-08-15', 0,'Condesa');
INSERT VENDEDORES (MATRICULA, NOMBRE, COMISION, FECHA_ADMISION, VACACIONES, BARRIO) VALUES ('00236', 'Claudia Morales',0.08,'2013-09-17', 1,'Del Valle');
INSERT VENDEDORES (MATRICULA, NOMBRE, COMISION, FECHA_ADMISION, VACACIONES, BARRIO) VALUES ('00237', 'Concepción Martinez',0.11,'2017-03-18', 1,'Contadero');
INSERT VENDEDORES (MATRICULA, NOMBRE, COMISION, FECHA_ADMISION, VACACIONES, BARRIO) VALUES ('00238', 'Patricia Sánchez',0.11,'2016-08-21', 0,'Oblatos');
```

12. Ahora, importaremos los registros referentes a las facturas y a los items de las mismas, desde la base de datos **jugos_ventas** empleando los siguientes comandos:

````SQL
INSERT INTO items
SELECT NUMERO, CODIGO_DEL_PRODUCTO AS CODIGO, CANTIDAD, PRECIO
FROM jugos_ventas.items_facturas;

INSERT INTO facturas
SELECT NUMERO, FECHA_VENTA AS FECHA, DNI, MATRICULA, IMPUESTO
FROM jugos_ventas.facturas;
```

13. Si digitas y ejecutas los siguientes comandos al mismo tiempo:

````SQL
SELECT * FROM clientes;
SELECT * FROM productos;
SELECT * FROM vendedores;
SELECT * FROM facturas F 
INNER JOIN
items I
ON F.NUMERO = I.NUMERO;
```

¿Qué observas?

14. ¡Excelente! Has creado tus tablas de forma exitosa.

### Lo que aprendimos

Lo que aprendimos en esta aula:

- A crear de una base de datos.
- A crear tablas a través de líneas de script y del asistente de Workbench.
- A insertar registros en las tablas mediante líneas de comando y realizando la importación desde otra base de datos.
- A importar datos a través de una carpeta dump.
- A crear claves primarias y claves foráneas.
- A generar un diagrama Entidad-Relación.
- A realizar consultas a la base de datos.
- A realizar consultas en diversas entidades.

### Proyecto del aula anterior

¿Comenzando en esta etapa? Aquí puedes descargar los archivos del proyecto que hemos avanzado hasta el aula anterior.

[Descargue los archivos en Github](https://github.com/alura-es-cursos/1834-proyecto-final-sql-con-mysql/tree/aula-2 "Descargue los archivos en Github") o haga clic [aquí](https://github.com/alura-es-cursos/1834-proyecto-final-sql-con-mysql/archive/refs/heads/aula-2.zip "aquí") para descargarlos directamente.

