# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          Project2.dez                                    #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2021-01-19 20:23                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "nota"                                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `nota` (
    `id_nota` INTEGER NOT NULL AUTO_INCREMENT,
    `nota` VARCHAR(40),
    `valor` INTEGER,
    CONSTRAINT `PK_nota` PRIMARY KEY (`id_nota`)
);

# ---------------------------------------------------------------------- #
# Add table "materia"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `materia` (
    `id_materia` INTEGER NOT NULL AUTO_INCREMENT,
    `notaFinal` INTEGER,
    `habilitacion` INTEGER,
    `nombreMateria` VARCHAR(40),
    CONSTRAINT `PK_materia` PRIMARY KEY (`id_materia`)
);

# ---------------------------------------------------------------------- #
# Add table "Cargo"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `Cargo` (
    `Id_cargo` INTEGER NOT NULL AUTO_INCREMENT,
    `nombreCargo` VARCHAR(40),
    `salario` INTEGER,
    CONSTRAINT `PK_Cargo` PRIMARY KEY (`Id_cargo`)
);

# ---------------------------------------------------------------------- #
# Add table "barrio"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `barrio` (
    `localidad` VARCHAR(40) NOT NULL,
    `upz` VARCHAR(40) NOT NULL,
    `barrio` VARCHAR(40) NOT NULL,
    CONSTRAINT `PK_barrio` PRIMARY KEY (`localidad`, `upz`, `barrio`)
);

# ---------------------------------------------------------------------- #
# Add table "paquetes"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `paquetes` (
    `id_paquete` INTEGER NOT NULL,
    `nombre` VARCHAR(40) NOT NULL,
    `descriccion` TEXT,
    `valor` VARCHAR(40),
    `usuarioCreador` VARCHAR(40) NOT NULL,
    `FechaCreador` DATE NOT NULL,
    CONSTRAINT `PK_paquetes` PRIMARY KEY (`id_paquete`)
);

# ---------------------------------------------------------------------- #
# Add table "colegio"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `colegio` (
    `id_colegio` INTEGER NOT NULL AUTO_INCREMENT,
    `nombre` VARCHAR(40) NOT NULL,
    `telefono` VARCHAR(40),
    CONSTRAINT `PK_colegio` PRIMARY KEY (`id_colegio`)
);

# ---------------------------------------------------------------------- #
# Add table "Check_list"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `Check_list` (
    `id_check` INTEGER NOT NULL AUTO_INCREMENT,
    `nombre` VARCHAR(40) NOT NULL,
    `validacion` CHAR(1) DEFAULT 'N',
    CONSTRAINT `PK_Check_list` PRIMARY KEY (`id_check`)
);

# ---------------------------------------------------------------------- #
# Add table "estudiante"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `estudiante` (
    `id_estudiante` INTEGER NOT NULL AUTO_INCREMENT,
    `tipoDocumento` VARCHAR(40) NOT NULL,
    `numeroIdentifiacion` INTEGER(10) NOT NULL,
    `nombre` VARCHAR(40) NOT NULL,
    `apellido` VARCHAR(40) NOT NULL,
    `telefono` VARCHAR(40) NOT NULL,
    `Celular` INTEGER NOT NULL,
    `fechaNacimiento` DATE NOT NULL,
    `descuento` INTEGER,
    `expedicion` VARCHAR(40),
    `fotoCarnet` VARCHAR(40),
    `Estrato` INTEGER,
    `ocupacion` VARCHAR(40),
    `otroTelefono` VARCHAR(40),
    `correo` VARCHAR(40),
    `ultimoCurso` INTEGER COMMENT 'ultimo curso aprobado',
    `telefonoAcudiente` INTEGER,
    `año` DATE COMMENT 'en que año curso el ultimo curo',
    `observacion` TEXT,
    `id_colegio` INTEGER,
    `localidad` VARCHAR(40),
    `upz` VARCHAR(40),
    `barrio` VARCHAR(40),
    `id_check` INTEGER NOT NULL,
    CONSTRAINT `PK_estudiante` PRIMARY KEY (`id_estudiante`)
);

# ---------------------------------------------------------------------- #
# Add table "Personal"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `Personal` (
    `identificacion` INTEGER NOT NULL,
    `nombre` VARCHAR(40),
    `apellido` VARCHAR(40),
    `telefono` INTEGER,
    `celular` INTEGER,
    `tipoIdentificacion` VARCHAR(40),
    `Id_cargo` INTEGER,
    CONSTRAINT `PK_Personal` PRIMARY KEY (`identificacion`)
);

# ---------------------------------------------------------------------- #
# Add table "egreso"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `egreso` (
    `id_egreso` INTEGER NOT NULL AUTO_INCREMENT,
    `nombre` VARCHAR(40),
    `valor` INTEGER,
    `fecha` DATETIME,
    `fechaCre` DATE,
    `usuario` VARCHAR(40),
    `perido` VARCHAR(40) COMMENT 'indica si es un  pago F , Recuernte',
    `dia` INTEGER,
    `frecuencia` VARCHAR(40) COMMENT 'indica si es diario , mesual o anual ',
    `identificacion` INTEGER,
    PRIMARY KEY (`id_egreso`)
);

# ---------------------------------------------------------------------- #
# Add table "matricula"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `matricula` (
    `id_matricula` INTEGER NOT NULL AUTO_INCREMENT,
    `id_estudiante` INTEGER,
    `id_paquete` INTEGER,
    `Descuento` INTEGER,
    `observaciones` TEXT,
    CONSTRAINT `PK_matricula` PRIMARY KEY (`id_matricula`)
);

# ---------------------------------------------------------------------- #
# Add table "pagos"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `pagos` (
    `id_pagos` INTEGER NOT NULL,
    `id_matricula` INTEGER,
    `valor` INTEGER,
    `fecha` DATE,
    `Concepto` VARCHAR(40),
    CONSTRAINT `PK_pagos` PRIMARY KEY (`id_pagos`)
);

# ---------------------------------------------------------------------- #
# Add table "Curso"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `Curso` (
    `idCurso` INTEGER NOT NULL AUTO_INCREMENT,
    `id_matricula` INTEGER,
    PRIMARY KEY (`idCurso`)
);

# ---------------------------------------------------------------------- #
# Add table "nomina"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `nomina` (
    `id_nomina` INTEGER NOT NULL AUTO_INCREMENT,
    `id_egreso` INTEGER,
    PRIMARY KEY (`id_nomina`)
);

# ---------------------------------------------------------------------- #
# Add table "grupos"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `grupos` (
    `id_grupos` INTEGER NOT NULL AUTO_INCREMENT,
    `identificacion` INTEGER,
    `idCurso` INTEGER,
    CONSTRAINT `PK_grupos` PRIMARY KEY (`id_grupos`)
);

# ---------------------------------------------------------------------- #
# Add table "horarios"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `horarios` (
    `id_horario` INTEGER NOT NULL,
    `Fecha` DATE,
    `observacion` TEXT,
    `id_grupos` INTEGER,
    `identificacion` INTEGER,
    CONSTRAINT `PK_horarios` PRIMARY KEY (`id_horario`)
);

# ---------------------------------------------------------------------- #
# Add table "clases"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `clases` (
    `id_clases` INTEGER NOT NULL AUTO_INCREMENT,
    `id_horario` INTEGER,
    `id_nota` INTEGER,
    `identificacion` INTEGER,
    CONSTRAINT `PK_clases` PRIMARY KEY (`id_clases`)
);

# ---------------------------------------------------------------------- #
# Add table "asistencia"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `asistencia` (
    `id_asistencia` INTEGER NOT NULL,
    `fecha` DATE,
    `asistencia` CHAR(1) NOT NULL DEFAULT 'S',
    `Incapacidad` TEXT,
    `id_clases` INTEGER,
    CONSTRAINT `PK_asistencia` PRIMARY KEY (`id_asistencia`)
);

# ---------------------------------------------------------------------- #
# Add table "matricula_asistencia"                                       #
# ---------------------------------------------------------------------- #

CREATE TABLE `matricula_asistencia` (
    `id_matricula` INTEGER NOT NULL,
    `id_asistencia` INTEGER NOT NULL,
    `Id_grupo_A` INTEGER NOT NULL AUTO_INCREMENT,
    CONSTRAINT `PK_matricula_asistencia` PRIMARY KEY (`Id_grupo_A`)
);

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `estudiante` ADD CONSTRAINT `colegio_estudiante` 
    FOREIGN KEY (`id_colegio`) REFERENCES `colegio` (`id_colegio`);

ALTER TABLE `estudiante` ADD CONSTRAINT `barrio_estudiante` 
    FOREIGN KEY (`localidad`, `upz`, `barrio`) REFERENCES `barrio` (`localidad`,`upz`,`barrio`);

ALTER TABLE `estudiante` ADD CONSTRAINT `Check_list_estudiante` 
    FOREIGN KEY (`id_check`) REFERENCES `Check_list` (`id_check`);

ALTER TABLE `Personal` ADD CONSTRAINT `Cargo_Personal` 
    FOREIGN KEY (`Id_cargo`) REFERENCES `Cargo` (`Id_cargo`);

ALTER TABLE `Curso` ADD CONSTRAINT `matricula_Curso` 
    FOREIGN KEY (`id_matricula`) REFERENCES `matricula` (`id_matricula`);

ALTER TABLE `nomina` ADD CONSTRAINT `egreso_nomina` 
    FOREIGN KEY (`id_egreso`) REFERENCES `egreso` (`id_egreso`);

ALTER TABLE `egreso` ADD CONSTRAINT `Personal_egreso` 
    FOREIGN KEY (`identificacion`) REFERENCES `Personal` (`identificacion`);

ALTER TABLE `matricula` ADD CONSTRAINT `estudiante_matricula` 
    FOREIGN KEY (`id_estudiante`) REFERENCES `estudiante` (`id_estudiante`);

ALTER TABLE `matricula` ADD CONSTRAINT `paquetes_matricula` 
    FOREIGN KEY (`id_paquete`) REFERENCES `paquetes` (`id_paquete`);

ALTER TABLE `grupos` ADD CONSTRAINT `Personal_grupos` 
    FOREIGN KEY (`identificacion`) REFERENCES `Personal` (`identificacion`);

ALTER TABLE `grupos` ADD CONSTRAINT `Curso_grupos` 
    FOREIGN KEY (`idCurso`) REFERENCES `Curso` (`idCurso`);

ALTER TABLE `horarios` ADD CONSTRAINT `grupos_horarios` 
    FOREIGN KEY (`id_grupos`) REFERENCES `grupos` (`id_grupos`);

ALTER TABLE `horarios` ADD CONSTRAINT `Personal_horarios` 
    FOREIGN KEY (`identificacion`) REFERENCES `Personal` (`identificacion`);

ALTER TABLE `clases` ADD CONSTRAINT `horarios_clases` 
    FOREIGN KEY (`id_horario`) REFERENCES `horarios` (`id_horario`);

ALTER TABLE `clases` ADD CONSTRAINT `nota_clases` 
    FOREIGN KEY (`id_nota`) REFERENCES `nota` (`id_nota`);

ALTER TABLE `clases` ADD CONSTRAINT `Personal_clases` 
    FOREIGN KEY (`identificacion`) REFERENCES `Personal` (`identificacion`);

ALTER TABLE `asistencia` ADD CONSTRAINT `clases_asistencia` 
    FOREIGN KEY (`id_clases`) REFERENCES `clases` (`id_clases`);

ALTER TABLE `matricula_asistencia` ADD CONSTRAINT `matricula_matricula_asistencia` 
    FOREIGN KEY (`id_matricula`) REFERENCES `matricula` (`id_matricula`);

ALTER TABLE `matricula_asistencia` ADD CONSTRAINT `asistencia_matricula_asistencia` 
    FOREIGN KEY (`id_asistencia`) REFERENCES `asistencia` (`id_asistencia`);

ALTER TABLE `pagos` ADD CONSTRAINT `matricula_pagos` 
    FOREIGN KEY (`id_matricula`) REFERENCES `matricula` (`id_matricula`);
