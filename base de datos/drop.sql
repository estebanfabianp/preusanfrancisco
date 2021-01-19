# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          Project2.dez                                    #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2021-01-14 23:34                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `Personal` DROP FOREIGN KEY `Cargo_Personal`;

ALTER TABLE `Curso` DROP FOREIGN KEY `estudiante_Curso`;

ALTER TABLE `Curso` DROP FOREIGN KEY `Personal_Curso`;

ALTER TABLE `materia` DROP FOREIGN KEY `nota_materia`;

ALTER TABLE `ingreso` DROP FOREIGN KEY `estudiante_ingreso`;

ALTER TABLE `egreso` DROP FOREIGN KEY `Personal_egreso`;

# ---------------------------------------------------------------------- #
# Drop table "nomina"                                                    #
# ---------------------------------------------------------------------- #

DROP TABLE `nomina`;

# ---------------------------------------------------------------------- #
# Drop table "egreso"                                                    #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `egreso`;

# ---------------------------------------------------------------------- #
# Drop table "materia"                                                   #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `materia` DROP PRIMARY KEY;

DROP TABLE `materia`;

# ---------------------------------------------------------------------- #
# Drop table "Curso"                                                     #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `Curso`;

# ---------------------------------------------------------------------- #
# Drop table "Personal"                                                  #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `Personal` DROP PRIMARY KEY;

DROP TABLE `Personal`;

# ---------------------------------------------------------------------- #
# Drop table "ingreso"                                                   #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `ingreso`;

# ---------------------------------------------------------------------- #
# Drop table "Cargo"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `Cargo` MODIFY `Id_cargo` INTEGER NOT NULL;

# Drop constraints #

ALTER TABLE `Cargo` DROP PRIMARY KEY;

DROP TABLE `Cargo`;

# ---------------------------------------------------------------------- #
# Drop table "nota"                                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `nota` MODIFY `id_nota` INTEGER NOT NULL;

# Drop constraints #

ALTER TABLE `nota` DROP PRIMARY KEY;

DROP TABLE `nota`;

# ---------------------------------------------------------------------- #
# Drop table "estudiante"                                                #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `estudiante` DROP PRIMARY KEY;

DROP TABLE `estudiante`;
