# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          Project2.dez                                    #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2021-01-19 20:23                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `estudiante` DROP FOREIGN KEY `colegio_estudiante`;

ALTER TABLE `estudiante` DROP FOREIGN KEY `barrio_estudiante`;

ALTER TABLE `estudiante` DROP FOREIGN KEY `Check_list_estudiante`;

ALTER TABLE `Personal` DROP FOREIGN KEY `Cargo_Personal`;

ALTER TABLE `Curso` DROP FOREIGN KEY `matricula_Curso`;

ALTER TABLE `nomina` DROP FOREIGN KEY `egreso_nomina`;

ALTER TABLE `egreso` DROP FOREIGN KEY `Personal_egreso`;

ALTER TABLE `matricula` DROP FOREIGN KEY `estudiante_matricula`;

ALTER TABLE `matricula` DROP FOREIGN KEY `paquetes_matricula`;

ALTER TABLE `grupos` DROP FOREIGN KEY `Personal_grupos`;

ALTER TABLE `grupos` DROP FOREIGN KEY `Curso_grupos`;

ALTER TABLE `horarios` DROP FOREIGN KEY `grupos_horarios`;

ALTER TABLE `horarios` DROP FOREIGN KEY `Personal_horarios`;

ALTER TABLE `clases` DROP FOREIGN KEY `horarios_clases`;

ALTER TABLE `clases` DROP FOREIGN KEY `nota_clases`;

ALTER TABLE `clases` DROP FOREIGN KEY `Personal_clases`;

ALTER TABLE `asistencia` DROP FOREIGN KEY `clases_asistencia`;

ALTER TABLE `matricula_asistencia` DROP FOREIGN KEY `matricula_matricula_asistencia`;

ALTER TABLE `matricula_asistencia` DROP FOREIGN KEY `asistencia_matricula_asistencia`;

ALTER TABLE `pagos` DROP FOREIGN KEY `matricula_pagos`;

# ---------------------------------------------------------------------- #
# Drop table "matricula_asistencia"                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `matricula_asistencia` MODIFY `Id_grupo_A` INTEGER NOT NULL;

# Drop constraints #

ALTER TABLE `matricula_asistencia` DROP PRIMARY KEY;

DROP TABLE `matricula_asistencia`;

# ---------------------------------------------------------------------- #
# Drop table "asistencia"                                                #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `asistencia` ALTER COLUMN `asistencia` DROP DEFAULT;

ALTER TABLE `asistencia` DROP PRIMARY KEY;

DROP TABLE `asistencia`;

# ---------------------------------------------------------------------- #
# Drop table "clases"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `clases` MODIFY `id_clases` INTEGER NOT NULL;

# Drop constraints #

ALTER TABLE `clases` DROP PRIMARY KEY;

DROP TABLE `clases`;

# ---------------------------------------------------------------------- #
# Drop table "horarios"                                                  #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `horarios` DROP PRIMARY KEY;

DROP TABLE `horarios`;

# ---------------------------------------------------------------------- #
# Drop table "grupos"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `grupos` MODIFY `id_grupos` INTEGER NOT NULL;

# Drop constraints #

ALTER TABLE `grupos` DROP PRIMARY KEY;

DROP TABLE `grupos`;

# ---------------------------------------------------------------------- #
# Drop table "nomina"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `nomina` MODIFY `id_nomina` INTEGER NOT NULL;

# Drop constraints #

ALTER TABLE `nomina` DROP PRIMARY KEY;

DROP TABLE `nomina`;

# ---------------------------------------------------------------------- #
# Drop table "Curso"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `Curso` MODIFY `idCurso` INTEGER NOT NULL;

# Drop constraints #

ALTER TABLE `Curso` DROP PRIMARY KEY;

DROP TABLE `Curso`;

# ---------------------------------------------------------------------- #
# Drop table "pagos"                                                     #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `pagos` DROP PRIMARY KEY;

DROP TABLE `pagos`;

# ---------------------------------------------------------------------- #
# Drop table "matricula"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `matricula` MODIFY `id_matricula` INTEGER NOT NULL;

# Drop constraints #

ALTER TABLE `matricula` DROP PRIMARY KEY;

DROP TABLE `matricula`;

# ---------------------------------------------------------------------- #
# Drop table "egreso"                                                    #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `egreso` MODIFY `id_egreso` INTEGER NOT NULL;

# Drop constraints #

ALTER TABLE `egreso` DROP PRIMARY KEY;

DROP TABLE `egreso`;

# ---------------------------------------------------------------------- #
# Drop table "Personal"                                                  #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `Personal` DROP PRIMARY KEY;

DROP TABLE `Personal`;

# ---------------------------------------------------------------------- #
# Drop table "estudiante"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `estudiante` MODIFY `id_estudiante` INTEGER NOT NULL;

# Drop constraints #

ALTER TABLE `estudiante` DROP PRIMARY KEY;

DROP TABLE `estudiante`;

# ---------------------------------------------------------------------- #
# Drop table "Check_list"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `Check_list` MODIFY `id_check` INTEGER NOT NULL;

# Drop constraints #

ALTER TABLE `Check_list` ALTER COLUMN `validacion` DROP DEFAULT;

ALTER TABLE `Check_list` DROP PRIMARY KEY;

DROP TABLE `Check_list`;

# ---------------------------------------------------------------------- #
# Drop table "colegio"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `colegio` MODIFY `id_colegio` INTEGER NOT NULL;

# Drop constraints #

ALTER TABLE `colegio` DROP PRIMARY KEY;

DROP TABLE `colegio`;

# ---------------------------------------------------------------------- #
# Drop table "paquetes"                                                  #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `paquetes` DROP PRIMARY KEY;

DROP TABLE `paquetes`;

# ---------------------------------------------------------------------- #
# Drop table "barrio"                                                    #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `barrio` DROP PRIMARY KEY;

DROP TABLE `barrio`;

# ---------------------------------------------------------------------- #
# Drop table "Cargo"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `Cargo` MODIFY `Id_cargo` INTEGER NOT NULL;

# Drop constraints #

ALTER TABLE `Cargo` DROP PRIMARY KEY;

DROP TABLE `Cargo`;

# ---------------------------------------------------------------------- #
# Drop table "materia"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `materia` MODIFY `id_materia` INTEGER NOT NULL;

# Drop constraints #

ALTER TABLE `materia` DROP PRIMARY KEY;

DROP TABLE `materia`;

# ---------------------------------------------------------------------- #
# Drop table "nota"                                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `nota` MODIFY `id_nota` INTEGER NOT NULL;

# Drop constraints #

ALTER TABLE `nota` DROP PRIMARY KEY;

DROP TABLE `nota`;
