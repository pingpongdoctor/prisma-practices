/*
  Warnings:

  - You are about to drop the `UsersTeachers` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `UsersTeachers` DROP FOREIGN KEY `UsersTeachers_teacherId_fkey`;

-- DropForeignKey
ALTER TABLE `UsersTeachers` DROP FOREIGN KEY `UsersTeachers_userId_fkey`;

-- AlterTable
ALTER TABLE `UserGeneralInfo` ADD COLUMN `email` VARCHAR(191) NULL;

-- DropTable
DROP TABLE `UsersTeachers`;

-- CreateTable
CREATE TABLE `_TeacherToUserGeneralInfo` (
    `A` INTEGER NOT NULL,
    `B` INTEGER NOT NULL,

    UNIQUE INDEX `_TeacherToUserGeneralInfo_AB_unique`(`A`, `B`),
    INDEX `_TeacherToUserGeneralInfo_B_index`(`B`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `_TeacherToUserGeneralInfo` ADD CONSTRAINT `_TeacherToUserGeneralInfo_A_fkey` FOREIGN KEY (`A`) REFERENCES `Teacher`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `_TeacherToUserGeneralInfo` ADD CONSTRAINT `_TeacherToUserGeneralInfo_B_fkey` FOREIGN KEY (`B`) REFERENCES `UserGeneralInfo`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
